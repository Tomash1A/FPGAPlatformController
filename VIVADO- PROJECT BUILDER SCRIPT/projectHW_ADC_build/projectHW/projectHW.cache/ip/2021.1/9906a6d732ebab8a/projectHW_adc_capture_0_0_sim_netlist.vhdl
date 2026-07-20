-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Jun  9 11:57:07 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_adc_capture_0_0_sim_netlist.vhdl
-- Design      : projectHW_adc_capture_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_capture is
  port (
    data_out : out STD_LOGIC_VECTOR ( 27 downto 0 );
    clk_out : out STD_LOGIC;
    or_out : out STD_LOGIC;
    ADC_DATA_p : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ADC_DATA_n : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ADC_DCLK_clk_p : in STD_LOGIC;
    ADC_DCLK_clk_n : in STD_LOGIC;
    ADC_OR_clk_p : in STD_LOGIC;
    ADC_OR_clk_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_capture;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_capture is
  signal clk_ibuf : STD_LOGIC;
  signal \^clk_out\ : STD_LOGIC;
  signal \gen_data[0].data_ibuf\ : STD_LOGIC;
  signal \gen_data[10].data_ibuf\ : STD_LOGIC;
  signal \gen_data[11].data_ibuf\ : STD_LOGIC;
  signal \gen_data[12].data_ibuf\ : STD_LOGIC;
  signal \gen_data[13].data_ibuf\ : STD_LOGIC;
  signal \gen_data[1].data_ibuf\ : STD_LOGIC;
  signal \gen_data[2].data_ibuf\ : STD_LOGIC;
  signal \gen_data[3].data_ibuf\ : STD_LOGIC;
  signal \gen_data[4].data_ibuf\ : STD_LOGIC;
  signal \gen_data[5].data_ibuf\ : STD_LOGIC;
  signal \gen_data[6].data_ibuf\ : STD_LOGIC;
  signal \gen_data[7].data_ibuf\ : STD_LOGIC;
  signal \gen_data[8].data_ibuf\ : STD_LOGIC;
  signal \gen_data[9].data_ibuf\ : STD_LOGIC;
  signal or_ibuf : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data[0].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \gen_data[0].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \gen_data[0].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \gen_data[0].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[0].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \gen_data[0].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[10].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[10].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[10].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[10].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[10].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[10].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[11].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[11].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[11].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[11].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[11].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[11].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[12].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[12].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[12].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[12].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[12].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[12].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[13].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[13].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[13].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[13].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[13].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[13].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[1].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[1].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[1].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[1].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[1].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[1].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[2].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[2].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[2].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[2].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[2].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[2].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[3].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[3].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[3].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[3].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[3].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[3].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[4].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[4].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[4].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[4].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[4].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[4].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[5].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[5].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[5].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[5].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[5].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[5].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[6].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[6].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[6].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[6].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[6].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[6].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[7].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[7].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[7].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[7].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[7].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[7].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[8].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[8].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[8].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[8].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[8].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[8].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of \gen_data[9].u_data_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_data[9].u_data_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_data[9].u_data_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_data[9].u_data_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \gen_data[9].u_data_iddr\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \gen_data[9].u_data_iddr\ : label is "TRUE";
  attribute BOX_TYPE of u_clk_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of u_clk_ibuf : label is "PRIMITIVE";
  attribute CAPACITANCE of u_clk_ibuf : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of u_clk_ibuf : label is "0";
  attribute IFD_DELAY_VALUE of u_clk_ibuf : label is "AUTO";
  attribute BOX_TYPE of u_or_ibuf : label is "PRIMITIVE";
  attribute CAPACITANCE of u_or_ibuf : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of u_or_ibuf : label is "0";
  attribute IFD_DELAY_VALUE of u_or_ibuf : label is "AUTO";
  attribute BOX_TYPE of u_or_reg : label is "PRIMITIVE";
begin
  clk_out <= \^clk_out\;
\gen_data[0].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(0),
      IB => ADC_DATA_n(0),
      O => \gen_data[0].data_ibuf\
    );
\gen_data[0].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[0].data_ibuf\,
      Q1 => data_out(0),
      Q2 => data_out(1),
      R => '0',
      S => '0'
    );
\gen_data[10].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(10),
      IB => ADC_DATA_n(10),
      O => \gen_data[10].data_ibuf\
    );
\gen_data[10].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[10].data_ibuf\,
      Q1 => data_out(20),
      Q2 => data_out(21),
      R => '0',
      S => '0'
    );
\gen_data[11].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(11),
      IB => ADC_DATA_n(11),
      O => \gen_data[11].data_ibuf\
    );
\gen_data[11].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[11].data_ibuf\,
      Q1 => data_out(22),
      Q2 => data_out(23),
      R => '0',
      S => '0'
    );
\gen_data[12].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(12),
      IB => ADC_DATA_n(12),
      O => \gen_data[12].data_ibuf\
    );
\gen_data[12].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[12].data_ibuf\,
      Q1 => data_out(24),
      Q2 => data_out(25),
      R => '0',
      S => '0'
    );
