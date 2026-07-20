-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Jun  9 11:57:07 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_adc_capture_0_0_stub.vhdl
-- Design      : projectHW_adc_capture_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ADC_DCLK_clk_p : in STD_LOGIC;
    ADC_DCLK_clk_n : in STD_LOGIC;
    ADC_OR_clk_p : in STD_LOGIC;
    ADC_OR_clk_n : in STD_LOGIC;
    ADC_DATA_p : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ADC_DATA_n : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 27 downto 0 );
    or_out : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ADC_DCLK_clk_p,ADC_DCLK_clk_n,ADC_OR_clk_p,ADC_OR_clk_n,ADC_DATA_p[13:0],ADC_DATA_n[13:0],clk_out,data_out[27:0],or_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adc_capture,Vivado 2021.1";
begin
end;
