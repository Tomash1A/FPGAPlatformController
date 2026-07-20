-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sun Jun 28 08:51:18 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_selectio_wiz_ADCDATA_9to6_0_sim_netlist.vhdl
-- Design      : projectHW_selectio_wiz_ADCDATA_9to6_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_projectHW_selectio_wiz_ADCDATA_9to6_0_selectio_wiz is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_projectHW_selectio_wiz_ADCDATA_9to6_0_selectio_wiz : entity is 12;
  attribute SYS_W : integer;
  attribute SYS_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_projectHW_selectio_wiz_ADCDATA_9to6_0_selectio_wiz : entity is 6;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_projectHW_selectio_wiz_ADCDATA_9to6_0_selectio_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_projectHW_selectio_wiz_ADCDATA_9to6_0_selectio_wiz is
  signal data_in_from_pins_int : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \pins[0].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \pins[0].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[0].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \pins[0].iddr_inst\ : label is "FALSE";
  attribute BOX_TYPE of \pins[1].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[1].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[1].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \pins[1].iddr_inst\ : label is "FALSE";
  attribute BOX_TYPE of \pins[2].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[2].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[2].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[2].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[2].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \pins[2].iddr_inst\ : label is "FALSE";
  attribute BOX_TYPE of \pins[3].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[3].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[3].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[3].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[3].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \pins[3].iddr_inst\ : label is "FALSE";
  attribute BOX_TYPE of \pins[4].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[4].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[4].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[4].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[4].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \pins[4].iddr_inst\ : label is "FALSE";
  attribute BOX_TYPE of \pins[5].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[5].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[5].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[5].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[5].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \pins[5].iddr_inst\ : label is "FALSE";
begin
\pins[0].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(0),
      IB => data_in_from_pins_n(0),
      O => data_in_from_pins_int(0)
    );
\pins[0].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(0),
      Q1 => data_in_to_device(0),
      Q2 => data_in_to_device(6),
      R => io_reset,
      S => '0'
    );
\pins[1].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(1),
      IB => data_in_from_pins_n(1),
      O => data_in_from_pins_int(1)
    );
\pins[1].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(1),
      Q1 => data_in_to_device(1),
      Q2 => data_in_to_device(7),
      R => io_reset,
      S => '0'
    );
\pins[2].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(2),
      IB => data_in_from_pins_n(2),
      O => data_in_from_pins_int(2)
    );
\pins[2].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(2),
      Q1 => data_in_to_device(2),
      Q2 => data_in_to_device(8),
      R => io_reset,
      S => '0'
    );
\pins[3].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(3),
      IB => data_in_from_pins_n(3),
      O => data_in_from_pins_int(3)
    );
\pins[3].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(3),
      Q1 => data_in_to_device(3),
      Q2 => data_in_to_device(9),
      R => io_reset,
      S => '0'
    );
\pins[4].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(4),
      IB => data_in_from_pins_n(4),
      O => data_in_from_pins_int(4)
    );
\pins[4].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(4),
      Q1 => data_in_to_device(4),
      Q2 => data_in_to_device(10),
      R => io_reset,
      S => '0'
    );
\pins[5].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(5),
      IB => data_in_from_pins_n(5),
      O => data_in_from_pins_int(5)
    );
\pins[5].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(5),
      Q1 => data_in_to_device(5),
      Q2 => data_in_to_device(11),
      R => io_reset,
      S => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 12;
  attribute SYS_W : integer;
  attribute SYS_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 6;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute DEV_W of inst : label is 12;
  attribute SYS_W of inst : label is 6;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_projectHW_selectio_wiz_ADCDATA_9to6_0_selectio_wiz
     port map (
      clk_in => clk_in,
      data_in_from_pins_n(5 downto 0) => data_in_from_pins_n(5 downto 0),
      data_in_from_pins_p(5 downto 0) => data_in_from_pins_p(5 downto 0),
      data_in_to_device(11 downto 0) => data_in_to_device(11 downto 0),
      io_reset => io_reset
    );
end STRUCTURE;
