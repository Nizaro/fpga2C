-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Aug  6 09:42:42 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top main_design_noip_lvds_stream_0_1 -prefix
--               main_design_noip_lvds_stream_0_1_ main_design_noip_lvds_stream_0_0_sim_netlist.vhdl
-- Design      : main_design_noip_lvds_stream_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_1_noip_lvds_stream_slave_stream_v1_0_S00_AXIS is
  port (
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
end main_design_noip_lvds_stream_0_1_noip_lvds_stream_slave_stream_v1_0_S00_AXIS;

architecture STRUCTURE of main_design_noip_lvds_stream_0_1_noip_lvds_stream_slave_stream_v1_0_S00_AXIS is
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
entity main_design_noip_lvds_stream_0_1_noip_lvds_stream is
  port (
    bitslip : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_din : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    fifo_wr_en : out STD_LOGIC;
    lvds_clk_div : in STD_LOGIC;
    lvds_deserialized : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC
  );
end main_design_noip_lvds_stream_0_1_noip_lvds_stream;

architecture STRUCTURE of main_design_noip_lvds_stream_0_1_noip_lvds_stream is
  signal \FSM_onehot_DState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_DState[8]_i_8_n_0\ : STD_LOGIC;
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
  signal \bitslip[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_10_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_4_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_5_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_6_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_7_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_8_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[10]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[11]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[12]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[13]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[14]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[15]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[16]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[17]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[18]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[19]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[20]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[21]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[22]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[23]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[24]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[25]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[26]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[27]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[28]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[29]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[30]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[31]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[32]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[33]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[34]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[35]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[36]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[37]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[38]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[39]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[40]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[41]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[42]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[43]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[44]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[45]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[46]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[47]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[48]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[49]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[50]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[51]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[52]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[53]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[54]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[55]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[56]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[57]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[58]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[59]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[60]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[61]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[62]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[63]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[63]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[63]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[8]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[9]_i_1_n_0\ : STD_LOGIC;
  signal \^fifo_wr_en\ : STD_LOGIC;
  signal fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal findbitslip1 : STD_LOGIC;
  signal in19 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \kernel[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \kernel[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \kernel[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[6]_0\ : STD_LOGIC;
  signal \kernel[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7]_1\ : STD_LOGIC;
  signal \nb_kernel[0]_i_1_n_0\ : STD_LOGIC;
  signal \nb_kernel[0]_i_2_n_0\ : STD_LOGIC;
  signal \nb_kernel_reg_n_0_[0]\ : STD_LOGIC;
  signal pixel_polarity : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pixel_polarity[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_DState[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_6\ : label is "soft_lutpair1";
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
  attribute SOFT_HLUTNM of \bitslip[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitslip[3]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitslip[3]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_din[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \fifo_din[10]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \fifo_din[11]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \fifo_din[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \fifo_din[13]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \fifo_din[14]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \fifo_din[15]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \fifo_din[16]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \fifo_din[17]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \fifo_din[18]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \fifo_din[19]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \fifo_din[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \fifo_din[20]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \fifo_din[21]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \fifo_din[22]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \fifo_din[23]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \fifo_din[24]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \fifo_din[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \fifo_din[26]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \fifo_din[27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \fifo_din[28]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \fifo_din[29]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \fifo_din[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \fifo_din[30]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \fifo_din[31]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \fifo_din[32]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \fifo_din[33]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \fifo_din[34]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \fifo_din[35]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \fifo_din[36]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_din[37]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_din[38]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo_din[39]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo_din[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \fifo_din[40]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \fifo_din[41]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \fifo_din[42]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fifo_din[43]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fifo_din[44]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo_din[45]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo_din[46]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fifo_din[47]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fifo_din[48]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_din[49]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_din[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \fifo_din[50]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \fifo_din[51]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \fifo_din[52]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \fifo_din[53]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \fifo_din[54]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fifo_din[55]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fifo_din[56]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \fifo_din[57]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \fifo_din[58]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo_din[59]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo_din[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \fifo_din[60]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \fifo_din[61]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \fifo_din[62]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fifo_din[63]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fifo_din[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \fifo_din[8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \fifo_din[9]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \kernel[0][0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \kernel[0][1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \kernel[0][2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \kernel[0][3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \kernel[0][4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \kernel[0][5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \kernel[0][6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \kernel[0][7]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \kernel[1][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \kernel[1][1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \kernel[1][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \kernel[1][3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \kernel[1][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \kernel[1][5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \kernel[1][6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \kernel[1][7]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \kernel[2][0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \kernel[2][1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \kernel[2][2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \kernel[2][3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kernel[2][4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kernel[2][5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kernel[2][6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kernel[2][7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \kernel[3][0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kernel[3][1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kernel[3][2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \kernel[3][3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kernel[3][4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kernel[3][5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \kernel[3][6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kernel[3][7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \kernel[4][0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \kernel[4][1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \kernel[4][2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \kernel[4][3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kernel[4][4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kernel[4][5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kernel[4][6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kernel[4][7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \kernel[5][0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kernel[5][1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kernel[5][2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \kernel[5][3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kernel[5][4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kernel[5][5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \kernel[5][6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kernel[5][7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \kernel[6][0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \kernel[6][1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \kernel[6][2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \kernel[6][3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \kernel[6][4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \kernel[6][5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \kernel[6][6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \kernel[6][7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \kernel[7][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \kernel[7][1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \kernel[7][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \kernel[7][3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \kernel[7][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \kernel[7][5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \kernel[7][6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \kernel[7][7]_i_1\ : label is "soft_lutpair34";
begin
  fifo_wr_en <= \^fifo_wr_en\;
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
\FSM_onehot_DState[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => lvds_deserialized(6),
      I1 => \FSM_onehot_DState_reg_n_0_[6]\,
      I2 => \fifo_din[63]_i_3_n_0\,
      O => \FSM_onehot_DState[7]_i_1_n_0\
    );
\FSM_onehot_DState[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBA"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_3_n_0\,
      I1 => \FSM_onehot_DState[8]_i_4_n_0\,
      I2 => \FSM_onehot_DState_reg_n_0_[0]\,
      I3 => \FSM_onehot_DState[8]_i_5_n_0\,
      I4 => \FSM_onehot_DState_reg_n_0_[8]\,
      I5 => \FSM_onehot_DState_reg_n_0_[5]\,
      O => \FSM_onehot_DState[8]_i_1_n_0\
    );
\FSM_onehot_DState[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => lvds_deserialized(6),
      I1 => \FSM_onehot_DState_reg_n_0_[6]\,
      I2 => \fifo_din[63]_i_3_n_0\,
      O => \FSM_onehot_DState[8]_i_2_n_0\
    );
\FSM_onehot_DState[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000300020"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => \FSM_onehot_DState[8]_i_6_n_0\,
      I2 => lvds_deserialized(5),
      I3 => lvds_deserialized(4),
      I4 => \FSM_onehot_DState_reg_n_0_[3]\,
      I5 => lvds_deserialized(6),
      O => \FSM_onehot_DState[8]_i_3_n_0\
    );
\FSM_onehot_DState[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => lvds_deserialized(7),
      I2 => \bitslip[3]_i_5_n_0\,
      I3 => lvds_deserialized(6),
      I4 => lvds_deserialized(2),
      I5 => lvds_deserialized(3),
      O => \FSM_onehot_DState[8]_i_4_n_0\
    );
\FSM_onehot_DState[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444444444F4"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_6_n_0\,
      I1 => \FSM_onehot_DState[8]_i_7_n_0\,
      I2 => \FSM_onehot_DState[8]_i_8_n_0\,
      I3 => lvds_deserialized(6),
      I4 => lvds_deserialized(5),
      I5 => lvds_deserialized(4),
      O => \FSM_onehot_DState[8]_i_5_n_0\
    );
\FSM_onehot_DState[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => lvds_deserialized(7),
      I1 => lvds_deserialized(2),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(1),
      I4 => lvds_deserialized(0),
      O => \FSM_onehot_DState[8]_i_6_n_0\
    );
\FSM_onehot_DState[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444000004440"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(4),
      I2 => \FSM_onehot_DState_reg_n_0_[7]\,
      I3 => \FSM_onehot_DState_reg_n_0_[1]\,
      I4 => lvds_deserialized(6),
      I5 => \FSM_onehot_DState_reg_n_0_[4]\,
      O => \FSM_onehot_DState[8]_i_7_n_0\
    );
\FSM_onehot_DState[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => lvds_deserialized(2),
      I1 => lvds_deserialized(1),
      I2 => \FSM_onehot_DState_reg_n_0_[2]\,
      I3 => lvds_deserialized(0),
      I4 => lvds_deserialized(7),
      I5 => lvds_deserialized(3),
      O => \FSM_onehot_DState[8]_i_8_n_0\
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
      INIT => X"FDFFFDFFFFDFFFFF"
    )
        port map (
      I0 => lvds_deserialized(1),
      I1 => \bitslip[0]_i_2_n_0\,
      I2 => lvds_deserialized(0),
      I3 => lvds_deserialized(4),
      I4 => lvds_deserialized(5),
      I5 => lvds_deserialized(3),
      O => \bitslip[0]_i_1_n_0\
    );
\bitslip[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB3DFFF"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(7),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(6),
      I4 => lvds_deserialized(2),
      O => \bitslip[0]_i_2_n_0\
    );
\bitslip[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEBFFFFBFFFBF"
    )
        port map (
      I0 => \bitslip[1]_i_2_n_0\,
      I1 => lvds_deserialized(6),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(4),
      I4 => lvds_deserialized(0),
      I5 => lvds_deserialized(7),
      O => \bitslip[1]_i_1_n_0\
    );
\bitslip[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1FF1FFFFFFF"
    )
        port map (
      I0 => lvds_deserialized(0),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(1),
      I3 => lvds_deserialized(2),
      I4 => lvds_deserialized(3),
      I5 => lvds_deserialized(5),
      O => \bitslip[1]_i_2_n_0\
    );
\bitslip[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF91FF"
    )
        port map (
      I0 => lvds_deserialized(3),
      I1 => lvds_deserialized(6),
      I2 => lvds_deserialized(2),
      I3 => lvds_deserialized(4),
      I4 => \bitslip[2]_i_2_n_0\,
      I5 => \bitslip[2]_i_3_n_0\,
      O => \bitslip[2]_i_1_n_0\
    );
\bitslip[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F8F8F"
    )
        port map (
      I0 => lvds_deserialized(3),
      I1 => lvds_deserialized(7),
      I2 => lvds_deserialized(5),
      I3 => lvds_deserialized(2),
      I4 => lvds_deserialized(1),
      O => \bitslip[2]_i_2_n_0\
    );
\bitslip[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0F7FF0FFFF7FF"
    )
        port map (
      I0 => lvds_deserialized(6),
      I1 => lvds_deserialized(1),
      I2 => lvds_deserialized(0),
      I3 => lvds_deserialized(3),
      I4 => lvds_deserialized(2),
      I5 => lvds_deserialized(7),
      O => \bitslip[2]_i_3_n_0\
    );
\bitslip[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000000"
    )
        port map (
      I0 => \bitslip[3]_i_4_n_0\,
      I1 => lvds_deserialized(6),
      I2 => \bitslip[3]_i_5_n_0\,
      I3 => lvds_deserialized(7),
      I4 => lvds_deserialized(1),
      I5 => \FSM_onehot_DState_reg_n_0_[0]\,
      O => \bitslip[3]_i_1_n_0\
    );
\bitslip[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8D5BDFF4FDFBF7F"
    )
        port map (
      I0 => lvds_deserialized(7),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(1),
      I3 => lvds_deserialized(3),
      I4 => lvds_deserialized(2),
      I5 => lvds_deserialized(5),
      O => \bitslip[3]_i_10_n_0\
    );
\bitslip[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bitslip[3]_i_6_n_0\,
      I1 => \bitslip[3]_i_7_n_0\,
      I2 => \bitslip[3]_i_8_n_0\,
      I3 => \bitslip[3]_i_9_n_0\,
      I4 => \bitslip[3]_i_10_n_0\,
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
\bitslip[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => lvds_deserialized(2),
      I1 => lvds_deserialized(3),
      O => \bitslip[3]_i_4_n_0\
    );
\bitslip[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(0),
      O => \bitslip[3]_i_5_n_0\
    );
\bitslip[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555C0FF5555"
    )
        port map (
      I0 => lvds_deserialized(6),
      I1 => lvds_deserialized(7),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(1),
      I4 => lvds_deserialized(2),
      I5 => lvds_deserialized(4),
      O => \bitslip[3]_i_6_n_0\
    );
\bitslip[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0331"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(6),
      O => \bitslip[3]_i_7_n_0\
    );
\bitslip[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C50500CC"
    )
        port map (
      I0 => lvds_deserialized(5),
      I1 => lvds_deserialized(4),
      I2 => lvds_deserialized(2),
      I3 => lvds_deserialized(6),
      I4 => lvds_deserialized(3),
      O => \bitslip[3]_i_8_n_0\
    );
\bitslip[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80757F"
    )
        port map (
      I0 => lvds_deserialized(4),
      I1 => lvds_deserialized(1),
      I2 => lvds_deserialized(3),
      I3 => lvds_deserialized(2),
      I4 => lvds_deserialized(0),
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
\fifo_din[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(0),
      O => \fifo_din[0]_i_1_n_0\
    );
\fifo_din[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(10),
      O => \fifo_din[10]_i_1_n_0\
    );
\fifo_din[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(11),
      O => \fifo_din[11]_i_1_n_0\
    );
\fifo_din[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(12),
      O => \fifo_din[12]_i_1_n_0\
    );
\fifo_din[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(13),
      O => \fifo_din[13]_i_1_n_0\
    );
\fifo_din[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(14),
      O => \fifo_din[14]_i_1_n_0\
    );
\fifo_din[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(15),
      O => \fifo_din[15]_i_1_n_0\
    );
\fifo_din[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(16),
      O => \fifo_din[16]_i_1_n_0\
    );
\fifo_din[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(17),
      O => \fifo_din[17]_i_1_n_0\
    );
\fifo_din[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(18),
      O => \fifo_din[18]_i_1_n_0\
    );
\fifo_din[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(19),
      O => \fifo_din[19]_i_1_n_0\
    );
\fifo_din[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(1),
      O => \fifo_din[1]_i_1_n_0\
    );
\fifo_din[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(20),
      O => \fifo_din[20]_i_1_n_0\
    );
\fifo_din[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(21),
      O => \fifo_din[21]_i_1_n_0\
    );
\fifo_din[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(22),
      O => \fifo_din[22]_i_1_n_0\
    );
\fifo_din[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(23),
      O => \fifo_din[23]_i_1_n_0\
    );
\fifo_din[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(24),
      O => \fifo_din[24]_i_1_n_0\
    );
\fifo_din[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(25),
      O => \fifo_din[25]_i_1_n_0\
    );
\fifo_din[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(26),
      O => \fifo_din[26]_i_1_n_0\
    );
\fifo_din[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(27),
      O => \fifo_din[27]_i_1_n_0\
    );
\fifo_din[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(28),
      O => \fifo_din[28]_i_1_n_0\
    );
\fifo_din[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(29),
      O => \fifo_din[29]_i_1_n_0\
    );
\fifo_din[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(2),
      O => \fifo_din[2]_i_1_n_0\
    );
\fifo_din[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(30),
      O => \fifo_din[30]_i_1_n_0\
    );
\fifo_din[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(31),
      O => \fifo_din[31]_i_1_n_0\
    );
\fifo_din[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(32),
      O => \fifo_din[32]_i_1_n_0\
    );
\fifo_din[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(33),
      O => \fifo_din[33]_i_1_n_0\
    );
\fifo_din[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(34),
      O => \fifo_din[34]_i_1_n_0\
    );
\fifo_din[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(35),
      O => \fifo_din[35]_i_1_n_0\
    );
\fifo_din[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(36),
      O => \fifo_din[36]_i_1_n_0\
    );
\fifo_din[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(37),
      O => \fifo_din[37]_i_1_n_0\
    );
\fifo_din[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(38),
      O => \fifo_din[38]_i_1_n_0\
    );
\fifo_din[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(39),
      O => \fifo_din[39]_i_1_n_0\
    );
\fifo_din[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(3),
      O => \fifo_din[3]_i_1_n_0\
    );
\fifo_din[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(40),
      O => \fifo_din[40]_i_1_n_0\
    );
\fifo_din[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(41),
      O => \fifo_din[41]_i_1_n_0\
    );
\fifo_din[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(42),
      O => \fifo_din[42]_i_1_n_0\
    );
\fifo_din[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(43),
      O => \fifo_din[43]_i_1_n_0\
    );
\fifo_din[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(44),
      O => \fifo_din[44]_i_1_n_0\
    );
\fifo_din[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(45),
      O => \fifo_din[45]_i_1_n_0\
    );
\fifo_din[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(46),
      O => \fifo_din[46]_i_1_n_0\
    );
\fifo_din[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(47),
      O => \fifo_din[47]_i_1_n_0\
    );
\fifo_din[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(48),
      O => \fifo_din[48]_i_1_n_0\
    );
\fifo_din[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(49),
      O => \fifo_din[49]_i_1_n_0\
    );
\fifo_din[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(4),
      O => \fifo_din[4]_i_1_n_0\
    );
\fifo_din[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(50),
      O => \fifo_din[50]_i_1_n_0\
    );
\fifo_din[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(51),
      O => \fifo_din[51]_i_1_n_0\
    );
\fifo_din[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(52),
      O => \fifo_din[52]_i_1_n_0\
    );
\fifo_din[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(53),
      O => \fifo_din[53]_i_1_n_0\
    );
\fifo_din[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(54),
      O => \fifo_din[54]_i_1_n_0\
    );
\fifo_din[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(55),
      O => \fifo_din[55]_i_1_n_0\
    );
\fifo_din[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(56),
      O => \fifo_din[56]_i_1_n_0\
    );
\fifo_din[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(57),
      O => \fifo_din[57]_i_1_n_0\
    );
\fifo_din[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(58),
      O => \fifo_din[58]_i_1_n_0\
    );
\fifo_din[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(59),
      O => \fifo_din[59]_i_1_n_0\
    );
\fifo_din[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(5),
      O => \fifo_din[5]_i_1_n_0\
    );
\fifo_din[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(60),
      O => \fifo_din[60]_i_1_n_0\
    );
\fifo_din[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(61),
      O => \fifo_din[61]_i_1_n_0\
    );
\fifo_din[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(62),
      O => \fifo_din[62]_i_1_n_0\
    );
\fifo_din[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => pixel_polarity(0),
      I1 => \fifo_din[63]_i_3_n_0\,
      I2 => \FSM_onehot_DState_reg_n_0_[6]\,
      I3 => \FSM_onehot_DState_reg_n_0_[1]\,
      O => \fifo_din[63]_i_1_n_0\
    );
\fifo_din[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(63),
      O => \fifo_din[63]_i_2_n_0\
    );
\fifo_din[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => lvds_deserialized(0),
      I1 => lvds_deserialized(1),
      I2 => \bitslip[3]_i_4_n_0\,
      I3 => lvds_deserialized(7),
      I4 => lvds_deserialized(5),
      I5 => lvds_deserialized(4),
      O => \fifo_din[63]_i_3_n_0\
    );
\fifo_din[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(6),
      O => \fifo_din[6]_i_1_n_0\
    );
\fifo_din[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(7),
      O => \fifo_din[7]_i_1_n_0\
    );
\fifo_din[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(8),
      O => \fifo_din[8]_i_1_n_0\
    );
\fifo_din[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => in19(9),
      O => \fifo_din[9]_i_1_n_0\
    );
\fifo_din_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[0]_i_1_n_0\,
      Q => fifo_din(0)
    );
\fifo_din_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[10]_i_1_n_0\,
      Q => fifo_din(10)
    );
\fifo_din_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[11]_i_1_n_0\,
      Q => fifo_din(11)
    );
\fifo_din_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[12]_i_1_n_0\,
      Q => fifo_din(12)
    );
\fifo_din_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[13]_i_1_n_0\,
      Q => fifo_din(13)
    );
\fifo_din_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[14]_i_1_n_0\,
      Q => fifo_din(14)
    );
\fifo_din_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[15]_i_1_n_0\,
      Q => fifo_din(15)
    );
\fifo_din_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[16]_i_1_n_0\,
      Q => fifo_din(16)
    );
\fifo_din_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[17]_i_1_n_0\,
      Q => fifo_din(17)
    );
\fifo_din_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[18]_i_1_n_0\,
      Q => fifo_din(18)
    );
\fifo_din_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[19]_i_1_n_0\,
      Q => fifo_din(19)
    );
\fifo_din_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[1]_i_1_n_0\,
      Q => fifo_din(1)
    );
\fifo_din_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[20]_i_1_n_0\,
      Q => fifo_din(20)
    );
\fifo_din_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[21]_i_1_n_0\,
      Q => fifo_din(21)
    );
\fifo_din_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[22]_i_1_n_0\,
      Q => fifo_din(22)
    );
\fifo_din_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[23]_i_1_n_0\,
      Q => fifo_din(23)
    );
\fifo_din_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[24]_i_1_n_0\,
      Q => fifo_din(24)
    );
\fifo_din_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[25]_i_1_n_0\,
      Q => fifo_din(25)
    );
\fifo_din_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[26]_i_1_n_0\,
      Q => fifo_din(26)
    );
\fifo_din_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[27]_i_1_n_0\,
      Q => fifo_din(27)
    );
\fifo_din_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[28]_i_1_n_0\,
      Q => fifo_din(28)
    );
\fifo_din_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[29]_i_1_n_0\,
      Q => fifo_din(29)
    );
\fifo_din_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[2]_i_1_n_0\,
      Q => fifo_din(2)
    );
\fifo_din_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[30]_i_1_n_0\,
      Q => fifo_din(30)
    );
\fifo_din_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[31]_i_1_n_0\,
      Q => fifo_din(31)
    );
\fifo_din_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[32]_i_1_n_0\,
      Q => fifo_din(32)
    );
\fifo_din_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[33]_i_1_n_0\,
      Q => fifo_din(33)
    );
\fifo_din_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[34]_i_1_n_0\,
      Q => fifo_din(34)
    );
\fifo_din_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[35]_i_1_n_0\,
      Q => fifo_din(35)
    );
\fifo_din_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[36]_i_1_n_0\,
      Q => fifo_din(36)
    );
\fifo_din_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[37]_i_1_n_0\,
      Q => fifo_din(37)
    );
\fifo_din_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[38]_i_1_n_0\,
      Q => fifo_din(38)
    );
\fifo_din_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[39]_i_1_n_0\,
      Q => fifo_din(39)
    );
\fifo_din_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[3]_i_1_n_0\,
      Q => fifo_din(3)
    );
\fifo_din_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[40]_i_1_n_0\,
      Q => fifo_din(40)
    );
\fifo_din_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[41]_i_1_n_0\,
      Q => fifo_din(41)
    );
\fifo_din_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[42]_i_1_n_0\,
      Q => fifo_din(42)
    );
\fifo_din_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[43]_i_1_n_0\,
      Q => fifo_din(43)
    );
\fifo_din_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[44]_i_1_n_0\,
      Q => fifo_din(44)
    );
\fifo_din_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[45]_i_1_n_0\,
      Q => fifo_din(45)
    );
\fifo_din_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[46]_i_1_n_0\,
      Q => fifo_din(46)
    );
\fifo_din_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[47]_i_1_n_0\,
      Q => fifo_din(47)
    );
\fifo_din_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[48]_i_1_n_0\,
      Q => fifo_din(48)
    );
\fifo_din_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[49]_i_1_n_0\,
      Q => fifo_din(49)
    );
\fifo_din_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[4]_i_1_n_0\,
      Q => fifo_din(4)
    );
\fifo_din_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[50]_i_1_n_0\,
      Q => fifo_din(50)
    );
\fifo_din_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[51]_i_1_n_0\,
      Q => fifo_din(51)
    );
\fifo_din_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[52]_i_1_n_0\,
      Q => fifo_din(52)
    );
\fifo_din_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[53]_i_1_n_0\,
      Q => fifo_din(53)
    );
\fifo_din_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[54]_i_1_n_0\,
      Q => fifo_din(54)
    );
\fifo_din_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[55]_i_1_n_0\,
      Q => fifo_din(55)
    );
\fifo_din_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[56]_i_1_n_0\,
      Q => fifo_din(56)
    );
\fifo_din_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[57]_i_1_n_0\,
      Q => fifo_din(57)
    );
\fifo_din_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[58]_i_1_n_0\,
      Q => fifo_din(58)
    );
\fifo_din_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[59]_i_1_n_0\,
      Q => fifo_din(59)
    );
\fifo_din_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[5]_i_1_n_0\,
      Q => fifo_din(5)
    );
\fifo_din_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[60]_i_1_n_0\,
      Q => fifo_din(60)
    );
\fifo_din_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[61]_i_1_n_0\,
      Q => fifo_din(61)
    );
\fifo_din_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[62]_i_1_n_0\,
      Q => fifo_din(62)
    );
\fifo_din_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[63]_i_2_n_0\,
      Q => fifo_din(63)
    );
\fifo_din_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[6]_i_1_n_0\,
      Q => fifo_din(6)
    );
\fifo_din_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[7]_i_1_n_0\,
      Q => fifo_din(7)
    );
\fifo_din_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[8]_i_1_n_0\,
      Q => fifo_din(8)
    );
\fifo_din_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \fifo_din[9]_i_1_n_0\,
      Q => fifo_din(9)
    );
fifo_wr_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888BF88888880"
    )
        port map (
      I0 => pixel_polarity(0),
      I1 => \FSM_onehot_DState_reg_n_0_[6]\,
      I2 => \fifo_din[63]_i_3_n_0\,
      I3 => \FSM_onehot_DState_reg_n_0_[7]\,
      I4 => \FSM_onehot_DState_reg_n_0_[1]\,
      I5 => \^fifo_wr_en\,
      O => fifo_wr_en_i_1_n_0
    );
fifo_wr_en_reg: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => '1',
      CLR => \bitslip[3]_i_3_n_0\,
      D => fifo_wr_en_i_1_n_0,
      Q => \^fifo_wr_en\
    );
\kernel[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(8),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(32),
      O => \kernel[0][0]_i_1_n_0\
    );
\kernel[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(9),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(33),
      O => \kernel[0][1]_i_1_n_0\
    );
\kernel[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(10),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(34),
      O => \kernel[0][2]_i_1_n_0\
    );
\kernel[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(11),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(35),
      O => \kernel[0][3]_i_1_n_0\
    );
\kernel[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(12),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(36),
      O => \kernel[0][4]_i_1_n_0\
    );
\kernel[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(13),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(37),
      O => \kernel[0][5]_i_1_n_0\
    );
\kernel[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(14),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(38),
      O => \kernel[0][6]_i_1_n_0\
    );
\kernel[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \nb_kernel_reg_n_0_[0]\,
      I1 => pixel_polarity(0),
      I2 => \FSM_onehot_DState_reg_n_0_[6]\,
      I3 => \fifo_din[63]_i_3_n_0\,
      O => \kernel[6]_0\
    );
\kernel[0][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => lvds_deserialized(15),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(39),
      O => \kernel[0][7]_i_2_n_0\
    );
\kernel[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(8),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(32),
      O => \kernel[1][0]_i_1_n_0\
    );
\kernel[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(9),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(33),
      O => \kernel[1][1]_i_1_n_0\
    );
\kernel[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(10),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(34),
      O => \kernel[1][2]_i_1_n_0\
    );
\kernel[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(11),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(35),
      O => \kernel[1][3]_i_1_n_0\
    );
\kernel[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(12),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(36),
      O => \kernel[1][4]_i_1_n_0\
    );
\kernel[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(13),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(37),
      O => \kernel[1][5]_i_1_n_0\
    );
\kernel[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(14),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(38),
      O => \kernel[1][6]_i_1_n_0\
    );
\kernel[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \fifo_din[63]_i_3_n_0\,
      O => \kernel[7]_1\
    );
\kernel[1][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(15),
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => lvds_deserialized(39),
      O => \kernel[1][7]_i_2_n_0\
    );
\kernel[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(24),
      I1 => lvds_deserialized(16),
      I2 => lvds_deserialized(8),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][0]_i_1_n_0\
    );
\kernel[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(25),
      I1 => lvds_deserialized(17),
      I2 => lvds_deserialized(9),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][1]_i_1_n_0\
    );
\kernel[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(26),
      I1 => lvds_deserialized(18),
      I2 => lvds_deserialized(10),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][2]_i_1_n_0\
    );
\kernel[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(27),
      I1 => lvds_deserialized(19),
      I2 => lvds_deserialized(11),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][3]_i_1_n_0\
    );
\kernel[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(28),
      I1 => lvds_deserialized(20),
      I2 => lvds_deserialized(12),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][4]_i_1_n_0\
    );
\kernel[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(29),
      I1 => lvds_deserialized(21),
      I2 => lvds_deserialized(13),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][5]_i_1_n_0\
    );
\kernel[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(30),
      I1 => lvds_deserialized(22),
      I2 => lvds_deserialized(14),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][6]_i_1_n_0\
    );
\kernel[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0F0CC"
    )
        port map (
      I0 => lvds_deserialized(31),
      I1 => lvds_deserialized(23),
      I2 => lvds_deserialized(15),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[2][7]_i_1_n_0\
    );
\kernel[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(24),
      I1 => lvds_deserialized(16),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(8),
      O => \kernel[3][0]_i_1_n_0\
    );
\kernel[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(25),
      I1 => lvds_deserialized(17),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(9),
      O => \kernel[3][1]_i_1_n_0\
    );
\kernel[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(26),
      I1 => lvds_deserialized(18),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(10),
      O => \kernel[3][2]_i_1_n_0\
    );
\kernel[3][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(27),
      I1 => lvds_deserialized(19),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(11),
      O => \kernel[3][3]_i_1_n_0\
    );
\kernel[3][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(28),
      I1 => lvds_deserialized(20),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(12),
      O => \kernel[3][4]_i_1_n_0\
    );
\kernel[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(29),
      I1 => lvds_deserialized(21),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(13),
      O => \kernel[3][5]_i_1_n_0\
    );
\kernel[3][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(30),
      I1 => lvds_deserialized(22),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(14),
      O => \kernel[3][6]_i_1_n_0\
    );
\kernel[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => lvds_deserialized(31),
      I1 => lvds_deserialized(23),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(15),
      O => \kernel[3][7]_i_1_n_0\
    );
\kernel[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(24),
      I1 => lvds_deserialized(16),
      I2 => lvds_deserialized(8),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][0]_i_1_n_0\
    );
\kernel[4][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(25),
      I1 => lvds_deserialized(17),
      I2 => lvds_deserialized(9),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][1]_i_1_n_0\
    );
\kernel[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(26),
      I1 => lvds_deserialized(18),
      I2 => lvds_deserialized(10),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][2]_i_1_n_0\
    );
\kernel[4][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(27),
      I1 => lvds_deserialized(19),
      I2 => lvds_deserialized(11),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][3]_i_1_n_0\
    );
\kernel[4][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(28),
      I1 => lvds_deserialized(20),
      I2 => lvds_deserialized(12),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][4]_i_1_n_0\
    );
\kernel[4][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(29),
      I1 => lvds_deserialized(21),
      I2 => lvds_deserialized(13),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][5]_i_1_n_0\
    );
\kernel[4][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(30),
      I1 => lvds_deserialized(22),
      I2 => lvds_deserialized(14),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][6]_i_1_n_0\
    );
\kernel[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF0F0AA"
    )
        port map (
      I0 => lvds_deserialized(31),
      I1 => lvds_deserialized(23),
      I2 => lvds_deserialized(15),
      I3 => \nb_kernel_reg_n_0_[0]\,
      I4 => pixel_polarity(0),
      O => \kernel[4][7]_i_1_n_0\
    );
\kernel[5][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(24),
      I1 => lvds_deserialized(16),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(8),
      O => \kernel[5][0]_i_1_n_0\
    );
\kernel[5][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(25),
      I1 => lvds_deserialized(17),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(9),
      O => \kernel[5][1]_i_1_n_0\
    );
\kernel[5][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(26),
      I1 => lvds_deserialized(18),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(10),
      O => \kernel[5][2]_i_1_n_0\
    );
\kernel[5][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(27),
      I1 => lvds_deserialized(19),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(11),
      O => \kernel[5][3]_i_1_n_0\
    );
\kernel[5][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(28),
      I1 => lvds_deserialized(20),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(12),
      O => \kernel[5][4]_i_1_n_0\
    );
\kernel[5][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(29),
      I1 => lvds_deserialized(21),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(13),
      O => \kernel[5][5]_i_1_n_0\
    );
\kernel[5][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(30),
      I1 => lvds_deserialized(22),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(14),
      O => \kernel[5][6]_i_1_n_0\
    );
\kernel[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0AC0"
    )
        port map (
      I0 => lvds_deserialized(31),
      I1 => lvds_deserialized(23),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => lvds_deserialized(15),
      O => \kernel[5][7]_i_1_n_0\
    );
\kernel[6][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(8),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(32),
      O => \kernel[6][0]_i_1_n_0\
    );
\kernel[6][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(9),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(33),
      O => \kernel[6][1]_i_1_n_0\
    );
\kernel[6][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(10),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(34),
      O => \kernel[6][2]_i_1_n_0\
    );
\kernel[6][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(11),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(35),
      O => \kernel[6][3]_i_1_n_0\
    );
\kernel[6][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(12),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(36),
      O => \kernel[6][4]_i_1_n_0\
    );
\kernel[6][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(13),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(37),
      O => \kernel[6][5]_i_1_n_0\
    );
\kernel[6][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(14),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(38),
      O => \kernel[6][6]_i_1_n_0\
    );
\kernel[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => lvds_deserialized(15),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(39),
      O => \kernel[6][7]_i_1_n_0\
    );
\kernel[7][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(8),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(32),
      O => \kernel[7][0]_i_1_n_0\
    );
\kernel[7][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(9),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(33),
      O => \kernel[7][1]_i_1_n_0\
    );
\kernel[7][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(10),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(34),
      O => \kernel[7][2]_i_1_n_0\
    );
\kernel[7][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(11),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(35),
      O => \kernel[7][3]_i_1_n_0\
    );
\kernel[7][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(12),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(36),
      O => \kernel[7][4]_i_1_n_0\
    );
\kernel[7][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(13),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(37),
      O => \kernel[7][5]_i_1_n_0\
    );
\kernel[7][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(14),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(38),
      O => \kernel[7][6]_i_1_n_0\
    );
\kernel[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => lvds_deserialized(15),
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => lvds_deserialized(39),
      O => \kernel[7][7]_i_1_n_0\
    );
\kernel_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][0]_i_1_n_0\,
      Q => in19(0)
    );
