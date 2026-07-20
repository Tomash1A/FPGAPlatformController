----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2020 10:48:31 AM
-- Design Name: 
-- Module Name: addr_control - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;use UNISIM.VComponents.all;

entity addr_control is
    Port ( clk : in std_logic;
           profile_addr: in std_logic_vector(5 downto 0); -- only 4..0 are posible profiles(total of 32) profile_addr(5) is a control bit for multi/high freq
           offset_addr: in std_logic_vector(2 downto 0); -- 0-7 tones  
           bram_freq_addr: out std_logic_vector(15 downto 0); -- 16 bits address to the BRAM port B each address is 256 bit = 4x tone words(64bit) 
           last_tone: out std_logic     
    );
end addr_control;

architecture Behavioral of addr_control is

begin
    U: process(clk)
       begin
         if (rising_edge(clk)) then
            if profile_addr(5)= '0' then
                bram_freq_addr(15 downto 0) <=  "00000000"& profile_addr(4 downto 0) & offset_addr ;
                if offset_addr = "101" then
                    last_tone <= '1';
                else
                    last_tone <= '0';
                end if;
            else 
                bram_freq_addr(15 downto 0) <= "00000000" & profile_addr(4 downto 0) & "000";
                last_tone <= '1';
            end if;
         end if;
       end process;
end Behavioral;
