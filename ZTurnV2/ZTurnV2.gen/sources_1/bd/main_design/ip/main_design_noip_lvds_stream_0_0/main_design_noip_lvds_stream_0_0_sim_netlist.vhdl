-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Aug  1 13:37:39 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_noip_lvds_stream_0_0/main_design_noip_lvds_stream_0_0_sim_netlist.vhdl
-- Design      : main_design_noip_lvds_stream_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS is
  port (
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS : entity is "noip_lvds_stream_master_stream_v1_0_M00_AXIS";
end main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS;

architecture STRUCTURE of main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS is
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \stream_data_out_reg[31]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \stream_data_out_reg[31]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \stream_data_out_reg[31]\ : label is "VCC:GE GND:CLR";
begin
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \^m00_axis_tdata\(0),
      Q => m00_axis_tlast,
      R => '0'
    );
\stream_data_out_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => m00_axis_aresetn,
      G => m00_axis_aresetn,
      GE => '1',
      Q => \^m00_axis_tdata\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS is
  port (
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS : entity is "noip_lvds_stream_slave_stream_v1_0_S00_AXIS";
end main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS;

architecture STRUCTURE of main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^s00_axis_tready\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair0";
begin
  s00_axis_tready <= \^s00_axis_tready\;
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^s00_axis_tready\,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^s00_axis_tready\,
      R => '0'
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done,
      I1 => s00_axis_tvalid,
      I2 => \^s00_axis_tready\,
      I3 => s00_axis_tlast,
      I4 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_0_noip_lvds_stream is
  port (
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    bitslip : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    lvds_clk_div : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    lvds_deserialized : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_design_noip_lvds_stream_0_0_noip_lvds_stream : entity is "noip_lvds_stream";
end main_design_noip_lvds_stream_0_0_noip_lvds_stream;

architecture STRUCTURE of main_design_noip_lvds_stream_0_0_noip_lvds_stream is
  signal \FSM_onehot_DState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_DState_reg_n_0_[8]\ : STD_LOGIC;
  signal \bitslip[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitslip[0]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitslip[1]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[1]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_10_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_11_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_12_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_13_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_14_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_15_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_4_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_5_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_6_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_7_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_8_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_9_n_0\ : STD_LOGIC;
  signal findbitslip1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_DState[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_9\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[0]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[1]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[2]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[3]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[4]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[5]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[6]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[7]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_DState_reg[8]\ : label is "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000";
  attribute SOFT_HLUTNM of \bitslip[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitslip[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bitslip[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitslip[3]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitslip[3]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bitslip[3]_i_12\ : label is "soft_lutpair4";
begin
\FSM_onehot_DState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[0]\,
      I1 => \FSM_onehot_DState_reg_n_0_[8]\,
      O => \FSM_onehot_DState[1]_i_1_n_0\
    );
\FSM_onehot_DState[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[4]\,
      I1 => \FSM_onehot_DState_reg_n_0_[7]\,
      O => \FSM_onehot_DState[5]_i_1_n_0\
    );
\FSM_onehot_DState[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => \FSM_onehot_DState[8]_i_5_n_0\,
      O => \FSM_onehot_DState[7]_i_1_n_0\
    );
\FSM_onehot_DState[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_3_n_0\,
      I1 => \FSM_onehot_DState[8]_i_4_n_0\,
      I2 => \FSM_onehot_DState[8]_i_5_n_0\,
      I3 => \FSM_onehot_DState_reg_n_0_[3]\,
      I4 => \FSM_onehot_DState[8]_i_6_n_0\,
      I5 => \FSM_onehot_DState[8]_i_7_n_0\,
      O => \FSM_onehot_DState[8]_i_1_n_0\
    );
\FSM_onehot_DState[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => lvds_deserialized(3),
      I1 => lvds_deserialized(2),
      I2 => lvds_deserialized(1),
      O => \FSM_onehot_DState[8]_i_10_n_0\
    );
\FSM_onehot_DState[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[7]\,
      I1 => \FSM_onehot_DState_reg_n_0_[1]\,
      I2 => lvds_deserialized(7),
      I3 => lvds_deserialized(6),
      O => \FSM_onehot_DState[8]_i_11_n_0\
    );
\FSM_onehot_DState[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => lvds_deserialized(7),
      I1 => \FSM_onehot_DState_reg_n_0_[4]\,
      I2 => lvds_deserialized(6),
      I3 => lvds_deserialized(0),
      O => \FSM_onehot_DState[8]_i_12_n_0\
    );
\FSM_onehot_DState[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => lvds_deserialized(0),
      I1 => lvds_deserialized(3),
      I2 => lvds_deserialized(2),
      I3 => lvds_deserialized(1),
      I4 => lvds_deserialized(7),
      I5 => lvds_deserialized(4),
      O => \FSM_onehot_DState[8]_i_13_n_0\
    );
\FSM_onehot_DState[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_5_n_0\,
      I1 => \FSM_onehot_DState_reg_n_0_[6]\,
      O => \FSM_onehot_DState[8]_i_2_n_0\
    );
\FSM_onehot_DState[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_8_n_0\,
      I1 => lvds_deserialized(0),
      I2 => lvds_deserialized(6),
      I3 => lvds_deserialized(7),
      I4 => lvds_deserialized(4),
      I5 => lvds_deserialized(5),
      O => \FSM_onehot_DState[8]_i_3_n_0\
    );
\FSM_onehot_DState[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_9_n_0\,
      I1 => \bitslip[3]_i_10_n_0\,
      I2 => lvds_deserialized(5),
      I3 => lvds_deserialized(6),
      I4 => \FSM_onehot_DState_reg_n_0_[0]\,
      I5 => \FSM_onehot_DState_reg_n_0_[5]\,
      O => \FSM_onehot_DState[8]_i_4_n_0\
    );
\FSM_onehot_DState[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => lvds_deserialized(4),
      I1 => lvds_deserialized(7),
      I2 => \FSM_onehot_DState[8]_i_10_n_0\,
      I3 => lvds_deserialized(0),
      I4 => lvds_deserialized(5),
      I5 => lvds_deserialized(6),
      O => \FSM_onehot_DState[8]_i_5_n_0\
    );
\FSM_onehot_DState[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000444400000040"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(4),
      I2 => \FSM_onehot_DState[8]_i_11_n_0\,
      I3 => lvds_deserialized(0),
      I4 => \FSM_onehot_DState[8]_i_10_n_0\,
      I5 => \FSM_onehot_DState[8]_i_12_n_0\,
      O => \FSM_onehot_DState[8]_i_6_n_0\
    );
\FSM_onehot_DState[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_13_n_0\,
      I1 => lvds_deserialized(5),
      I2 => \FSM_onehot_DState_reg_n_0_[6]\,
      I3 => \FSM_onehot_DState_reg_n_0_[8]\,
      O => \FSM_onehot_DState[8]_i_7_n_0\
    );
\FSM_onehot_DState[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => lvds_deserialized(2),
      I2 => lvds_deserialized(3),
      I3 => \FSM_onehot_DState_reg_n_0_[2]\,
      O => \FSM_onehot_DState[8]_i_8_n_0\
    );
\FSM_onehot_DState[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => lvds_deserialized(7),
      I1 => lvds_deserialized(0),
      I2 => lvds_deserialized(4),
      I3 => lvds_deserialized(1),
      O => \FSM_onehot_DState[8]_i_9_n_0\
    );
\FSM_onehot_DState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      D => '0',
      PRE => \bitslip[3]_i_3_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[0]\
    );
\FSM_onehot_DState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState[1]_i_1_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[1]\
    );
\FSM_onehot_DState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState_reg_n_0_[1]\,
      Q => \FSM_onehot_DState_reg_n_0_[2]\
    );
\FSM_onehot_DState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState_reg_n_0_[2]\,
      Q => \FSM_onehot_DState_reg_n_0_[3]\
    );
\FSM_onehot_DState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState_reg_n_0_[3]\,
      Q => \FSM_onehot_DState_reg_n_0_[4]\
    );
\FSM_onehot_DState_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState[5]_i_1_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[5]\
    );
