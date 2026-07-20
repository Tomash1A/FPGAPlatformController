-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Jun 29 12:03:24 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/adc/adc.gen/sources_1/bd/projectHW/ip/projectHW_DAC2_BUF_OUT_0/projectHW_DAC2_BUF_OUT_0_stub.vhdl
-- Design      : projectHW_DAC2_BUF_OUT_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projectHW_DAC2_BUF_OUT_0 is
  Port ( 
    data_out_from_device : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end projectHW_DAC2_BUF_OUT_0;

architecture stub of projectHW_DAC2_BUF_OUT_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_out_from_device[31:0],data_out_to_pins_p[15:0],data_out_to_pins_n[15:0],clk_to_pins_p,clk_to_pins_n,clk_in,clk_reset,io_reset";
begin
end;
