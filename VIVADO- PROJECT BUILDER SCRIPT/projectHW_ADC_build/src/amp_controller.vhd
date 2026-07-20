----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/25/2020 08:56:20 PM
-- Design Name: 
-- Module Name: amp_controller - Behavioral
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

-- the BRAM is divided to address 0..127 which hold for each profile where is arbi pulse block in starting 
-- the rest of the BRAM hold the ramps data is 32 bit wide memory where 15..0 is the step size and 31..16 in the number of steps0
-- this profileaddr is the HW input pins taking the values 0,1,2,....127 
-- since each profile have two related pulse shape on and off another bit is add to the profileaddr such that on pules is  profileaddr+0 and off pulse profileaddr+1
-- onoff is also hw input and beening bufferd by the clk
-- clk is the 125Mhz clk of the CDDS
-- bram_addr adn data_data is the read interface to the memory block that hold the pulse shping information.
-- amp_out is 16 bit amplitude derived from 24bit register to allow for smaller slopes - minimum slop is 125*1/255 per us and max 125*255= 32,000 in us    
entity amp_controller is
    Port ( clk : in STD_LOGIC;
           onoff : in STD_LOGIC;
           amp_out : out STD_LOGIC_VECTOR (15 downto 0);
           profileaddr : in STD_LOGIC_VECTOR (5 downto 0);
           bram_addr : out STD_LOGIC_VECTOR (15 downto 0);
           bram_data : in STD_LOGIC_VECTOR (31 downto 0);
           rst : in STD_LOGIC
           );
end amp_controller;

architecture Behavioral of amp_controller is

type state_type IS (wait_for_on, wait_off,load_block, load_ramp_line, ramp, wait_for_off); 

signal ramp_step_size : signed (15 downto 0);
signal amp_reg : signed (31 downto 0);
signal addr : unsigned (15 downto 0);
signal state : state_type := wait_for_on;
signal b_onoff : std_logic;
signal no_latency :std_logic;

begin

onoff_buff :process(clk)
    begin
        if (rising_edge(clk)) then 
            b_onoff <= onoff;
        end if;
    end process;

ramp_proc: process(clk,rst)
variable index: unsigned(15 downto 0);
begin
    if (rst = '1') then
        addr <= to_unsigned(0, addr'length);
        state <= wait_for_on;
    elsif (rising_edge(clk)) then 
        if (no_latency = '1') then 
            case state is
            when wait_for_on =>
                 -- on the rising edge of the b_onoff input: 
                 -- set BRAM adder to read the starting address for this pulse block and set amp to zerp
                if (b_onoff = '1') then 
                    addr<=  unsigned("0000000000" & profileaddr(4 downto 0) & "0");
                    amp_reg <= (others => '0'); 
                    state <= load_block;  
                    no_latency <= '0';            
                end if;
            when wait_for_off =>
                 -- on the rising edge of the b_onoff input: 
                 -- set BRAM adder to read the starting address for this pulse block and set amp to zerp
                if (b_onoff = '0') then 
                    addr<=  unsigned("0000000000" & profileaddr(4 downto 0) & "1");
                    state <= load_block;     
                    no_latency <= '0';               
                end if;
    
            when load_block =>        
                 -- get the the spesific profile starting adderss 
                 addr <= unsigned(bram_data(15 downto 0));
                 -- set bram addre to that spesific profile starting adderss 
                 state <= load_ramp_line;  
                 no_latency <= '0';            
            when load_ramp_line =>
                 -- get ramp paramerters step size and number of steps
                 ramp_step_size <= signed(bram_data(15  downto 0));
                 index := unsigned(bram_data(31  downto 16));
                 -- update addr for next line
                 addr <= addr +1;
                 state <= ramp;              
            when ramp =>
               if (index > 1) then
                   index := index - 1; 
                   amp_reg <= amp_reg + ramp_step_size;
               elsif (index = 1) then
                   amp_reg <= amp_reg + ramp_step_size;
                   ramp_step_size <= signed(bram_data(15  downto 0));
                   index := unsigned(bram_data(31  downto 16));
                   addr <= addr +1;
               else  
                   if (b_onoff= '1') then   
                       state <= wait_for_off;
                   else
                       amp_reg <= (others => '0'); 
                       state <= wait_for_on;
                   end if;
               end if;
            when others => 
            end case;
       else 
            no_latency  <= '1';     
       end if;-- latency 
    end if;-- clk
end process ramp_proc;

amp_out <= std_logic_vector(amp_reg(21 downto 6));
bram_addr <= std_logic_vector(addr(13 downto 0)) & "00";
end Behavioral;