\FSM_onehot_DState_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState_reg_n_0_[5]\,
      Q => \FSM_onehot_DState_reg_n_0_[6]\
    );
\FSM_onehot_DState_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState[7]_i_1_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[7]\
    );
\FSM_onehot_DState_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \FSM_onehot_DState[8]_i_2_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[8]\
    );
\bitslip[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD999FFFF"
    )
        port map (
      I0 => lvds_deserialized(0),
      I1 => lvds_deserialized(3),
      I2 => lvds_deserialized(5),
      I3 => lvds_deserialized(2),
      I4 => lvds_deserialized(1),
      I5 => \bitslip[0]_i_2_n_0\,
      O => \bitslip[0]_i_1_n_0\
    );
\bitslip[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6F7FF7FFFFFF"
    )
        port map (
      I0 => lvds_deserialized(4),
      I1 => lvds_deserialized(3),
      I2 => lvds_deserialized(2),
      I3 => lvds_deserialized(5),
      I4 => lvds_deserialized(6),
      I5 => lvds_deserialized(7),
      O => \bitslip[0]_i_2_n_0\
    );
\bitslip[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFEF"
    )
        port map (
      I0 => \bitslip[1]_i_2_n_0\,
      I1 => \bitslip[1]_i_3_n_0\,
      I2 => lvds_deserialized(2),
      I3 => lvds_deserialized(1),
      I4 => lvds_deserialized(3),
      O => \bitslip[1]_i_1_n_0\
    );
