-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sun Jun 28 14:38:34 2026
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
    tlast : out STD_LOGIC;
    aresetn_o : out STD_LOGIC;
    tvalid : out STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    strobe : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal in6 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal in7 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal out_pinc_ab : STD_LOGIC;
  signal pinc_ab_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pinc_ab_r[31]_i_2_n_0\ : STD_LOGIC;
  signal pinc_ab_r_0 : STD_LOGIC;
  signal pinc_cd_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pinc_cd_r_1 : STD_LOGIC;
  signal poff_ab_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poff_ab_r_2 : STD_LOGIC;
  signal strobe_prev : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^tlast\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010,";
  attribute SOFT_HLUTNM of \tdata[62]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdata[63]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tvalid_INST_0 : label is "soft_lutpair0";
begin
  tlast <= \^tlast\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => tready,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      I2 => poff_ab_r_2,
      I3 => pinc_cd_r_1,
      I4 => out_pinc_ab,
      I5 => pinc_ab_r_0,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tlast\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \^tlast\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \^tlast\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
aresetn_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => aresetn_o
    );
\out_pinc_ab[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \pinc_ab_r[31]_i_2_n_0\,
      I1 => strobe(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => strobe(1),
      I4 => strobe(2),
      O => out_pinc_ab
    );
\out_pinc_ab_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(0),
      Q => in6(0),
      R => '0'
    );
\out_pinc_ab_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(10),
      Q => in6(10),
      R => '0'
    );
\out_pinc_ab_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(11),
      Q => in6(11),
      R => '0'
    );
\out_pinc_ab_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(12),
      Q => in6(12),
      R => '0'
    );
\out_pinc_ab_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(13),
      Q => in6(13),
      R => '0'
    );
\out_pinc_ab_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(14),
      Q => in6(14),
      R => '0'
    );
\out_pinc_ab_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(15),
      Q => in6(15),
      R => '0'
    );
\out_pinc_ab_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(16),
      Q => in6(16),
      R => '0'
    );
\out_pinc_ab_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(17),
      Q => in6(17),
      R => '0'
    );
\out_pinc_ab_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(18),
      Q => in6(18),
      R => '0'
    );
\out_pinc_ab_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(19),
      Q => in6(19),
      R => '0'
    );
\out_pinc_ab_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(1),
      Q => in6(1),
      R => '0'
    );
\out_pinc_ab_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(20),
      Q => in6(20),
      R => '0'
    );
\out_pinc_ab_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(21),
      Q => in6(21),
      R => '0'
    );
\out_pinc_ab_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(22),
      Q => in6(22),
      R => '0'
    );
\out_pinc_ab_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(23),
      Q => in6(23),
      R => '0'
    );
\out_pinc_ab_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(24),
      Q => in6(24),
      R => '0'
    );
\out_pinc_ab_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(25),
      Q => in6(25),
      R => '0'
    );
\out_pinc_ab_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(26),
      Q => in6(26),
      R => '0'
    );
\out_pinc_ab_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(27),
      Q => in6(27),
      R => '0'
    );
\out_pinc_ab_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(28),
      Q => in6(28),
      R => '0'
    );
\out_pinc_ab_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(29),
      Q => in6(29),
      R => '0'
    );
\out_pinc_ab_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(2),
      Q => in6(2),
      R => '0'
    );
\out_pinc_ab_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(30),
      Q => in6(30),
      R => '0'
    );
\out_pinc_ab_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(31),
      Q => in6(31),
      R => '0'
    );
\out_pinc_ab_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(3),
      Q => in6(3),
      R => '0'
    );
\out_pinc_ab_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(4),
      Q => in6(4),
      R => '0'
    );
\out_pinc_ab_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(5),
      Q => in6(5),
      R => '0'
    );
\out_pinc_ab_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(6),
      Q => in6(6),
      R => '0'
    );
\out_pinc_ab_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(7),
      Q => in6(7),
      R => '0'
    );
\out_pinc_ab_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(8),
      Q => in6(8),
      R => '0'
    );
\out_pinc_ab_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_ab_r(9),
      Q => in6(9),
      R => '0'
    );
\out_pinc_cd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(0),
      Q => in7(0),
      R => '0'
    );
