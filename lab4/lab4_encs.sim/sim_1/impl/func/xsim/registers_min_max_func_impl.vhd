-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Apr  2 22:52:12 2024
-- Host        : mescalero.encs.concordia.ca running 64-bit Scientific Linux release 7.9 (Nitrogen)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /nfs/home/b/b_mihigo/lab4_encs/lab4_encs.sim/sim_1/impl/func/xsim/registers_min_max_func_impl.vhd
-- Design      : registers_min_max
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity registers_min_max is
  port (
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    max_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    min_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of registers_min_max : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of registers_min_max : entity is "cc4ddb97";
end registers_min_max;

architecture STRUCTURE of registers_min_max is
  signal \D_wire_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \D_wire_reg_n_0_[3][3]\ : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal din_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal geqOp4_in : STD_LOGIC;
  signal geqOp8_in : STD_LOGIC;
  signal max_out112_out : STD_LOGIC;
  signal max_out114_out : STD_LOGIC;
  signal max_out_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \max_out_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_14_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \max_out_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal min_out15_out : STD_LOGIC;
  signal min_out19_out : STD_LOGIC;
  signal min_out_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \min_out_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \min_out_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal reg_out_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal sel_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \max_out_OBUF[3]_inst_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \max_out_OBUF[3]_inst_i_9\ : label is "soft_lutpair0";
begin
\D_wire_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[1][0]\,
      Q => \D_wire_reg_n_0_[0][0]\
    );
\D_wire_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[1][1]\,
      Q => \D_wire_reg_n_0_[0][1]\
    );
\D_wire_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[1][2]\,
      Q => \D_wire_reg_n_0_[0][2]\
    );
\D_wire_reg[0][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \D_wire_reg_n_0_[1][3]\,
      PRE => reset_IBUF,
      Q => \D_wire_reg_n_0_[0][3]\
    );
\D_wire_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[2][0]\,
      Q => \D_wire_reg_n_0_[1][0]\
    );
\D_wire_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[2][1]\,
      Q => \D_wire_reg_n_0_[1][1]\
    );
\D_wire_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[2][2]\,
      Q => \D_wire_reg_n_0_[1][2]\
    );
\D_wire_reg[1][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \D_wire_reg_n_0_[2][3]\,
      PRE => reset_IBUF,
      Q => \D_wire_reg_n_0_[1][3]\
    );
\D_wire_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[3][0]\,
      Q => \D_wire_reg_n_0_[2][0]\
    );
\D_wire_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[3][1]\,
      Q => \D_wire_reg_n_0_[2][1]\
    );
\D_wire_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \D_wire_reg_n_0_[3][2]\,
      Q => \D_wire_reg_n_0_[2][2]\
    );
\D_wire_reg[2][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \D_wire_reg_n_0_[3][3]\,
      PRE => reset_IBUF,
      Q => \D_wire_reg_n_0_[2][3]\
    );
\D_wire_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => din_IBUF(0),
      Q => \D_wire_reg_n_0_[3][0]\
    );
\D_wire_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => din_IBUF(1),
      Q => \D_wire_reg_n_0_[3][1]\
    );
\D_wire_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => din_IBUF(2),
      Q => \D_wire_reg_n_0_[3][2]\
    );
\D_wire_reg[3][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => din_IBUF(3),
      PRE => reset_IBUF,
      Q => \D_wire_reg_n_0_[3][3]\
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\din_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(0),
      O => din_IBUF(0)
    );
\din_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(1),
      O => din_IBUF(1)
    );
\din_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(2),
      O => din_IBUF(2)
    );
\din_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(3),
      O => din_IBUF(3)
    );
\max_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => max_out_OBUF(0),
      O => max_out(0)
    );
\max_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][0]\,
      I1 => max_out114_out,
      I2 => \D_wire_reg_n_0_[2][0]\,
      I3 => max_out112_out,
      I4 => \max_out_OBUF[0]_inst_i_2_n_0\,
      O => max_out_OBUF(0)
    );
