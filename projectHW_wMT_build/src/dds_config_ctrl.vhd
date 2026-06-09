library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- dds_config_ctrl
--
-- Receives four 32-bit words from the PS via a single AXI GPIO:
--   GPIO  ch1 (32-bit) : data_word  - payload
--   GPIO2 ch2 ( 3-bit) : strobe     - handshake value
--
-- Handshake sequence (Python always writes in this order):
--   strobe = 001  ?  PINC_AB  (A/B frequency word)
--   strobe = 010  ?  POFF_AB  (A/B phase word)
--   strobe = 011  ?  PINC_CD  (C/D frequency word)
--   strobe = 100  ?  POFF_CD  (C/D phase word)  ? triggers TX
--
-- After all 4 words are captured, fires exactly TWO S_AXIS_CONFIG transactions:
--   TX_CHAN0 :  tdata = {POFF_AB, PINC_AB},  tlast = 0,  tvalid = 1
--   TX_CHAN1 :  tdata = {POFF_CD, PINC_CD},  tlast = 1,  tvalid = 1
--
-- tvalid is '0' during the receive phase and idle - only '1' for those two beats.
-- Each TX state holds until tready = '1' (DDS handshake).
--
-- Vivado connections:
--   data_word  ? AXI GPIO DAC2_CTRL / GPIO_DATA  (32-bit, output)
--   strobe     ? AXI GPIO DAC2_CTRL / GPIO2_DATA  (3-bit, output)
--   tready     ? dds_compiler_0 / S_AXIS_CONFIG_TREADY
--   tdata      ? dds_compiler_0 / S_AXIS_CONFIG_TDATA
--   tvalid     ? dds_compiler_0 / S_AXIS_CONFIG_TVALID
--   tlast      ? dds_compiler_0 / S_AXIS_CONFIG_TLAST

entity dds_config_ctrl is
    Port (
        clk       : in  std_logic;
        data_word : in  std_logic_vector(31 downto 0);
        strobe    : in  std_logic_vector( 2 downto 0);
        tready    : in  std_logic;
        tdata     : out std_logic_vector(63 downto 0);
        tvalid    : out std_logic;
        tlast     : out std_logic
    );
end dds_config_ctrl;

architecture Behavioral of dds_config_ctrl is

    -- ------------------------------------------------------------------
    -- Strobe constants
    -- ------------------------------------------------------------------
    constant STROBE_W0 : std_logic_vector(2 downto 0) := "001";  -- PINC_AB
    constant STROBE_W1 : std_logic_vector(2 downto 0) := "010";  -- POFF_AB
    constant STROBE_W2 : std_logic_vector(2 downto 0) := "011";  -- PINC_CD
    constant STROBE_W3 : std_logic_vector(2 downto 0) := "100";  -- POFF_CD

    -- ------------------------------------------------------------------
    -- State machine
    -- ------------------------------------------------------------------
    type state_t is (RX_W0, RX_W1, RX_W2, RX_W3, TX_CHAN0, TX_CHAN1);
    signal state : state_t := RX_W0;

    signal strobe_prev : std_logic_vector(2 downto 0) := (others => '0');

    -- Staging registers (filled one per RX state)
    signal pinc_ab_r : std_logic_vector(31 downto 0) := (others => '0');
    signal poff_ab_r : std_logic_vector(31 downto 0) := (others => '0');
    signal pinc_cd_r : std_logic_vector(31 downto 0) := (others => '0');

    -- Output registers (loaded atomically on RX_W3 ? TX_CHAN0 transition)
    signal out_pinc_ab : std_logic_vector(31 downto 0) := (others => '0');
    signal out_poff_ab : std_logic_vector(31 downto 0) := (others => '0');
    signal out_pinc_cd : std_logic_vector(31 downto 0) := (others => '0');
    signal out_poff_cd : std_logic_vector(31 downto 0) := (others => '0');

begin

    process(clk)
    begin
        if rising_edge(clk) then

            strobe_prev <= strobe;

            case state is

                -- ------------------------------------------------------
                -- Receive phase: capture one word per state on strobe edge
                -- ------------------------------------------------------
                when RX_W0 =>
                    if strobe /= strobe_prev and strobe = STROBE_W0 then
                        pinc_ab_r <= data_word;
                        state     <= RX_W1;
                    end if;

                when RX_W1 =>
                    if strobe /= strobe_prev and strobe = STROBE_W1 then
                        poff_ab_r <= data_word;
                        state     <= RX_W2;
                    end if;

                when RX_W2 =>
                    if strobe /= strobe_prev and strobe = STROBE_W2 then
                        pinc_cd_r <= data_word;
                        state     <= RX_W3;
                    end if;

                when RX_W3 =>
                    if strobe /= strobe_prev and strobe = STROBE_W3 then
                        -- Atomically push all 4 words to output registers
                        out_pinc_ab <= pinc_ab_r;
                        out_poff_ab <= poff_ab_r;
                        out_pinc_cd <= pinc_cd_r;
                        out_poff_cd <= data_word;   -- data_word is POFF_CD now
                        state       <= TX_CHAN0;
                    end if;

                -- ------------------------------------------------------
                -- Transmit phase: hold tvalid=1, advance on tready
                -- ------------------------------------------------------
                when TX_CHAN0 =>
                    if tready = '1' then
                        state <= TX_CHAN1;
                    end if;

                when TX_CHAN1 =>
                    if tready = '1' then
                        state <= RX_W0;   -- done - back to idle
                    end if;

                when others =>
                    state <= RX_W0;

            end case;
        end if;
    end process;

    -- ------------------------------------------------------------------
    -- Combinational output
    -- tvalid is '1' only during the two TX beats
    -- ------------------------------------------------------------------
    tvalid <= '1' when (state = TX_CHAN0 or state = TX_CHAN1) else '0';

    tdata  <= out_poff_ab & out_pinc_ab when state = TX_CHAN0 else
              out_poff_cd & out_pinc_cd when state = TX_CHAN1 else
              (others => '0');

    tlast  <= '1' when state = TX_CHAN1 else '0';

end Behavioral;