\out_pinc_cd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(10),
      Q => in7(10),
      R => '0'
    );
\out_pinc_cd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(11),
      Q => in7(11),
      R => '0'
    );
\out_pinc_cd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(12),
      Q => in7(12),
      R => '0'
    );
\out_pinc_cd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(13),
      Q => in7(13),
      R => '0'
    );
\out_pinc_cd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(14),
      Q => in7(14),
      R => '0'
    );
\out_pinc_cd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(15),
      Q => in7(15),
      R => '0'
    );
\out_pinc_cd_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(16),
      Q => in7(16),
      R => '0'
    );
\out_pinc_cd_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(17),
      Q => in7(17),
      R => '0'
    );
\out_pinc_cd_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(18),
      Q => in7(18),
      R => '0'
    );
\out_pinc_cd_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(19),
      Q => in7(19),
      R => '0'
    );
\out_pinc_cd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(1),
      Q => in7(1),
      R => '0'
    );
\out_pinc_cd_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(20),
      Q => in7(20),
      R => '0'
    );
\out_pinc_cd_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(21),
      Q => in7(21),
      R => '0'
    );
\out_pinc_cd_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(22),
      Q => in7(22),
      R => '0'
    );
\out_pinc_cd_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(23),
      Q => in7(23),
      R => '0'
    );
\out_pinc_cd_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(24),
      Q => in7(24),
      R => '0'
    );
\out_pinc_cd_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(25),
      Q => in7(25),
      R => '0'
    );
\out_pinc_cd_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(26),
      Q => in7(26),
      R => '0'
    );
\out_pinc_cd_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(27),
      Q => in7(27),
      R => '0'
    );
\out_pinc_cd_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(28),
      Q => in7(28),
      R => '0'
    );
\out_pinc_cd_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(29),
      Q => in7(29),
      R => '0'
    );
\out_pinc_cd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(2),
      Q => in7(2),
      R => '0'
    );
\out_pinc_cd_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(30),
      Q => in7(30),
      R => '0'
    );
\out_pinc_cd_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(31),
      Q => in7(31),
      R => '0'
    );
\out_pinc_cd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(3),
      Q => in7(3),
      R => '0'
    );
\out_pinc_cd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(4),
      Q => in7(4),
      R => '0'
    );
\out_pinc_cd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(5),
      Q => in7(5),
      R => '0'
    );
\out_pinc_cd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(6),
      Q => in7(6),
      R => '0'
    );
\out_pinc_cd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(7),
      Q => in7(7),
      R => '0'
    );
\out_pinc_cd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(8),
      Q => in7(8),
      R => '0'
    );
\out_pinc_cd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => pinc_cd_r(9),
      Q => in7(9),
      R => '0'
    );
\out_poff_ab_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(0),
      Q => in6(32),
      R => '0'
    );
\out_poff_ab_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(10),
      Q => in6(42),
      R => '0'
    );
\out_poff_ab_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(11),
      Q => in6(43),
      R => '0'
    );
\out_poff_ab_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(12),
      Q => in6(44),
      R => '0'
    );
\out_poff_ab_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(13),
      Q => in6(45),
      R => '0'
    );
\out_poff_ab_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(14),
      Q => in6(46),
      R => '0'
    );
\out_poff_ab_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(15),
      Q => in6(47),
      R => '0'
    );
\out_poff_ab_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(16),
      Q => in6(48),
      R => '0'
    );
\out_poff_ab_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(17),
      Q => in6(49),
      R => '0'
    );
\out_poff_ab_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(18),
      Q => in6(50),
      R => '0'
    );
\out_poff_ab_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(19),
      Q => in6(51),
      R => '0'
    );
\out_poff_ab_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(1),
      Q => in6(33),
      R => '0'
    );
\out_poff_ab_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(20),
      Q => in6(52),
      R => '0'
    );
\out_poff_ab_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(21),
      Q => in6(53),
      R => '0'
    );
\out_poff_ab_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(22),
      Q => in6(54),
      R => '0'
    );
\out_poff_ab_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(23),
      Q => in6(55),
      R => '0'
    );
\out_poff_ab_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(24),
      Q => in6(56),
      R => '0'
    );
\out_poff_ab_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(25),
      Q => in6(57),
      R => '0'
    );