\bitslip[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF5FEF55FFFF"
    )
        port map (
      I0 => lvds_deserialized(4),
      I1 => lvds_deserialized(7),
      I2 => lvds_deserialized(6),
      I3 => lvds_deserialized(0),
      I4 => lvds_deserialized(3),
      I5 => lvds_deserialized(5),
      O => \bitslip[1]_i_2_n_0\
    );
\bitslip[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => lvds_deserialized(6),
      I1 => lvds_deserialized(3),
      I2 => lvds_deserialized(7),
      I3 => lvds_deserialized(0),
      O => \bitslip[1]_i_3_n_0\
    );
\bitslip[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD3FF"
    )
        port map (
      I0 => lvds_deserialized(3),
      I1 => lvds_deserialized(2),
      I2 => lvds_deserialized(1),
      I3 => lvds_deserialized(4),
      I4 => \bitslip[2]_i_2_n_0\,
      O => \bitslip[2]_i_1_n_0\
    );
\bitslip[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF3FFE7FFFFFF"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => lvds_deserialized(6),
      I2 => lvds_deserialized(0),
      I3 => lvds_deserialized(5),
      I4 => lvds_deserialized(3),
      I5 => lvds_deserialized(7),
      O => \bitslip[2]_i_2_n_0\
    );
\bitslip[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bitslip[3]_i_4_n_0\,
      I1 => \FSM_onehot_DState_reg_n_0_[0]\,
      O => \bitslip[3]_i_1_n_0\
    );
\bitslip[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => lvds_deserialized(2),
      I1 => lvds_deserialized(3),
      O => \bitslip[3]_i_10_n_0\
    );
\bitslip[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(6),
      O => \bitslip[3]_i_11_n_0\
    );
\bitslip[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => lvds_deserialized(7),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(6),
      O => \bitslip[3]_i_12_n_0\
    );
\bitslip[3]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(5),
      I4 => lvds_deserialized(2),
      O => \bitslip[3]_i_13_n_0\
    );
\bitslip[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => lvds_deserialized(0),
      I1 => lvds_deserialized(6),
      O => \bitslip[3]_i_14_n_0\
    );
\bitslip[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => lvds_deserialized(4),
      I1 => lvds_deserialized(7),
      O => \bitslip[3]_i_15_n_0\
    );
\bitslip[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bitslip[3]_i_5_n_0\,
      I1 => \bitslip[3]_i_6_n_0\,
      I2 => \bitslip[3]_i_7_n_0\,
      I3 => \bitslip[3]_i_8_n_0\,
      I4 => \bitslip[3]_i_9_n_0\,
      O => findbitslip1
    );
\bitslip[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => \bitslip[3]_i_3_n_0\
    );
\bitslip[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(0),
      I3 => lvds_deserialized(7),
      I4 => \bitslip[3]_i_10_n_0\,
      I5 => \bitslip[3]_i_11_n_0\,
      O => \bitslip[3]_i_4_n_0\
    );