\gen_data[13].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(13),
      IB => ADC_DATA_n(13),
      O => \gen_data[13].data_ibuf\
    );
\gen_data[13].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[13].data_ibuf\,
      Q1 => data_out(26),
      Q2 => data_out(27),
      R => '0',
      S => '0'
    );
\gen_data[1].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(1),
      IB => ADC_DATA_n(1),
      O => \gen_data[1].data_ibuf\
    );
\gen_data[1].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[1].data_ibuf\,
      Q1 => data_out(2),
      Q2 => data_out(3),
      R => '0',
      S => '0'
    );
\gen_data[2].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(2),
      IB => ADC_DATA_n(2),
      O => \gen_data[2].data_ibuf\
    );
\gen_data[2].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[2].data_ibuf\,
      Q1 => data_out(4),
      Q2 => data_out(5),
      R => '0',
      S => '0'
    );
\gen_data[3].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(3),
      IB => ADC_DATA_n(3),
      O => \gen_data[3].data_ibuf\
    );
\gen_data[3].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[3].data_ibuf\,
      Q1 => data_out(6),
      Q2 => data_out(7),
      R => '0',
      S => '0'
    );
\gen_data[4].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(4),
      IB => ADC_DATA_n(4),
      O => \gen_data[4].data_ibuf\
    );
\gen_data[4].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[4].data_ibuf\,
      Q1 => data_out(8),
      Q2 => data_out(9),
      R => '0',
      S => '0'
    );
\gen_data[5].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(5),
      IB => ADC_DATA_n(5),
      O => \gen_data[5].data_ibuf\
    );
\gen_data[5].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[5].data_ibuf\,
      Q1 => data_out(10),
      Q2 => data_out(11),
      R => '0',
      S => '0'
    );
\gen_data[6].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(6),
      IB => ADC_DATA_n(6),
      O => \gen_data[6].data_ibuf\
    );
\gen_data[6].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[6].data_ibuf\,
      Q1 => data_out(12),
      Q2 => data_out(13),
      R => '0',
      S => '0'
    );
\gen_data[7].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(7),
      IB => ADC_DATA_n(7),
      O => \gen_data[7].data_ibuf\
    );
\gen_data[7].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[7].data_ibuf\,
      Q1 => data_out(14),
      Q2 => data_out(15),
      R => '0',
      S => '0'
    );
\gen_data[8].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(8),
      IB => ADC_DATA_n(8),
      O => \gen_data[8].data_ibuf\
    );
\gen_data[8].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[8].data_ibuf\,
      Q1 => data_out(16),
      Q2 => data_out(17),
      R => '0',
      S => '0'
    );
\gen_data[9].u_data_ibuf\: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DATA_p(9),
      IB => ADC_DATA_n(9),
      O => \gen_data[9].data_ibuf\
    );
\gen_data[9].u_data_iddr\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => \gen_data[9].data_ibuf\,
      Q1 => data_out(18),
      Q2 => data_out(19),
      R => '0',
      S => '0'
    );
u_clk_bufg: unisim.vcomponents.BUFG
     port map (
      I => clk_ibuf,
      O => \^clk_out\
    );
u_clk_ibuf: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_DCLK_clk_p,
      IB => ADC_DCLK_clk_n,
      O => clk_ibuf
    );
u_or_ibuf: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ADC_OR_clk_p,
      IB => ADC_OR_clk_n,
      O => or_ibuf
    );
u_or_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => or_ibuf,
      Q => or_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "projectHW_adc_capture_0_0,adc_capture,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc_capture,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ADC_DCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ADC_DCLK_clk_n : signal is "XIL_INTERFACENAME ADC_DCLK, IOSTANDARD LVDS_25, DIFF_TERM TRUE, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of ADC_DCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_P";
  attribute X_INTERFACE_PARAMETER of ADC_DCLK_clk_p : signal is "IOSTANDARD LVDS_25, DIFF_TERM TRUE";
  attribute X_INTERFACE_INFO of ADC_OR_clk_n : signal is "xilinx.com:signal:clock:1.0 ADC_OR_clk_n CLK";
  attribute X_INTERFACE_PARAMETER of ADC_OR_clk_n : signal is "XIL_INTERFACENAME ADC_OR_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ADC_OR_clk_p : signal is "xilinx.com:signal:clock:1.0 ADC_OR_clk_p CLK";
  attribute X_INTERFACE_PARAMETER of ADC_OR_clk_p : signal is "XIL_INTERFACENAME ADC_OR_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_capture
     port map (
      ADC_DATA_n(13 downto 0) => ADC_DATA_n(13 downto 0),
      ADC_DATA_p(13 downto 0) => ADC_DATA_p(13 downto 0),
      ADC_DCLK_clk_n => ADC_DCLK_clk_n,
      ADC_DCLK_clk_p => ADC_DCLK_clk_p,
      ADC_OR_clk_n => ADC_OR_clk_n,
      ADC_OR_clk_p => ADC_OR_clk_p,
      clk_out => clk_out,
      data_out(27 downto 0) => data_out(27 downto 0),
      or_out => or_out
    );
end STRUCTURE;