\out_poff_ab_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(26),
      Q => in6(58),
      R => '0'
    );
\out_poff_ab_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(27),
      Q => in6(59),
      R => '0'
    );
\out_poff_ab_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(28),
      Q => in6(60),
      R => '0'
    );
\out_poff_ab_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(29),
      Q => in6(61),
      R => '0'
    );
\out_poff_ab_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(2),
      Q => in6(34),
      R => '0'
    );
\out_poff_ab_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(30),
      Q => in6(62),
      R => '0'
    );
\out_poff_ab_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(31),
      Q => in6(63),
      R => '0'
    );
\out_poff_ab_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(3),
      Q => in6(35),
      R => '0'
    );
\out_poff_ab_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(4),
      Q => in6(36),
      R => '0'
    );
\out_poff_ab_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(5),
      Q => in6(37),
      R => '0'
    );
\out_poff_ab_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(6),
      Q => in6(38),
      R => '0'
    );
\out_poff_ab_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(7),
      Q => in6(39),
      R => '0'
    );
\out_poff_ab_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(8),
      Q => in6(40),
      R => '0'
    );
\out_poff_ab_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => poff_ab_r(9),
      Q => in6(41),
      R => '0'
    );
\out_poff_cd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(0),
      Q => in7(32),
      R => '0'
    );
\out_poff_cd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(10),
      Q => in7(42),
      R => '0'
    );
\out_poff_cd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(11),
      Q => in7(43),
      R => '0'
    );
\out_poff_cd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(12),
      Q => in7(44),
      R => '0'
    );
\out_poff_cd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(13),
      Q => in7(45),
      R => '0'
    );
\out_poff_cd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(14),
      Q => in7(46),
      R => '0'
    );
\out_poff_cd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(15),
      Q => in7(47),
      R => '0'
    );
\out_poff_cd_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(16),
      Q => in7(48),
      R => '0'
    );
\out_poff_cd_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(17),
      Q => in7(49),
      R => '0'
    );
\out_poff_cd_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(18),
      Q => in7(50),
      R => '0'
    );
\out_poff_cd_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(19),
      Q => in7(51),
      R => '0'
    );
\out_poff_cd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(1),
      Q => in7(33),
      R => '0'
    );
\out_poff_cd_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(20),
      Q => in7(52),
      R => '0'
    );
\out_poff_cd_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(21),
      Q => in7(53),
      R => '0'
    );
\out_poff_cd_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(22),
      Q => in7(54),
      R => '0'
    );
\out_poff_cd_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(23),
      Q => in7(55),
      R => '0'
    );
\out_poff_cd_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(24),
      Q => in7(56),
      R => '0'
    );
\out_poff_cd_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(25),
      Q => in7(57),
      R => '0'
    );
\out_poff_cd_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(26),
      Q => in7(58),
      R => '0'
    );
\out_poff_cd_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(27),
      Q => in7(59),
      R => '0'
    );
\out_poff_cd_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(28),
      Q => in7(60),
      R => '0'
    );
\out_poff_cd_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(29),
      Q => in7(61),
      R => '0'
    );
\out_poff_cd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(2),
      Q => in7(34),
      R => '0'
    );
\out_poff_cd_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(30),
      Q => in7(62),
      R => '0'
    );
\out_poff_cd_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(31),
      Q => in7(63),
      R => '0'
    );
\out_poff_cd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(3),
      Q => in7(35),
      R => '0'
    );
\out_poff_cd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(4),
      Q => in7(36),
      R => '0'
    );
\out_poff_cd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(5),
      Q => in7(37),
      R => '0'
    );
\out_poff_cd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(6),
      Q => in7(38),
      R => '0'
    );
\out_poff_cd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(7),
      Q => in7(39),
      R => '0'
    );
\out_poff_cd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(8),
      Q => in7(40),
      R => '0'
    );
\out_poff_cd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_pinc_ab,
      D => data_word(9),
      Q => in7(41),
      R => '0'
    );
\pinc_ab_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \pinc_ab_r[31]_i_2_n_0\,
      I1 => strobe(2),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => strobe(1),
      I4 => strobe(0),
      O => pinc_ab_r_0
    );
