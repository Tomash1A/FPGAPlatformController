-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Jun 29 11:25:19 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top projectHW_CH_AB_0 -prefix
--               projectHW_CH_AB_0_ projectHW_dds_compiler_0_0_stub.vhdl
-- Design      : projectHW_dds_compiler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projectHW_CH_AB_0 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end projectHW_CH_AB_0;

architecture stub of projectHW_CH_AB_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_config_tvalid,s_axis_config_tdata[63:0],m_axis_data_tvalid,m_axis_data_tdata[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dds_compiler_v6_0_21,Vivado 2021.1";
begin
end;
