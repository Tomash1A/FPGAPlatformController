-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Jun 29 12:03:25 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/adc/adc.gen/sources_1/bd/projectHW/ip/projectHW_interleave_0_0/projectHW_interleave_0_0_stub.vhdl
-- Design      : projectHW_interleave_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projectHW_interleave_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    CH1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CH2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end projectHW_interleave_0_0;

architecture stub of projectHW_interleave_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CH1[31:0],CH2[31:0],DATA_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "interleave,Vivado 2021.1";
begin
end;