\pinc_ab_r[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => strobe_prev(2),
      I1 => strobe(2),
      I2 => strobe(0),
      I3 => strobe_prev(0),
      I4 => strobe(1),
      I5 => strobe_prev(1),
      O => \pinc_ab_r[31]_i_2_n_0\
    );
\pinc_ab_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(0),
      Q => pinc_ab_r(0),
      R => '0'
    );
\pinc_ab_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(10),
      Q => pinc_ab_r(10),
      R => '0'
    );
\pinc_ab_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(11),
      Q => pinc_ab_r(11),
      R => '0'
    );
\pinc_ab_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(12),
      Q => pinc_ab_r(12),
      R => '0'
    );
\pinc_ab_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(13),
      Q => pinc_ab_r(13),
      R => '0'
    );
\pinc_ab_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(14),
      Q => pinc_ab_r(14),
      R => '0'
    );
\pinc_ab_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(15),
      Q => pinc_ab_r(15),
      R => '0'
    );
\pinc_ab_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(16),
      Q => pinc_ab_r(16),
      R => '0'
    );
\pinc_ab_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(17),
      Q => pinc_ab_r(17),
      R => '0'
    );
\pinc_ab_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(18),
      Q => pinc_ab_r(18),
      R => '0'
    );
\pinc_ab_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(19),
      Q => pinc_ab_r(19),
      R => '0'
    );
\pinc_ab_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(1),
      Q => pinc_ab_r(1),
      R => '0'
    );
\pinc_ab_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(20),
      Q => pinc_ab_r(20),
      R => '0'
    );
\pinc_ab_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(21),
      Q => pinc_ab_r(21),
      R => '0'
    );
\pinc_ab_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(22),
      Q => pinc_ab_r(22),
      R => '0'
    );
\pinc_ab_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(23),
      Q => pinc_ab_r(23),
      R => '0'
    );
\pinc_ab_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(24),
      Q => pinc_ab_r(24),
      R => '0'
    );
\pinc_ab_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(25),
      Q => pinc_ab_r(25),
      R => '0'
    );
\pinc_ab_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(26),
      Q => pinc_ab_r(26),
      R => '0'
    );
\pinc_ab_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(27),
      Q => pinc_ab_r(27),
      R => '0'
    );
\pinc_ab_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(28),
      Q => pinc_ab_r(28),
      R => '0'
    );
\pinc_ab_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(29),
      Q => pinc_ab_r(29),
      R => '0'
    );
\pinc_ab_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(2),
      Q => pinc_ab_r(2),
      R => '0'
    );
\pinc_ab_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(30),
      Q => pinc_ab_r(30),
      R => '0'
    );
\pinc_ab_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(31),
      Q => pinc_ab_r(31),
      R => '0'
    );
\pinc_ab_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(3),
      Q => pinc_ab_r(3),
      R => '0'
    );
\pinc_ab_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(4),
      Q => pinc_ab_r(4),
      R => '0'
    );
\pinc_ab_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(5),
      Q => pinc_ab_r(5),
      R => '0'
    );
\pinc_ab_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(6),
      Q => pinc_ab_r(6),
      R => '0'
    );
\pinc_ab_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(7),
      Q => pinc_ab_r(7),
      R => '0'
    );
\pinc_ab_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(8),
      Q => pinc_ab_r(8),
      R => '0'
    );
\pinc_ab_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_ab_r_0,
      D => data_word(9),
      Q => pinc_ab_r(9),
      R => '0'
    );
\pinc_cd_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \pinc_ab_r[31]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => strobe(0),
      I3 => strobe(2),
      I4 => strobe(1),
      O => pinc_cd_r_1
    );
\pinc_cd_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(0),
      Q => pinc_cd_r(0),
      R => '0'
    );
\pinc_cd_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(10),
      Q => pinc_cd_r(10),
      R => '0'
    );
\pinc_cd_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(11),
      Q => pinc_cd_r(11),
      R => '0'
    );
\pinc_cd_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(12),
      Q => pinc_cd_r(12),
      R => '0'
    );
\pinc_cd_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(13),
      Q => pinc_cd_r(13),
      R => '0'
    );
\pinc_cd_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(14),
      Q => pinc_cd_r(14),
      R => '0'
    );