\bitslip[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0F03300AF0F3300"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(2),
      I4 => lvds_deserialized(1),
      I5 => lvds_deserialized(0),
      O => \bitslip[3]_i_5_n_0\
    );
\bitslip[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F300F0F0F050F"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(1),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(7),
      I4 => lvds_deserialized(6),
      I5 => lvds_deserialized(4),
      O => \bitslip[3]_i_6_n_0\
    );
\bitslip[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FF00FF80FFFF"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => lvds_deserialized(3),
      I2 => \bitslip[3]_i_12_n_0\,
      I3 => \bitslip[3]_i_13_n_0\,
      I4 => lvds_deserialized(0),
      I5 => lvds_deserialized(4),
      O => \bitslip[3]_i_7_n_0\
    );
\bitslip[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF113310331133"
    )
        port map (
      I0 => lvds_deserialized(3),
      I1 => lvds_deserialized(1),
      I2 => \bitslip[3]_i_14_n_0\,
      I3 => \bitslip[3]_i_15_n_0\,
      I4 => lvds_deserialized(2),
      I5 => \bitslip[1]_i_3_n_0\,
      O => \bitslip[3]_i_8_n_0\
    );
\bitslip[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BF330F0F3F3F"
    )
        port map (
      I0 => lvds_deserialized(7),
      I1 => lvds_deserialized(6),
      I2 => lvds_deserialized(5),
      I3 => lvds_deserialized(3),
      I4 => lvds_deserialized(2),
      I5 => lvds_deserialized(1),
      O => \bitslip[3]_i_9_n_0\
    );
\bitslip_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \bitslip[3]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \bitslip[0]_i_1_n_0\,
      Q => bitslip(0)
    );
\bitslip_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \bitslip[3]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \bitslip[1]_i_1_n_0\,
      Q => bitslip(1)
    );
\bitslip_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \bitslip[3]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \bitslip[2]_i_1_n_0\,
      Q => bitslip(2)
    );
\bitslip_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \bitslip[3]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => findbitslip1,
      Q => bitslip(3)
    );
noip_lvds_stream_master_stream_v1_0_M00_AXIS_inst: entity work.main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS
     port map (
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(0) => m00_axis_tdata(0),
      m00_axis_tlast => m00_axis_tlast
    );
noip_lvds_stream_slave_stream_v1_0_S00_AXIS_inst: entity work.main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS
     port map (
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_0 is
  port (
    lvds_clk_div : in STD_LOGIC;
    lvds_deserialized : in STD_LOGIC_VECTOR ( 39 downto 0 );
    trigger0 : out STD_LOGIC;
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
    bitslip : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_design_noip_lvds_stream_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_noip_lvds_stream_0_0 : entity is "main_design_noip_lvds_stream_0_0,noip_lvds_stream,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_design_noip_lvds_stream_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of main_design_noip_lvds_stream_0_0 : entity is "noip_lvds_stream,Vivado 2024.1";
end main_design_noip_lvds_stream_0_0;

architecture STRUCTURE of main_design_noip_lvds_stream_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 30 to 30 );
  signal \^m00_axis_tlast\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 2e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 2e+08, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 2e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 2e+08, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  m00_axis_tdata(31) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(30) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(29) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(28) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(27) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(26) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(25) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(24) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(23) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(22) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(21) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(20) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(19) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(18) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(17) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(16) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(15) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(14) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(13) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(12) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(11) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(10) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(9) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(8) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(7) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(6) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(5) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(4) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(3) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(2) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(1) <= \^m00_axis_tdata\(30);
  m00_axis_tdata(0) <= \^m00_axis_tdata\(30);
  m00_axis_tlast <= \^m00_axis_tlast\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  m00_axis_tvalid <= \^m00_axis_tlast\;
  trigger0 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.main_design_noip_lvds_stream_0_0_noip_lvds_stream
     port map (
      bitslip(3 downto 0) => bitslip(3 downto 0),
      lvds_clk_div => lvds_clk_div,
      lvds_deserialized(7 downto 0) => lvds_deserialized(7 downto 0),
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(0) => \^m00_axis_tdata\(30),
      m00_axis_tlast => \^m00_axis_tlast\,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