\kernel_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][1]_i_1_n_0\,
      Q => in19(1)
    );
\kernel_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][2]_i_1_n_0\,
      Q => in19(2)
    );
\kernel_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][3]_i_1_n_0\,
      Q => in19(3)
    );
\kernel_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][4]_i_1_n_0\,
      Q => in19(4)
    );
\kernel_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][5]_i_1_n_0\,
      Q => in19(5)
    );
\kernel_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][6]_i_1_n_0\,
      Q => in19(6)
    );
\kernel_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[0][7]_i_2_n_0\,
      Q => in19(7)
    );
\kernel_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][0]_i_1_n_0\,
      Q => in19(8)
    );
\kernel_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][1]_i_1_n_0\,
      Q => in19(9)
    );
\kernel_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][2]_i_1_n_0\,
      Q => in19(10)
    );
\kernel_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][3]_i_1_n_0\,
      Q => in19(11)
    );
\kernel_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][4]_i_1_n_0\,
      Q => in19(12)
    );
\kernel_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][5]_i_1_n_0\,
      Q => in19(13)
    );
\kernel_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][6]_i_1_n_0\,
      Q => in19(14)
    );
\kernel_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[1][7]_i_2_n_0\,
      Q => in19(15)
    );
\kernel_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][0]_i_1_n_0\,
      Q => in19(16)
    );
