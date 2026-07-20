-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Jun 29 12:03:24 2026
-- Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_interleave_0_0_sim_netlist.vhdl
-- Design      : projectHW_interleave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interleave is
  port (
    DATA_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CH1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CH2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interleave;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interleave is
begin
\DATA_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(0),
      I1 => CH2(0),
      I2 => CLK,
      O => DATA_out(0)
    );
\DATA_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(10),
      I1 => CH2(10),
      I2 => CLK,
      O => DATA_out(10)
    );
\DATA_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(11),
      I1 => CH2(11),
      I2 => CLK,
      O => DATA_out(11)
    );
\DATA_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(12),
      I1 => CH2(12),
      I2 => CLK,
      O => DATA_out(12)
    );
\DATA_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(13),
      I1 => CH2(13),
      I2 => CLK,
      O => DATA_out(13)
    );
\DATA_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(14),
      I1 => CH2(14),
      I2 => CLK,
      O => DATA_out(14)
    );
\DATA_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(15),
      I1 => CH2(15),
      I2 => CLK,
      O => DATA_out(15)
    );
\DATA_out[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(16),
      I1 => CH2(16),
      I2 => CLK,
      O => DATA_out(16)
    );
\DATA_out[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(17),
      I1 => CH2(17),
      I2 => CLK,
      O => DATA_out(17)
    );
\DATA_out[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(18),
      I1 => CH2(18),
      I2 => CLK,
      O => DATA_out(18)
    );
\DATA_out[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(19),
      I1 => CH2(19),
      I2 => CLK,
      O => DATA_out(19)
    );
\DATA_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(1),
      I1 => CH2(1),
      I2 => CLK,
      O => DATA_out(1)
    );
\DATA_out[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(20),
      I1 => CH2(20),
      I2 => CLK,
      O => DATA_out(20)
    );
\DATA_out[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(21),
      I1 => CH2(21),
      I2 => CLK,
      O => DATA_out(21)
    );
\DATA_out[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(22),
      I1 => CH2(22),
      I2 => CLK,
      O => DATA_out(22)
    );
\DATA_out[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(23),
      I1 => CH2(23),
      I2 => CLK,
      O => DATA_out(23)
    );
\DATA_out[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(24),
      I1 => CH2(24),
      I2 => CLK,
      O => DATA_out(24)
    );
\DATA_out[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(25),
      I1 => CH2(25),
      I2 => CLK,
      O => DATA_out(25)
    );
\DATA_out[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(26),
      I1 => CH2(26),
      I2 => CLK,
      O => DATA_out(26)
    );
\DATA_out[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(27),
      I1 => CH2(27),
      I2 => CLK,
      O => DATA_out(27)
    );
\DATA_out[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(28),
      I1 => CH2(28),
      I2 => CLK,
      O => DATA_out(28)
    );
\DATA_out[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(29),
      I1 => CH2(29),
      I2 => CLK,
      O => DATA_out(29)
    );
\DATA_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(2),
      I1 => CH2(2),
      I2 => CLK,
      O => DATA_out(2)
    );
\DATA_out[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(30),
      I1 => CH2(30),
      I2 => CLK,
      O => DATA_out(30)
    );
\DATA_out[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(31),
      I1 => CH2(31),
      I2 => CLK,
      O => DATA_out(31)
    );
\DATA_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(3),
      I1 => CH2(3),
      I2 => CLK,
      O => DATA_out(3)
    );
\DATA_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(4),
      I1 => CH2(4),
      I2 => CLK,
      O => DATA_out(4)
    );
\DATA_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(5),
      I1 => CH2(5),
      I2 => CLK,
      O => DATA_out(5)
    );
\DATA_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(6),
      I1 => CH2(6),
      I2 => CLK,
      O => DATA_out(6)
    );
\DATA_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(7),
      I1 => CH2(7),
      I2 => CLK,
      O => DATA_out(7)
    );
\DATA_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(8),
      I1 => CH2(8),
      I2 => CLK,
      O => DATA_out(8)
    );
\DATA_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => CH1(9),
      I1 => CH2(9),
      I2 => CLK,
      O => DATA_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    CH1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CH2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "projectHW_interleave_0_0,interleave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "interleave,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interleave
     port map (
      CH1(31 downto 0) => CH1(31 downto 0),
      CH2(31 downto 0) => CH2(31 downto 0),
      CLK => CLK,
      DATA_out(31 downto 0) => DATA_out(31 downto 0)
    );
end STRUCTURE;