\pinc_cd_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(15),
      Q => pinc_cd_r(15),
      R => '0'
    );
\pinc_cd_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(16),
      Q => pinc_cd_r(16),
      R => '0'
    );
\pinc_cd_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(17),
      Q => pinc_cd_r(17),
      R => '0'
    );
\pinc_cd_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(18),
      Q => pinc_cd_r(18),
      R => '0'
    );
\pinc_cd_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(19),
      Q => pinc_cd_r(19),
      R => '0'
    );
\pinc_cd_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(1),
      Q => pinc_cd_r(1),
      R => '0'
    );
\pinc_cd_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(20),
      Q => pinc_cd_r(20),
      R => '0'
    );
\pinc_cd_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(21),
      Q => pinc_cd_r(21),
      R => '0'
    );
\pinc_cd_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(22),
      Q => pinc_cd_r(22),
      R => '0'
    );
\pinc_cd_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(23),
      Q => pinc_cd_r(23),
      R => '0'
    );
\pinc_cd_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(24),
      Q => pinc_cd_r(24),
      R => '0'
    );
\pinc_cd_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(25),
      Q => pinc_cd_r(25),
      R => '0'
    );
\pinc_cd_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(26),
      Q => pinc_cd_r(26),
      R => '0'
    );
\pinc_cd_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(27),
      Q => pinc_cd_r(27),
      R => '0'
    );
\pinc_cd_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(28),
      Q => pinc_cd_r(28),
      R => '0'
    );
\pinc_cd_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(29),
      Q => pinc_cd_r(29),
      R => '0'
    );
\pinc_cd_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(2),
      Q => pinc_cd_r(2),
      R => '0'
    );
\pinc_cd_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(30),
      Q => pinc_cd_r(30),
      R => '0'
    );
\pinc_cd_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(31),
      Q => pinc_cd_r(31),
      R => '0'
    );
\pinc_cd_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(3),
      Q => pinc_cd_r(3),
      R => '0'
    );
\pinc_cd_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(4),
      Q => pinc_cd_r(4),
      R => '0'
    );
\pinc_cd_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(5),
      Q => pinc_cd_r(5),
      R => '0'
    );
\pinc_cd_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(6),
      Q => pinc_cd_r(6),
      R => '0'
    );
\pinc_cd_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(7),
      Q => pinc_cd_r(7),
      R => '0'
    );
\pinc_cd_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(8),
      Q => pinc_cd_r(8),
      R => '0'
    );
\pinc_cd_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pinc_cd_r_1,
      D => data_word(9),
      Q => pinc_cd_r(9),
      R => '0'
    );
\poff_ab_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \pinc_ab_r[31]_i_2_n_0\,
      I1 => strobe(0),
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => strobe(2),
      I4 => strobe(1),
      O => poff_ab_r_2
    );
\poff_ab_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(0),
      Q => poff_ab_r(0),
      R => '0'
    );
\poff_ab_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(10),
      Q => poff_ab_r(10),
      R => '0'
    );
\poff_ab_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(11),
      Q => poff_ab_r(11),
      R => '0'
    );
\poff_ab_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(12),
      Q => poff_ab_r(12),
      R => '0'
    );
\poff_ab_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(13),
      Q => poff_ab_r(13),
      R => '0'
    );
\poff_ab_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(14),
      Q => poff_ab_r(14),
      R => '0'
    );
\poff_ab_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(15),
      Q => poff_ab_r(15),
      R => '0'
    );
\poff_ab_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(16),
      Q => poff_ab_r(16),
      R => '0'
    );
\poff_ab_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(17),
      Q => poff_ab_r(17),
      R => '0'
    );
\poff_ab_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(18),
      Q => poff_ab_r(18),
      R => '0'
    );
\poff_ab_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(19),
      Q => poff_ab_r(19),
      R => '0'
    );
\poff_ab_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(1),
      Q => poff_ab_r(1),
      R => '0'
    );
\poff_ab_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(20),
      Q => poff_ab_r(20),
      R => '0'
    );
\poff_ab_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(21),
      Q => poff_ab_r(21),
      R => '0'
    );
\poff_ab_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(22),
      Q => poff_ab_r(22),
      R => '0'
    );
