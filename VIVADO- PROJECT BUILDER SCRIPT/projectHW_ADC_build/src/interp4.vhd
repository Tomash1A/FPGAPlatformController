----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2020 07:09:47 PM
-- Design Name: 
-- Module Name: interp2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

--use IEEE.std_logic_arith.all; 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity interp4 is
    Port ( Din : in STD_LOGIC_VECTOR (15 downto 0);
           intrp : out STD_LOGIC_VECTOR (15 downto 0);
           bypass : in STD_LOGIC;
           clk : in STD_LOGIC);
end interp4;

architecture Behavioral of interp4 is
signal D1,D2,D3 : signed (15 downto 0) := (others => '0');
signal sum :  signed (17 downto 0) := (others => '0');

begin
    process (clk)
    begin
        if rising_edge(clk) then
                sum <= resize(signed(Din),sum'length) + resize(D1,sum'length)+ resize(D2,sum'length)+ resize(D3,sum'length); 
                D1 <= signed(Din);
                D2 <= signed(D1);
                D3 <= signed(D2);
        end if; 
    end process;
    
    with bypass select
    intrp <= std_logic_vector(sum(17 downto 2)) when '0',
             Din  when others;  

end Behavioral;
--begin
--    process (clk)
--    begin
--        if rising_edge(clk) then
--            if bypass = '0' then 
--                sum <= resize(signed(Din),sum'length) + resize(D1,sum'length)+ resize(D2,sum'length)+ resize(D3,sum'length); 
--                D1 <= signed(Din);
--                D2 <= signed(D1);
--                D3 <= signed(D2);
--                intrp <= std_logic_vector(sum(17 downto 2));      
--            else
--                intrp <= std_logic_vector(Din);
--            end if; 
--         end if;
--    end process;
    
--end Behavioral;