\max_out_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4DFFFFB2000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_11_n_0\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => \D_wire_reg_n_0_[1][0]\,
      I4 => \max_out_OBUF[2]_inst_i_3_n_0\,
      I5 => \D_wire_reg_n_0_[0][0]\,
      O => \max_out_OBUF[0]_inst_i_2_n_0\
    );
\max_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => max_out_OBUF(1),
      O => max_out(1)
    );
\max_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][1]\,
      I1 => max_out114_out,
      I2 => \D_wire_reg_n_0_[2][1]\,
      I3 => max_out112_out,
      I4 => \max_out_OBUF[1]_inst_i_2_n_0\,
      O => max_out_OBUF(1)
    );
\max_out_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4DFFFFB2000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_11_n_0\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => \D_wire_reg_n_0_[1][1]\,
      I4 => \max_out_OBUF[2]_inst_i_3_n_0\,
      I5 => \D_wire_reg_n_0_[0][1]\,
      O => \max_out_OBUF[1]_inst_i_2_n_0\
    );
\max_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => max_out_OBUF(2),
      O => max_out(2)
    );
\max_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][2]\,
      I1 => max_out114_out,
      I2 => \D_wire_reg_n_0_[2][2]\,
      I3 => max_out112_out,
      I4 => \max_out_OBUF[2]_inst_i_2_n_0\,
      O => max_out_OBUF(2)
    );
\max_out_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4DFFFFB2000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_11_n_0\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => \D_wire_reg_n_0_[1][2]\,
      I4 => \max_out_OBUF[2]_inst_i_3_n_0\,
      I5 => \D_wire_reg_n_0_[0][2]\,
      O => \max_out_OBUF[2]_inst_i_2_n_0\
    );
\max_out_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0D400D0"
    )
        port map (
      I0 => \D_wire_reg_n_0_[0][3]\,
      I1 => \max_out_OBUF[2]_inst_i_4_n_0\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => \D_wire_reg_n_0_[2][3]\,
      I4 => \max_out_OBUF[3]_inst_i_12_n_0\,
      O => \max_out_OBUF[2]_inst_i_3_n_0\
    );
\max_out_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[0][0]\,
      I1 => \D_wire_reg_n_0_[1][0]\,
      I2 => \D_wire_reg_n_0_[0][1]\,
      I3 => \D_wire_reg_n_0_[1][1]\,
      I4 => \D_wire_reg_n_0_[0][2]\,
      I5 => \D_wire_reg_n_0_[1][2]\,
      O => \max_out_OBUF[2]_inst_i_4_n_0\
    );
\max_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => max_out_OBUF(3),
      O => max_out(3)
    );
\max_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][3]\,
      I1 => max_out114_out,
      I2 => \D_wire_reg_n_0_[2][3]\,
      I3 => max_out112_out,
      I4 => \max_out_OBUF[3]_inst_i_4_n_0\,
      O => max_out_OBUF(3)
    );
\max_out_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[0][0]\,
      I1 => \D_wire_reg_n_0_[2][0]\,
      I2 => \D_wire_reg_n_0_[0][1]\,
      I3 => \D_wire_reg_n_0_[2][1]\,
      I4 => \D_wire_reg_n_0_[0][2]\,
      I5 => \D_wire_reg_n_0_[2][2]\,
      O => \max_out_OBUF[3]_inst_i_10_n_0\
    );
\max_out_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][0]\,
      I1 => \D_wire_reg_n_0_[1][0]\,
      I2 => \D_wire_reg_n_0_[3][1]\,
      I3 => \D_wire_reg_n_0_[1][1]\,
      I4 => \D_wire_reg_n_0_[3][2]\,
      I5 => \D_wire_reg_n_0_[1][2]\,
      O => \max_out_OBUF[3]_inst_i_11_n_0\
    );
