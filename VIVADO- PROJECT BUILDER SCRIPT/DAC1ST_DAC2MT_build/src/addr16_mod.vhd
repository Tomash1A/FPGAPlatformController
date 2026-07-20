library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity addr16_mod is
    Port (
        clk : in  std_logic;
        clr : in  std_logic;
        Din : in  std_logic_vector(15 downto 0);
        Dout: out std_logic_vector(15 downto 0)
    );
end addr16_mod;

architecture Behavioral of addr16_mod is

    signal sum   : signed(15 downto 0) := (others => '0');
    signal clr_d : std_logic := '0';

begin
    process(clk)
    begin
        if rising_edge(clk) then
            clr_d <= clr;
            if clr = '1' and clr_d = '0' then   -- rising edge of clr
                Dout <= std_logic_vector(sum);
                sum  <= signed(Din);
            else
                sum  <= sum + signed(Din);
            end if;
        end if;
    end process;

end Behavioral;