-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sun Jun 28 08:51:18 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_selectio_wiz_ADCDATA_9to6_0_stub.vhdl
-- Design      : projectHW_selectio_wiz_ADCDATA_9to6_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[5:0],data_in_from_pins_n[5:0],data_in_to_device[11:0],clk_in,io_reset";
begin
end;