\max_out_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][0]\,
      I1 => \D_wire_reg_n_0_[1][0]\,
      I2 => \D_wire_reg_n_0_[2][1]\,
      I3 => \D_wire_reg_n_0_[1][1]\,
      I4 => \D_wire_reg_n_0_[2][2]\,
      I5 => \D_wire_reg_n_0_[1][2]\,
      O => \max_out_OBUF[3]_inst_i_12_n_0\
    );
\max_out_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][0]\,
      I1 => \D_wire_reg_n_0_[3][0]\,
      I2 => \D_wire_reg_n_0_[2][1]\,
      I3 => \D_wire_reg_n_0_[3][1]\,
      I4 => \D_wire_reg_n_0_[2][2]\,
      I5 => \D_wire_reg_n_0_[3][2]\,
      O => \max_out_OBUF[3]_inst_i_13_n_0\
    );
\max_out_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][0]\,
      I1 => \D_wire_reg_n_0_[2][0]\,
      I2 => \D_wire_reg_n_0_[3][1]\,
      I3 => \D_wire_reg_n_0_[2][1]\,
      I4 => \D_wire_reg_n_0_[3][2]\,
      I5 => \D_wire_reg_n_0_[2][2]\,
      O => \max_out_OBUF[3]_inst_i_14_n_0\
    );
\max_out_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0000000B200B000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_5_n_0\,
      I1 => \D_wire_reg_n_0_[1][3]\,
      I2 => \D_wire_reg_n_0_[3][3]\,
      I3 => geqOp4_in,
      I4 => \max_out_OBUF[3]_inst_i_7_n_0\,
      I5 => \D_wire_reg_n_0_[0][3]\,
      O => max_out114_out
    );
\max_out_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0000000B200B000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_8_n_0\,
      I1 => \D_wire_reg_n_0_[1][3]\,
      I2 => \D_wire_reg_n_0_[2][3]\,
      I3 => geqOp8_in,
      I4 => \max_out_OBUF[3]_inst_i_10_n_0\,
      I5 => \D_wire_reg_n_0_[0][3]\,
      O => max_out112_out
    );
\max_out_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB000B0B0"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_11_n_0\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => \max_out_OBUF[3]_inst_i_12_n_0\,
      I4 => \D_wire_reg_n_0_[2][3]\,
      I5 => \D_wire_reg_n_0_[0][3]\,
      O => \max_out_OBUF[3]_inst_i_4_n_0\
    );
\max_out_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[1][0]\,
      I1 => \D_wire_reg_n_0_[3][0]\,
      I2 => \D_wire_reg_n_0_[1][1]\,
      I3 => \D_wire_reg_n_0_[3][1]\,
      I4 => \D_wire_reg_n_0_[1][2]\,
      I5 => \D_wire_reg_n_0_[3][2]\,
      O => \max_out_OBUF[3]_inst_i_5_n_0\
    );
\max_out_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_13_n_0\,
      I1 => \D_wire_reg_n_0_[2][3]\,
      I2 => \D_wire_reg_n_0_[3][3]\,
      O => geqOp4_in
    );
\max_out_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[0][0]\,
      I1 => \D_wire_reg_n_0_[3][0]\,
      I2 => \D_wire_reg_n_0_[0][1]\,
      I3 => \D_wire_reg_n_0_[3][1]\,
      I4 => \D_wire_reg_n_0_[0][2]\,
      I5 => \D_wire_reg_n_0_[3][2]\,
      O => \max_out_OBUF[3]_inst_i_7_n_0\
    );
\max_out_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[1][0]\,
      I1 => \D_wire_reg_n_0_[2][0]\,
      I2 => \D_wire_reg_n_0_[1][1]\,
      I3 => \D_wire_reg_n_0_[2][1]\,
      I4 => \D_wire_reg_n_0_[1][2]\,
      I5 => \D_wire_reg_n_0_[2][2]\,
      O => \max_out_OBUF[3]_inst_i_8_n_0\
    );
