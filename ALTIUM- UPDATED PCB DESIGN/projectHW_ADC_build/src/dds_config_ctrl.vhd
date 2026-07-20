library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dds_config_ctrl is
    Port (
        clk       : in  std_logic;
        data_word : in  std_logic_vector(31 downto 0);
        strobe    : in  std_logic_vector( 2 downto 0);
        tready    : in  std_logic;
        tdata     : out std_logic_vector(63 downto 0);
        tvalid    : out std_logic;
        tlast     : out std_logic;
        aresetn_o : out std_logic
    );
end dds_config_ctrl;

architecture Behavioral of dds_config_ctrl is

    constant STROBE_W0 : std_logic_vector(2 downto 0) := "001";
    constant STROBE_W1 : std_logic_vector(2 downto 0) := "010";
    constant STROBE_W2 : std_logic_vector(2 downto 0) := "011";
    constant STROBE_W3 : std_logic_vector(2 downto 0) := "100";

    type state_t is (RX_W0, RX_W1, RX_W2, RX_W3, RESET_DDS, TX_CHAN0, TX_CHAN1);
    signal state : state_t := RX_W0;

    signal strobe_prev : std_logic_vector(2 downto 0) := (others => '0');
    signal reset_cnt : unsigned(1 downto 0) := (others => '0');

    signal pinc_ab_r : std_logic_vector(31 downto 0) := (others => '0');
    signal poff_ab_r : std_logic_vector(31 downto 0) := (others => '0');
    signal pinc_cd_r : std_logic_vector(31 downto 0) := (others => '0');

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
                        out_pinc_ab <= pinc_ab_r;
                        out_poff_ab <= poff_ab_r;
                        out_pinc_cd <= pinc_cd_r;
                        out_poff_cd <= data_word;
                        reset_cnt   <= (others => '0');
                        state       <= RESET_DDS;
                    end if;

                when RESET_DDS =>
                    -- Hold aresetn LOW for 2 cycles, then keep it HIGH for 12 cycles DDS recovery
                    if reset_cnt < 14 then
                        reset_cnt <= reset_cnt + 1;
                    else
                        reset_cnt <= (others => '0');
                        state <= TX_CHAN0;
                    end if;

                when TX_CHAN0 =>
                    if tready = '1' then
                        state <= TX_CHAN1;
                    end if;

                when TX_CHAN1 =>
                    if tready = '1' then
                        state <= RX_W0;
                    end if;

                when others =>
                    state <= RX_W0;

            end case;
        end if;
    end process;

    tvalid <= '1' when (state = TX_CHAN0 or state = TX_CHAN1) else '0';

    tdata  <= out_poff_ab & out_pinc_ab when state = TX_CHAN0 else
              out_poff_cd & out_pinc_cd when state = TX_CHAN1 else
              (others => '0');

    tlast  <= '1' when state = TX_CHAN1 else '0';

    aresetn_o <= '0' when (state = RESET_DDS) else '1';

end Behavioral;