\kernel_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][1]_i_1_n_0\,
      Q => in19(17)
    );
\kernel_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][2]_i_1_n_0\,
      Q => in19(18)
    );
\kernel_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][3]_i_1_n_0\,
      Q => in19(19)
    );
\kernel_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][4]_i_1_n_0\,
      Q => in19(20)
    );
\kernel_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][5]_i_1_n_0\,
      Q => in19(21)
    );
\kernel_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][6]_i_1_n_0\,
      Q => in19(22)
    );
\kernel_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[2][7]_i_1_n_0\,
      Q => in19(23)
    );
\kernel_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][0]_i_1_n_0\,
      Q => in19(24)
    );
\kernel_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][1]_i_1_n_0\,
      Q => in19(25)
    );
\kernel_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][2]_i_1_n_0\,
      Q => in19(26)
    );
\kernel_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][3]_i_1_n_0\,
      Q => in19(27)
    );
\kernel_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][4]_i_1_n_0\,
      Q => in19(28)
    );
\kernel_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][5]_i_1_n_0\,
      Q => in19(29)
    );
\kernel_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][6]_i_1_n_0\,
      Q => in19(30)
    );
\kernel_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[3][7]_i_1_n_0\,
      Q => in19(31)
    );
\kernel_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][0]_i_1_n_0\,
      Q => in19(32)
    );