\poff_ab_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(23),
      Q => poff_ab_r(23),
      R => '0'
    );
\poff_ab_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(24),
      Q => poff_ab_r(24),
      R => '0'
    );
\poff_ab_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(25),
      Q => poff_ab_r(25),
      R => '0'
    );
\poff_ab_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(26),
      Q => poff_ab_r(26),
      R => '0'
    );
\poff_ab_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(27),
      Q => poff_ab_r(27),
      R => '0'
    );
\poff_ab_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(28),
      Q => poff_ab_r(28),
      R => '0'
    );
\poff_ab_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(29),
      Q => poff_ab_r(29),
      R => '0'
    );
\poff_ab_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(2),
      Q => poff_ab_r(2),
      R => '0'
    );
\poff_ab_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(30),
      Q => poff_ab_r(30),
      R => '0'
    );
\poff_ab_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(31),
      Q => poff_ab_r(31),
      R => '0'
    );
\poff_ab_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(3),
      Q => poff_ab_r(3),
      R => '0'
    );
\poff_ab_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(4),
      Q => poff_ab_r(4),
      R => '0'
    );
\poff_ab_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(5),
      Q => poff_ab_r(5),
      R => '0'
    );
\poff_ab_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(6),
      Q => poff_ab_r(6),
      R => '0'
    );
\poff_ab_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(7),
      Q => poff_ab_r(7),
      R => '0'
    );
\poff_ab_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(8),
      Q => poff_ab_r(8),
      R => '0'
    );
\poff_ab_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => poff_ab_r_2,
      D => data_word(9),
      Q => poff_ab_r(9),
      R => '0'
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
\tdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(0),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(0),
      I3 => \^tlast\,
      O => tdata(0)
    );
\tdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(10),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(10),
      I3 => \^tlast\,
      O => tdata(10)
    );
\tdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(11),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(11),
      I3 => \^tlast\,
      O => tdata(11)
    );
\tdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(12),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(12),
      I3 => \^tlast\,
      O => tdata(12)
    );
\tdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(13),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(13),
      I3 => \^tlast\,
      O => tdata(13)
    );
\tdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(14),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(14),
      I3 => \^tlast\,
      O => tdata(14)
    );
\tdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(15),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(15),
      I3 => \^tlast\,
      O => tdata(15)
    );
\tdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(16),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(16),
      I3 => \^tlast\,
      O => tdata(16)
    );
\tdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(17),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(17),
      I3 => \^tlast\,
      O => tdata(17)
    );
\tdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(18),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(18),
      I3 => \^tlast\,
      O => tdata(18)
    );
\tdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(19),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(19),
      I3 => \^tlast\,
      O => tdata(19)
    );
\tdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(1),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(1),
      I3 => \^tlast\,
      O => tdata(1)
    );
\tdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(20),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(20),
      I3 => \^tlast\,
      O => tdata(20)
    );
\tdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(21),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(21),
      I3 => \^tlast\,
      O => tdata(21)
    );
\tdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(22),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(22),
      I3 => \^tlast\,
      O => tdata(22)
    );
\tdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(23),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(23),
      I3 => \^tlast\,
      O => tdata(23)
    );
\tdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(24),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(24),
      I3 => \^tlast\,
      O => tdata(24)
    );
\tdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(25),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(25),
      I3 => \^tlast\,
      O => tdata(25)
    );
\tdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(26),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(26),
      I3 => \^tlast\,
      O => tdata(26)
    );
\tdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(27),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(27),
      I3 => \^tlast\,
      O => tdata(27)
    );
\tdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(28),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(28),
      I3 => \^tlast\,
      O => tdata(28)
    );
\tdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(29),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(29),
      I3 => \^tlast\,
      O => tdata(29)
    );
\tdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(2),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(2),
      I3 => \^tlast\,
      O => tdata(2)
    );
\tdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(30),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(30),
      I3 => \^tlast\,
      O => tdata(30)
    );
\tdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(31),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(31),
      I3 => \^tlast\,
      O => tdata(31)
    );
\tdata[32]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(32),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(32),
      I3 => \^tlast\,
      O => tdata(32)
    );
\tdata[33]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(33),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(33),
      I3 => \^tlast\,
      O => tdata(33)
    );
