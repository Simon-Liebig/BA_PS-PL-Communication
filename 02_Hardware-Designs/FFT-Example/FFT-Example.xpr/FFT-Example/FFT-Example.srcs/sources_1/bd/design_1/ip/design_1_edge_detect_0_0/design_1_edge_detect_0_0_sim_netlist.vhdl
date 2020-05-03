-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed Feb  5 12:46:02 2020
-- Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/simon/FPGADEVELOPER/FFT-Example/FFT-Example/FFT-Example.srcs/sources_1/bd/design_1/ip/design_1_edge_detect_0_0/design_1_edge_detect_0_0_sim_netlist.vhdl
-- Design      : design_1_edge_detect_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_edge_detect_0_0_edge_detect is
  port (
    edge_detected : out STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_edge_detect_0_0_edge_detect : entity is "edge_detect";
end design_1_edge_detect_0_0_edge_detect;

architecture STRUCTURE of design_1_edge_detect_0_0_edge_detect is
  signal edge_detected_i_i_10_n_0 : STD_LOGIC;
  signal edge_detected_i_i_3_n_0 : STD_LOGIC;
  signal edge_detected_i_i_4_n_0 : STD_LOGIC;
  signal edge_detected_i_i_5_n_0 : STD_LOGIC;
  signal edge_detected_i_i_6_n_0 : STD_LOGIC;
  signal edge_detected_i_i_7_n_0 : STD_LOGIC;
  signal edge_detected_i_i_8_n_0 : STD_LOGIC;
  signal edge_detected_i_i_9_n_0 : STD_LOGIC;
  signal edge_detected_i_reg_i_1_n_1 : STD_LOGIC;
  signal edge_detected_i_reg_i_1_n_2 : STD_LOGIC;
  signal edge_detected_i_reg_i_1_n_3 : STD_LOGIC;
  signal edge_detected_i_reg_i_2_n_0 : STD_LOGIC;
  signal edge_detected_i_reg_i_2_n_1 : STD_LOGIC;
  signal edge_detected_i_reg_i_2_n_2 : STD_LOGIC;
  signal edge_detected_i_reg_i_2_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal tmp : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_edge_detected_i_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_edge_detected_i_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
edge_detected_i_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(0),
      I1 => din(0),
      I2 => din(2),
      I3 => tmp(2),
      I4 => din(1),
      I5 => tmp(1),
      O => edge_detected_i_i_10_n_0
    );
edge_detected_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(21),
      I1 => din(21),
      I2 => din(23),
      I3 => tmp(23),
      I4 => din(22),
      I5 => tmp(22),
      O => edge_detected_i_i_3_n_0
    );
edge_detected_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(18),
      I1 => din(18),
      I2 => din(20),
      I3 => tmp(20),
      I4 => din(19),
      I5 => tmp(19),
      O => edge_detected_i_i_4_n_0
    );
edge_detected_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(15),
      I1 => din(15),
      I2 => din(17),
      I3 => tmp(17),
      I4 => din(16),
      I5 => tmp(16),
      O => edge_detected_i_i_5_n_0
    );
edge_detected_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(12),
      I1 => din(12),
      I2 => din(14),
      I3 => tmp(14),
      I4 => din(13),
      I5 => tmp(13),
      O => edge_detected_i_i_6_n_0
    );
edge_detected_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(9),
      I1 => din(9),
      I2 => din(11),
      I3 => tmp(11),
      I4 => din(10),
      I5 => tmp(10),
      O => edge_detected_i_i_7_n_0
    );
edge_detected_i_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(6),
      I1 => din(6),
      I2 => din(8),
      I3 => tmp(8),
      I4 => din(7),
      I5 => tmp(7),
      O => edge_detected_i_i_8_n_0
    );
edge_detected_i_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp(3),
      I1 => din(3),
      I2 => din(5),
      I3 => tmp(5),
      I4 => din(4),
      I5 => tmp(4),
      O => edge_detected_i_i_9_n_0
    );
edge_detected_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => edge_detected,
      R => '0'
    );
edge_detected_i_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => edge_detected_i_reg_i_2_n_0,
      CO(3) => p_0_in,
      CO(2) => edge_detected_i_reg_i_1_n_1,
      CO(1) => edge_detected_i_reg_i_1_n_2,
      CO(0) => edge_detected_i_reg_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_edge_detected_i_reg_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => edge_detected_i_i_3_n_0,
      S(2) => edge_detected_i_i_4_n_0,
      S(1) => edge_detected_i_i_5_n_0,
      S(0) => edge_detected_i_i_6_n_0
    );
edge_detected_i_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => edge_detected_i_reg_i_2_n_0,
      CO(2) => edge_detected_i_reg_i_2_n_1,
      CO(1) => edge_detected_i_reg_i_2_n_2,
      CO(0) => edge_detected_i_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_edge_detected_i_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => edge_detected_i_i_7_n_0,
      S(2) => edge_detected_i_i_8_n_0,
      S(1) => edge_detected_i_i_9_n_0,
      S(0) => edge_detected_i_i_10_n_0
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(0),
      Q => tmp(0),
      R => '0'
    );
\tmp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(10),
      Q => tmp(10),
      R => '0'
    );
\tmp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(11),
      Q => tmp(11),
      R => '0'
    );
\tmp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(12),
      Q => tmp(12),
      R => '0'
    );
\tmp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(13),
      Q => tmp(13),
      R => '0'
    );
\tmp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(14),
      Q => tmp(14),
      R => '0'
    );
\tmp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(15),
      Q => tmp(15),
      R => '0'
    );
\tmp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(16),
      Q => tmp(16),
      R => '0'
    );
\tmp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(17),
      Q => tmp(17),
      R => '0'
    );
\tmp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(18),
      Q => tmp(18),
      R => '0'
    );
\tmp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(19),
      Q => tmp(19),
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(1),
      Q => tmp(1),
      R => '0'
    );
\tmp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(20),
      Q => tmp(20),
      R => '0'
    );
\tmp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(21),
      Q => tmp(21),
      R => '0'
    );
\tmp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(22),
      Q => tmp(22),
      R => '0'
    );
\tmp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(23),
      Q => tmp(23),
      R => '0'
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(2),
      Q => tmp(2),
      R => '0'
    );
\tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(3),
      Q => tmp(3),
      R => '0'
    );
\tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(4),
      Q => tmp(4),
      R => '0'
    );
\tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(5),
      Q => tmp(5),
      R => '0'
    );
\tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(6),
      Q => tmp(6),
      R => '0'
    );
\tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(7),
      Q => tmp(7),
      R => '0'
    );
\tmp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(8),
      Q => tmp(8),
      R => '0'
    );
\tmp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => din(9),
      Q => tmp(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_edge_detect_0_0 is
  port (
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    edge_detected : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_edge_detect_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_edge_detect_0_0 : entity is "design_1_edge_detect_0_0,edge_detect,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_edge_detect_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_edge_detect_0_0 : entity is "edge_detect,Vivado 2017.4";
end design_1_edge_detect_0_0;

architecture STRUCTURE of design_1_edge_detect_0_0 is
begin
inst: entity work.design_1_edge_detect_0_0_edge_detect
     port map (
      clk => clk,
      din(23 downto 0) => din(23 downto 0),
      edge_detected => edge_detected
    );
end STRUCTURE;
