----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2020 09:25:47 PM
-- Design Name: 
-- Module Name: Adder16 - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder16 is
    Port ( Din : in std_logic_vector (15 downto 0);
           Dout : out std_logic_vector (15 downto 0);
           clk : in STD_LOGIC;
           clr : in STD_LOGIC);
end Adder16;

architecture Behavioral of Adder16 is

signal sum : signed (15 downto 0);

begin
    process (clk,Din,clr)
    begin
        if rising_edge(clk) then
            if clr = '1' then
                sum <= signed(Din);
                Dout <= std_logic_vector(sum);
            else 
                sum <= sum + signed(Din) ;
            end if;  
        end if;       
    end process; 
end Behavioral;