\kernel_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][1]_i_1_n_0\,
      Q => in19(33)
    );
\kernel_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][2]_i_1_n_0\,
      Q => in19(34)
    );
\kernel_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][3]_i_1_n_0\,
      Q => in19(35)
    );
\kernel_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][4]_i_1_n_0\,
      Q => in19(36)
    );
\kernel_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][5]_i_1_n_0\,
      Q => in19(37)
    );
\kernel_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][6]_i_1_n_0\,
      Q => in19(38)
    );
\kernel_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[4][7]_i_1_n_0\,
      Q => in19(39)
    );
\kernel_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][0]_i_1_n_0\,
      Q => in19(40)
    );
\kernel_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][1]_i_1_n_0\,
      Q => in19(41)
    );
\kernel_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][2]_i_1_n_0\,
      Q => in19(42)
    );
\kernel_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][3]_i_1_n_0\,
      Q => in19(43)
    );
\kernel_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][4]_i_1_n_0\,
      Q => in19(44)
    );
\kernel_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][5]_i_1_n_0\,
      Q => in19(45)
    );
\kernel_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][6]_i_1_n_0\,
      Q => in19(46)
    );
\kernel_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[5][7]_i_1_n_0\,
      Q => in19(47)
    );
\kernel_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][0]_i_1_n_0\,
      Q => in19(48)
    );