\max_out_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_14_n_0\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[2][3]\,
      O => geqOp8_in
    );
\min_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => min_out_OBUF(0),
      O => min_out(0)
    );
\min_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][0]\,
      I1 => min_out19_out,
      I2 => \D_wire_reg_n_0_[2][0]\,
      I3 => min_out15_out,
      I4 => \min_out_OBUF[0]_inst_i_2_n_0\,
      O => min_out_OBUF(0)
    );
\min_out_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4DFFFFB2000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_5_n_0\,
      I1 => \D_wire_reg_n_0_[1][3]\,
      I2 => \D_wire_reg_n_0_[3][3]\,
      I3 => \D_wire_reg_n_0_[1][0]\,
      I4 => \min_out_OBUF[2]_inst_i_3_n_0\,
      I5 => \D_wire_reg_n_0_[0][0]\,
      O => \min_out_OBUF[0]_inst_i_2_n_0\
    );
\min_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => min_out_OBUF(1),
      O => min_out(1)
    );
\min_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][1]\,
      I1 => min_out19_out,
      I2 => \D_wire_reg_n_0_[2][1]\,
      I3 => min_out15_out,
      I4 => \min_out_OBUF[1]_inst_i_2_n_0\,
      O => min_out_OBUF(1)
    );
\min_out_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4DFFFFB2000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_5_n_0\,
      I1 => \D_wire_reg_n_0_[1][3]\,
      I2 => \D_wire_reg_n_0_[3][3]\,
      I3 => \D_wire_reg_n_0_[1][1]\,
      I4 => \min_out_OBUF[2]_inst_i_3_n_0\,
      I5 => \D_wire_reg_n_0_[0][1]\,
      O => \min_out_OBUF[1]_inst_i_2_n_0\
    );
\min_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => min_out_OBUF(2),
      O => min_out(2)
    );
\min_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][2]\,
      I1 => min_out19_out,
      I2 => \D_wire_reg_n_0_[2][2]\,
      I3 => min_out15_out,
      I4 => \min_out_OBUF[2]_inst_i_2_n_0\,
      O => min_out_OBUF(2)
    );
\min_out_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4DFFFFB2000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_5_n_0\,
      I1 => \D_wire_reg_n_0_[1][3]\,
      I2 => \D_wire_reg_n_0_[3][3]\,
      I3 => \D_wire_reg_n_0_[1][2]\,
      I4 => \min_out_OBUF[2]_inst_i_3_n_0\,
      I5 => \D_wire_reg_n_0_[0][2]\,
      O => \min_out_OBUF[2]_inst_i_2_n_0\
    );
\min_out_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80EE00E0"
    )
        port map (
      I0 => \D_wire_reg_n_0_[0][3]\,
      I1 => \min_out_OBUF[2]_inst_i_4_n_0\,
      I2 => \D_wire_reg_n_0_[2][3]\,
      I3 => \D_wire_reg_n_0_[1][3]\,
      I4 => \max_out_OBUF[3]_inst_i_8_n_0\,
      O => \min_out_OBUF[2]_inst_i_3_n_0\
    );
\min_out_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[1][0]\,
      I1 => \D_wire_reg_n_0_[0][0]\,
      I2 => \D_wire_reg_n_0_[1][1]\,
      I3 => \D_wire_reg_n_0_[0][1]\,
      I4 => \D_wire_reg_n_0_[1][2]\,
      I5 => \D_wire_reg_n_0_[0][2]\,
      O => \min_out_OBUF[2]_inst_i_4_n_0\
    );
\min_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => min_out_OBUF(3),
      O => min_out(3)
    );
\min_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][3]\,
      I1 => min_out19_out,
      I2 => \D_wire_reg_n_0_[2][3]\,
      I3 => min_out15_out,
      I4 => \min_out_OBUF[3]_inst_i_4_n_0\,
      O => min_out_OBUF(3)
    );