\tdata[34]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(34),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(34),
      I3 => \^tlast\,
      O => tdata(34)
    );
\tdata[35]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(35),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(35),
      I3 => \^tlast\,
      O => tdata(35)
    );
\tdata[36]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(36),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(36),
      I3 => \^tlast\,
      O => tdata(36)
    );
\tdata[37]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(37),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(37),
      I3 => \^tlast\,
      O => tdata(37)
    );
\tdata[38]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(38),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(38),
      I3 => \^tlast\,
      O => tdata(38)
    );
\tdata[39]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(39),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(39),
      I3 => \^tlast\,
      O => tdata(39)
    );
\tdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(3),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(3),
      I3 => \^tlast\,
      O => tdata(3)
    );
\tdata[40]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(40),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(40),
      I3 => \^tlast\,
      O => tdata(40)
    );
\tdata[41]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(41),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(41),
      I3 => \^tlast\,
      O => tdata(41)
    );
\tdata[42]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(42),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(42),
      I3 => \^tlast\,
      O => tdata(42)
    );
\tdata[43]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(43),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(43),
      I3 => \^tlast\,
      O => tdata(43)
    );
\tdata[44]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(44),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(44),
      I3 => \^tlast\,
      O => tdata(44)
    );
\tdata[45]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(45),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(45),
      I3 => \^tlast\,
      O => tdata(45)
    );
\tdata[46]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(46),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(46),
      I3 => \^tlast\,
      O => tdata(46)
    );
\tdata[47]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(47),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(47),
      I3 => \^tlast\,
      O => tdata(47)
    );
\tdata[48]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(48),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(48),
      I3 => \^tlast\,
      O => tdata(48)
    );
\tdata[49]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(49),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(49),
      I3 => \^tlast\,
      O => tdata(49)
    );
\tdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(4),
      I3 => \^tlast\,
      O => tdata(4)
    );
\tdata[50]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(50),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(50),
      I3 => \^tlast\,
      O => tdata(50)
    );
\tdata[51]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(51),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(51),
      I3 => \^tlast\,
      O => tdata(51)
    );
\tdata[52]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(52),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(52),
      I3 => \^tlast\,
      O => tdata(52)
    );
\tdata[53]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(53),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(53),
      I3 => \^tlast\,
      O => tdata(53)
    );
\tdata[54]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(54),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(54),
      I3 => \^tlast\,
      O => tdata(54)
    );
\tdata[55]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(55),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(55),
      I3 => \^tlast\,
      O => tdata(55)
    );
\tdata[56]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(56),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(56),
      I3 => \^tlast\,
      O => tdata(56)
    );
\tdata[57]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(57),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(57),
      I3 => \^tlast\,
      O => tdata(57)
    );
\tdata[58]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(58),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(58),
      I3 => \^tlast\,
      O => tdata(58)
    );
\tdata[59]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(59),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(59),
      I3 => \^tlast\,
      O => tdata(59)
    );
\tdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(5),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(5),
      I3 => \^tlast\,
      O => tdata(5)
    );
\tdata[60]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(60),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(60),
      I3 => \^tlast\,
      O => tdata(60)
    );
\tdata[61]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(61),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(61),
      I3 => \^tlast\,
      O => tdata(61)
    );
\tdata[62]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(62),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(62),
      I3 => \^tlast\,
      O => tdata(62)
    );
\tdata[63]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(63),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(63),
      I3 => \^tlast\,
      O => tdata(63)
    );
\tdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(6),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(6),
      I3 => \^tlast\,
      O => tdata(6)
    );
\tdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(7),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(7),
      I3 => \^tlast\,
      O => tdata(7)
    );
\tdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(8),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(8),
      I3 => \^tlast\,
      O => tdata(8)
    );
\tdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in6(9),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => in7(9),
      I3 => \^tlast\,
      O => tdata(9)
    );
tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^tlast\,
      O => tvalid
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl
     port map (
      aresetn_o => aresetn_o,
      clk => clk,
      data_word(31 downto 0) => data_word(31 downto 0),
      strobe(2 downto 0) => strobe(2 downto 0),
      tdata(63 downto 0) => tdata(63 downto 0),
      tlast => tlast,
      tready => tready,
      tvalid => tvalid
    );
end STRUCTURE;