\kernel_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][1]_i_1_n_0\,
      Q => in19(49)
    );
\kernel_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][2]_i_1_n_0\,
      Q => in19(50)
    );
\kernel_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][3]_i_1_n_0\,
      Q => in19(51)
    );
\kernel_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][4]_i_1_n_0\,
      Q => in19(52)
    );
\kernel_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][5]_i_1_n_0\,
      Q => in19(53)
    );
\kernel_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][6]_i_1_n_0\,
      Q => in19(54)
    );
\kernel_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[6]_0\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[6][7]_i_1_n_0\,
      Q => in19(55)
    );
\kernel_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][0]_i_1_n_0\,
      Q => in19(56)
    );
\kernel_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][1]_i_1_n_0\,
      Q => in19(57)
    );
\kernel_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][2]_i_1_n_0\,
      Q => in19(58)
    );
\kernel_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][3]_i_1_n_0\,
      Q => in19(59)
    );
\kernel_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][4]_i_1_n_0\,
      Q => in19(60)
    );
\kernel_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][5]_i_1_n_0\,
      Q => in19(61)
    );
\kernel_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][6]_i_1_n_0\,
      Q => in19(62)
    );
\kernel_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk_div,
      CE => \kernel[7]_1\,
      CLR => \bitslip[3]_i_3_n_0\,
      D => \kernel[7][7]_i_1_n_0\,
      Q => in19(63)
    );