\min_out_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B200320032000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_11_n_0\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => geqOp8_in,
      I4 => \min_out_OBUF[3]_inst_i_5_n_0\,
      I5 => \D_wire_reg_n_0_[0][3]\,
      O => min_out19_out
    );
\min_out_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B200320032000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_12_n_0\,
      I1 => \D_wire_reg_n_0_[2][3]\,
      I2 => \D_wire_reg_n_0_[1][3]\,
      I3 => geqOp4_in,
      I4 => \min_out_OBUF[3]_inst_i_6_n_0\,
      I5 => \D_wire_reg_n_0_[0][3]\,
      O => min_out15_out
    );
\min_out_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDCDFF00000000"
    )
        port map (
      I0 => \max_out_OBUF[3]_inst_i_5_n_0\,
      I1 => \D_wire_reg_n_0_[1][3]\,
      I2 => \D_wire_reg_n_0_[3][3]\,
      I3 => \max_out_OBUF[3]_inst_i_8_n_0\,
      I4 => \D_wire_reg_n_0_[2][3]\,
      I5 => \D_wire_reg_n_0_[0][3]\,
      O => \min_out_OBUF[3]_inst_i_4_n_0\
    );
\min_out_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[3][0]\,
      I1 => \D_wire_reg_n_0_[0][0]\,
      I2 => \D_wire_reg_n_0_[3][1]\,
      I3 => \D_wire_reg_n_0_[0][1]\,
      I4 => \D_wire_reg_n_0_[3][2]\,
      I5 => \D_wire_reg_n_0_[0][2]\,
      O => \min_out_OBUF[3]_inst_i_5_n_0\
    );
\min_out_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][0]\,
      I1 => \D_wire_reg_n_0_[0][0]\,
      I2 => \D_wire_reg_n_0_[2][1]\,
      I3 => \D_wire_reg_n_0_[0][1]\,
      I4 => \D_wire_reg_n_0_[2][2]\,
      I5 => \D_wire_reg_n_0_[0][2]\,
      O => \min_out_OBUF[3]_inst_i_6_n_0\
    );
\reg_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => reg_out_OBUF(0),
      O => reg_out(0)
    );
\reg_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][0]\,
      I1 => \D_wire_reg_n_0_[3][0]\,
      I2 => \D_wire_reg_n_0_[0][0]\,
      I3 => sel_IBUF(1),
      I4 => sel_IBUF(0),
      I5 => \D_wire_reg_n_0_[1][0]\,
      O => reg_out_OBUF(0)
    );
\reg_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => reg_out_OBUF(1),
      O => reg_out(1)
    );
\reg_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][1]\,
      I1 => \D_wire_reg_n_0_[3][1]\,
      I2 => \D_wire_reg_n_0_[0][1]\,
      I3 => sel_IBUF(1),
      I4 => sel_IBUF(0),
      I5 => \D_wire_reg_n_0_[1][1]\,
      O => reg_out_OBUF(1)
    );
\reg_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => reg_out_OBUF(2),
      O => reg_out(2)
    );
\reg_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][2]\,
      I1 => \D_wire_reg_n_0_[3][2]\,
      I2 => \D_wire_reg_n_0_[0][2]\,
      I3 => sel_IBUF(1),
      I4 => sel_IBUF(0),
      I5 => \D_wire_reg_n_0_[1][2]\,
      O => reg_out_OBUF(2)
    );
\reg_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => reg_out_OBUF(3),
      O => reg_out(3)
    );
\reg_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \D_wire_reg_n_0_[2][3]\,
      I1 => \D_wire_reg_n_0_[3][3]\,
      I2 => \D_wire_reg_n_0_[0][3]\,
      I3 => sel_IBUF(1),
      I4 => sel_IBUF(0),
      I5 => \D_wire_reg_n_0_[1][3]\,
      O => reg_out_OBUF(3)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\sel_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sel(0),
      O => sel_IBUF(0)
    );
\sel_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sel(1),
      O => sel_IBUF(1)
    );
end STRUCTURE;
