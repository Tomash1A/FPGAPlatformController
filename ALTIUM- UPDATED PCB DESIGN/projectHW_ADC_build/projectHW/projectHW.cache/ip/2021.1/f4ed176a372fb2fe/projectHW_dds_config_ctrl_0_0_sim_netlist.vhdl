-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sun Jun 28 15:41:40 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_dds_config_ctrl_0_0_sim_netlist.vhdl
-- Design      : projectHW_dds_config_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl is
  port (
    aresetn_o : out STD_LOGIC;
    strobe : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal strobe_prev : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "rx_w0:000,rx_w1:001,rx_w2:010,rx_w3:011,reset_dds:100,tx_chan0:101,tx_chan1:110,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "rx_w0:000,rx_w1:001,rx_w2:010,rx_w3:011,reset_dds:100,tx_chan0:101,tx_chan1:110,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "rx_w0:000,rx_w1:001,rx_w2:010,rx_w3:011,reset_dds:100,tx_chan0:101,tx_chan1:110,";
  attribute SOFT_HLUTNM of aresetn_o_INST_0 : label is "soft_lutpair1";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0022FF0F0000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => strobe(2),
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => strobe(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFBFBFAA808080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFBFBFAA808080"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF0000EF"
    )
        port map (
      I0 => strobe_prev(2),
      I1 => strobe_prev(1),
      I2 => strobe_prev(0),
      I3 => strobe(1),
      I4 => state(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(0),
      I1 => strobe(0),
      I2 => strobe(2),
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FDFB000000"
    )
        port map (
      I0 => strobe_prev(1),
      I1 => strobe_prev(2),
      I2 => strobe_prev(0),
      I3 => state(1),
      I4 => strobe(2),
      I5 => strobe(1),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => strobe(0),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
aresetn_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => aresetn_o
    );
\strobe_prev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => strobe(0),
      Q => strobe_prev(0),
      R => '0'
    );
\strobe_prev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => strobe(1),
      Q => strobe_prev(1),
      R => '0'
    );
\strobe_prev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => strobe(2),
      Q => strobe_prev(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    data_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    strobe : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tready : in STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tvalid : out STD_LOGIC;
    tlast : out STD_LOGIC;
    aresetn_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "projectHW_dds_config_ctrl_0_0,dds_config_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dds_config_ctrl,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN projectHW_FPGA_CLK_BUF_0_IBUF_OUT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tlast : signal is "xilinx.com:interface:axis:1.0 interface_axis TLAST";
  attribute X_INTERFACE_PARAMETER of tlast : signal is "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN projectHW_FPGA_CLK_BUF_0_IBUF_OUT, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tready : signal is "xilinx.com:interface:axis:1.0 interface_axis TREADY";
  attribute X_INTERFACE_INFO of tvalid : signal is "xilinx.com:interface:axis:1.0 interface_axis TVALID";
  attribute X_INTERFACE_INFO of tdata : signal is "xilinx.com:interface:axis:1.0 interface_axis TDATA";
begin
  tdata(63) <= \<const0>\;
  tdata(62) <= \<const0>\;
  tdata(61) <= \<const0>\;
  tdata(60) <= \<const0>\;
  tdata(59) <= \<const0>\;
  tdata(58) <= \<const0>\;
  tdata(57) <= \<const0>\;
  tdata(56) <= \<const0>\;
  tdata(55) <= \<const0>\;
  tdata(54) <= \<const0>\;
  tdata(53) <= \<const0>\;
  tdata(52) <= \<const0>\;
  tdata(51) <= \<const0>\;
  tdata(50) <= \<const0>\;
  tdata(49) <= \<const0>\;
  tdata(48) <= \<const0>\;
  tdata(47) <= \<const0>\;
  tdata(46) <= \<const0>\;
  tdata(45) <= \<const0>\;
  tdata(44) <= \<const0>\;
  tdata(43) <= \<const0>\;
  tdata(42) <= \<const0>\;
  tdata(41) <= \<const0>\;
  tdata(40) <= \<const0>\;
  tdata(39) <= \<const0>\;
  tdata(38) <= \<const0>\;
  tdata(37) <= \<const0>\;
  tdata(36) <= \<const0>\;
  tdata(35) <= \<const0>\;
  tdata(34) <= \<const0>\;
  tdata(33) <= \<const0>\;
  tdata(32) <= \<const0>\;
  tdata(31) <= \<const0>\;
  tdata(30) <= \<const0>\;
  tdata(29) <= \<const0>\;
  tdata(28) <= \<const0>\;
  tdata(27) <= \<const0>\;
  tdata(26) <= \<const0>\;
  tdata(25) <= \<const0>\;
  tdata(24) <= \<const0>\;
  tdata(23) <= \<const0>\;
  tdata(22) <= \<const0>\;
  tdata(21) <= \<const0>\;
  tdata(20) <= \<const0>\;
  tdata(19) <= \<const0>\;
  tdata(18) <= \<const0>\;
  tdata(17) <= \<const0>\;
  tdata(16) <= \<const0>\;
  tdata(15) <= \<const0>\;
  tdata(14) <= \<const0>\;
  tdata(13) <= \<const0>\;
  tdata(12) <= \<const0>\;
  tdata(11) <= \<const0>\;
  tdata(10) <= \<const0>\;
  tdata(9) <= \<const0>\;
  tdata(8) <= \<const0>\;
  tdata(7) <= \<const0>\;
  tdata(6) <= \<const0>\;
  tdata(5) <= \<const0>\;
  tdata(4) <= \<const0>\;
  tdata(3) <= \<const0>\;
  tdata(2) <= \<const0>\;
  tdata(1) <= \<const0>\;
  tdata(0) <= \<const0>\;
  tlast <= \<const0>\;
  tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl
     port map (
      aresetn_o => aresetn_o,
      clk => clk,
      strobe(2 downto 0) => strobe(2 downto 0)
    );
end STRUCTURE;