\nb_kernel[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FF080"
    )
        port map (
      I0 => pixel_polarity(0),
      I1 => \fifo_din[63]_i_3_n_0\,
      I2 => \FSM_onehot_DState_reg_n_0_[6]\,
      I3 => \nb_kernel[0]_i_2_n_0\,
      I4 => \nb_kernel_reg_n_0_[0]\,
      O => \nb_kernel[0]_i_1_n_0\
    );
\nb_kernel[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_6_n_0\,
      I1 => lvds_deserialized(4),
      I2 => \FSM_onehot_DState_reg_n_0_[4]\,
      I3 => lvds_deserialized(5),
      I4 => lvds_deserialized(6),
      I5 => \FSM_onehot_DState_reg_n_0_[7]\,
      O => \nb_kernel[0]_i_2_n_0\
    );
\nb_kernel_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => '1',
      CLR => \bitslip[3]_i_3_n_0\,
      D => \nb_kernel[0]_i_1_n_0\,
      Q => \nb_kernel_reg_n_0_[0]\
    );
noip_lvds_stream_slave_stream_v1_0_S00_AXIS_inst: entity work.main_design_noip_lvds_stream_0_1_noip_lvds_stream_slave_stream_v1_0_S00_AXIS
     port map (
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
\pixel_polarity[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07A8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => \fifo_din[63]_i_3_n_0\,
      I2 => \FSM_onehot_DState_reg_n_0_[7]\,
      I3 => pixel_polarity(0),
      O => \pixel_polarity[0]_i_1_n_0\
    );
\pixel_polarity_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk_div,
      CE => '1',
      CLR => \bitslip[3]_i_3_n_0\,
      D => \pixel_polarity[0]_i_1_n_0\,
      Q => pixel_polarity(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_1 is
  port (
    lvds_clk_div : in STD_LOGIC;
    lvds_deserialized : in STD_LOGIC_VECTOR ( 39 downto 0 );
    trigger0 : out STD_LOGIC;
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
    bitslip : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_srst : out STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_rd_en : out STD_LOGIC;
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
  attribute NotValidForBitStream of main_design_noip_lvds_stream_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_noip_lvds_stream_0_1 : entity is "main_design_noip_lvds_stream_0_0,noip_lvds_stream,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_design_noip_lvds_stream_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of main_design_noip_lvds_stream_0_1 : entity is "noip_lvds_stream,Vivado 2024.1";
end main_design_noip_lvds_stream_0_1;

architecture STRUCTURE of main_design_noip_lvds_stream_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of fifo_empty : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read EMPTY";
  attribute x_interface_info of fifo_full : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write FULL";
  attribute x_interface_info of fifo_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read RD_EN";
  attribute x_interface_info of fifo_wr_en : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write WR_EN";
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
  attribute x_interface_info of fifo_din : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write WR_DATA";
  attribute x_interface_info of fifo_dout : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read RD_DATA";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  fifo_rd_en <= \<const1>\;
  fifo_srst <= \<const0>\;
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const0>\;
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  m00_axis_tvalid <= \<const0>\;
  trigger0 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.main_design_noip_lvds_stream_0_1_noip_lvds_stream
     port map (
      bitslip(3 downto 0) => bitslip(3 downto 0),
      fifo_din(63 downto 0) => fifo_din(63 downto 0),
      fifo_wr_en => fifo_wr_en,
      lvds_clk_div => lvds_clk_div,
      lvds_deserialized(39 downto 0) => lvds_deserialized(39 downto 0),
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
