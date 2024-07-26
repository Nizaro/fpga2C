-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Fri Jul 26 10:54:18 2024
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
    fifo_srst : out STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    fifo_wr_en : out STD_LOGIC;
    lvds_sync : in STD_LOGIC;
    lvds_clk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    lvds_data : in STD_LOGIC_VECTOR ( 0 to 3 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC
  );
end main_design_noip_lvds_stream_0_1_noip_lvds_stream;

architecture STRUCTURE of main_design_noip_lvds_stream_0_1_noip_lvds_stream is
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
  signal bitslip : STD_LOGIC;
  signal \bitslip[0]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[0]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[0]_i_4_n_0\ : STD_LOGIC;
  signal \bitslip[1]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[1]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[2]_i_4_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_4_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_5_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_6_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_7_n_0\ : STD_LOGIC;
  signal \bitslip[3]_i_8_n_0\ : STD_LOGIC;
  signal \bitslip_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitslip_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitslip_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitslip_reg_n_0_[3]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \fifo_din[63]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[8]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[9]_i_1_n_0\ : STD_LOGIC;
  signal \^fifo_srst\ : STD_LOGIC;
  signal \^fifo_wr_en\ : STD_LOGIC;
  signal fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal findbitslip : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i[0]_i_2_n_0\ : STD_LOGIC;
  signal \i[1]_i_2_n_0\ : STD_LOGIC;
  signal \i[2]_i_2_n_0\ : STD_LOGIC;
  signal \i[2]_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_reg_n_0_[11]\ : STD_LOGIC;
  signal \i_reg_n_0_[12]\ : STD_LOGIC;
  signal \i_reg_n_0_[13]\ : STD_LOGIC;
  signal \i_reg_n_0_[14]\ : STD_LOGIC;
  signal \i_reg_n_0_[15]\ : STD_LOGIC;
  signal \i_reg_n_0_[16]\ : STD_LOGIC;
  signal \i_reg_n_0_[17]\ : STD_LOGIC;
  signal \i_reg_n_0_[18]\ : STD_LOGIC;
  signal \i_reg_n_0_[19]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[20]\ : STD_LOGIC;
  signal \i_reg_n_0_[21]\ : STD_LOGIC;
  signal \i_reg_n_0_[22]\ : STD_LOGIC;
  signal \i_reg_n_0_[23]\ : STD_LOGIC;
  signal \i_reg_n_0_[24]\ : STD_LOGIC;
  signal \i_reg_n_0_[25]\ : STD_LOGIC;
  signal \i_reg_n_0_[26]\ : STD_LOGIC;
  signal \i_reg_n_0_[27]\ : STD_LOGIC;
  signal \i_reg_n_0_[28]\ : STD_LOGIC;
  signal \i_reg_n_0_[29]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[30]\ : STD_LOGIC;
  signal \i_reg_n_0_[31]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_reg_n_0_[9]\ : STD_LOGIC;
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
  signal \kernel[6]_7\ : STD_LOGIC;
  signal \kernel[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][4]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][5]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][6]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \kernel[7]_8\ : STD_LOGIC;
  signal \lvds_data_words_reg[1]_6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_data_words_reg[2]_5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_data_words_reg[3]_4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_data_words_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \lvds_data_words_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_data_words_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_read_process.temp_data_words_reg[1]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_read_process.temp_data_words_reg[2]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_read_process.temp_data_words_reg[3]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lvds_read_process.temp_sync_word[0]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[0]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[1]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[1]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[1]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[2]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[2]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[2]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[3]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[3]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[3]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[3]_i_4_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[4]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[4]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[4]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[4]_i_4_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[5]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[5]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[5]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[6]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[6]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[6]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[7]_i_1_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[7]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word[7]_i_3_n_0\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[1]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[2]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[3]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[4]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[5]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[6]\ : STD_LOGIC;
  signal \lvds_read_process.temp_sync_word_reg_n_0_[7]\ : STD_LOGIC;
  signal \lvds_sync_word[0]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_sync_word[1]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_sync_word[2]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_sync_word[3]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_sync_word[4]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_sync_word[5]_i_2_n_0\ : STD_LOGIC;
  signal \lvds_sync_word[6]_i_2_n_0\ : STD_LOGIC;
  signal lvds_word_ready : STD_LOGIC;
  signal lvds_word_ready_i_2_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_3_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_4_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_5_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_6_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_7_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_8_n_0 : STD_LOGIC;
  signal lvds_word_ready_i_9_n_0 : STD_LOGIC;
  signal lvds_word_ready_reg_n_0 : STD_LOGIC;
  signal mux10_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mux16_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mux1_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mux4_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mux7_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \nb_kernel[0]_i_1_n_0\ : STD_LOGIC;
  signal \nb_kernel[0]_i_2_n_0\ : STD_LOGIC;
  signal \nb_kernel_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_polarity : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pixel_polarity[0]_i_1_n_0\ : STD_LOGIC;
  signal temp_sync_word32_in : STD_LOGIC;
  signal \temp_sync_word3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_i_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temp_sync_word3_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp_sync_word3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_DState[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_11\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_DState[8]_i_9\ : label is "soft_lutpair25";
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
  attribute SOFT_HLUTNM of \bitslip[0]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bitslip[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitslip[3]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bitslip[3]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bitslip[3]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_din[0]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \fifo_din[10]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \fifo_din[11]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \fifo_din[12]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \fifo_din[13]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \fifo_din[14]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \fifo_din[15]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \fifo_din[16]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \fifo_din[17]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \fifo_din[18]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \fifo_din[19]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \fifo_din[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \fifo_din[20]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \fifo_din[21]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \fifo_din[22]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \fifo_din[23]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \fifo_din[24]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \fifo_din[25]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \fifo_din[26]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \fifo_din[27]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \fifo_din[28]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \fifo_din[29]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \fifo_din[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \fifo_din[30]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fifo_din[31]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fifo_din[32]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \fifo_din[33]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \fifo_din[34]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \fifo_din[35]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \fifo_din[36]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \fifo_din[37]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \fifo_din[38]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \fifo_din[39]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \fifo_din[3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \fifo_din[40]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \fifo_din[41]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \fifo_din[42]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \fifo_din[43]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \fifo_din[44]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \fifo_din[45]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \fifo_din[46]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \fifo_din[47]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \fifo_din[48]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \fifo_din[49]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \fifo_din[4]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \fifo_din[50]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \fifo_din[51]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \fifo_din[52]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \fifo_din[53]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \fifo_din[54]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \fifo_din[55]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \fifo_din[56]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \fifo_din[57]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \fifo_din[58]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \fifo_din[59]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \fifo_din[5]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \fifo_din[60]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \fifo_din[61]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \fifo_din[62]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \fifo_din[63]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \fifo_din[63]_i_4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \fifo_din[6]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \fifo_din[8]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \fifo_din[9]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \i[0]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i[10]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \i[11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \i[12]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \i[13]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \i[14]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \i[15]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \i[16]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \i[17]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \i[18]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \i[19]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \i[1]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[20]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \i[21]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \i[22]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \i[23]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \i[24]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \i[25]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \i[26]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \i[27]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \i[28]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \i[29]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \i[2]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i[30]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \i[31]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \i[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \i[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \i[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \i[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \i[9]_i_1\ : label is "soft_lutpair66";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \kernel[0][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \kernel[0][1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \kernel[0][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \kernel[0][3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \kernel[0][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \kernel[0][5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \kernel[0][6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \kernel[0][7]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \kernel[1][0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \kernel[1][1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \kernel[1][2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \kernel[1][3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \kernel[1][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \kernel[1][5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \kernel[1][6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \kernel[1][7]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \kernel[2][0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \kernel[2][1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \kernel[2][2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \kernel[2][3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \kernel[2][4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kernel[2][5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kernel[2][6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kernel[2][7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kernel[3][0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \kernel[3][1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kernel[3][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kernel[3][3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \kernel[3][4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kernel[3][5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kernel[3][6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \kernel[3][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kernel[4][0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \kernel[4][1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \kernel[4][2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \kernel[4][3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \kernel[4][4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kernel[4][5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kernel[4][6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kernel[4][7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kernel[5][0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \kernel[5][1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kernel[5][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kernel[5][3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \kernel[5][4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kernel[5][5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kernel[5][6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \kernel[5][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kernel[6][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \kernel[6][1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \kernel[6][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \kernel[6][3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \kernel[6][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \kernel[6][5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \kernel[6][6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \kernel[6][7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \kernel[7][0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \kernel[7][1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \kernel[7][2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \kernel[7][3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \kernel[7][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \kernel[7][5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \kernel[7][6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \kernel[7][7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][0]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][1]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][2]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][3]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][4]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][5]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][6]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[0][7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[1][7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[2][7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_data_words[3][7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_sync_word[0]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_sync_word[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_sync_word[3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_sync_word[4]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_sync_word[6]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lvds_read_process.temp_sync_word[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lvds_sync_word[0]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lvds_sync_word[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \lvds_sync_word[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \lvds_sync_word[4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \lvds_sync_word[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lvds_sync_word[5]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lvds_sync_word[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \lvds_sync_word[7]_i_1\ : label is "soft_lutpair48";
begin
  fifo_srst <= \^fifo_srst\;
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
      I0 => data0(0),
      I1 => \FSM_onehot_DState_reg_n_0_[6]\,
      I2 => \fifo_din[63]_i_3_n_0\,
      O => \FSM_onehot_DState[7]_i_1_n_0\
    );
\FSM_onehot_DState[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAE"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_3_n_0\,
      I1 => \FSM_onehot_DState_reg_n_0_[0]\,
      I2 => \FSM_onehot_DState[8]_i_4_n_0\,
      I3 => \FSM_onehot_DState_reg_n_0_[5]\,
      I4 => \FSM_onehot_DState[8]_i_5_n_0\,
      O => \FSM_onehot_DState[8]_i_1_n_0\
    );
\FSM_onehot_DState[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => data0(5),
      I1 => data0(3),
      I2 => p_0_in(0),
      I3 => data0(2),
      O => \FSM_onehot_DState[8]_i_10_n_0\
    );
\FSM_onehot_DState[8]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(0),
      I1 => data0(2),
      O => \FSM_onehot_DState[8]_i_11_n_0\
    );
\FSM_onehot_DState[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_13_n_0\,
      I1 => \bitslip_reg_n_0_[0]\,
      I2 => \bitslip_reg_n_0_[1]\,
      I3 => data0(7),
      I4 => data0(4),
      I5 => data0(6),
      O => \FSM_onehot_DState[8]_i_12_n_0\
    );
\FSM_onehot_DState[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bitslip_reg_n_0_[2]\,
      I1 => \bitslip_reg_n_0_[3]\,
      O => \FSM_onehot_DState[8]_i_13_n_0\
    );
\FSM_onehot_DState[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => data0(0),
      I1 => \FSM_onehot_DState_reg_n_0_[6]\,
      I2 => \fifo_din[63]_i_3_n_0\,
      O => \FSM_onehot_DState[8]_i_2_n_0\
    );
\FSM_onehot_DState[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEAFFEAEA"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[8]\,
      I1 => data0(4),
      I2 => \FSM_onehot_DState[8]_i_6_n_0\,
      I3 => \fifo_din[63]_i_3_n_0\,
      I4 => \FSM_onehot_DState_reg_n_0_[3]\,
      I5 => data0(0),
      O => \FSM_onehot_DState[8]_i_3_n_0\
    );
\FSM_onehot_DState[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_7_n_0\,
      I1 => \FSM_onehot_DState[8]_i_8_n_0\,
      I2 => \lvds_data_words_reg_n_0_[0][3]\,
      I3 => \lvds_data_words_reg_n_0_[0][4]\,
      I4 => \lvds_data_words_reg_n_0_[0][6]\,
      I5 => \lvds_data_words_reg_n_0_[0][5]\,
      O => \FSM_onehot_DState[8]_i_4_n_0\
    );
\FSM_onehot_DState[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C0A00"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[6]\,
      I1 => \FSM_onehot_DState[8]_i_9_n_0\,
      I2 => data0(4),
      I3 => data0(7),
      I4 => data0(6),
      I5 => \FSM_onehot_DState[8]_i_10_n_0\,
      O => \FSM_onehot_DState[8]_i_5_n_0\
    );
\FSM_onehot_DState[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_11_n_0\,
      I1 => data0(6),
      I2 => data0(7),
      I3 => \FSM_onehot_DState_reg_n_0_[2]\,
      I4 => data0(3),
      I5 => data0(5),
      O => \FSM_onehot_DState[8]_i_6_n_0\
    );
\FSM_onehot_DState[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => \lvds_data_words_reg_n_0_[0][2]\,
      I2 => p_0_in(0),
      I3 => data0(2),
      I4 => \lvds_data_words_reg_n_0_[0][0]\,
      I5 => \FSM_onehot_DState[8]_i_12_n_0\,
      O => \FSM_onehot_DState[8]_i_7_n_0\
    );
\FSM_onehot_DState[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => data0(3),
      I2 => data0(0),
      I3 => data0(5),
      O => \FSM_onehot_DState[8]_i_8_n_0\
    );
\FSM_onehot_DState[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \FSM_onehot_DState_reg_n_0_[4]\,
      I1 => data0(0),
      I2 => \FSM_onehot_DState_reg_n_0_[1]\,
      I3 => \FSM_onehot_DState_reg_n_0_[7]\,
      O => \FSM_onehot_DState[8]_i_9_n_0\
    );
\FSM_onehot_DState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      D => '0',
      PRE => \^fifo_srst\,
      Q => \FSM_onehot_DState_reg_n_0_[0]\
    );
\FSM_onehot_DState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState[1]_i_1_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[1]\
    );
\FSM_onehot_DState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState_reg_n_0_[1]\,
      Q => \FSM_onehot_DState_reg_n_0_[2]\
    );
\FSM_onehot_DState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState_reg_n_0_[2]\,
      Q => \FSM_onehot_DState_reg_n_0_[3]\
    );
\FSM_onehot_DState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState_reg_n_0_[3]\,
      Q => \FSM_onehot_DState_reg_n_0_[4]\
    );
\FSM_onehot_DState_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState[5]_i_1_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[5]\
    );
\FSM_onehot_DState_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState_reg_n_0_[5]\,
      Q => \FSM_onehot_DState_reg_n_0_[6]\
    );
\FSM_onehot_DState_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState[7]_i_1_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[7]\
    );
\FSM_onehot_DState_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => \FSM_onehot_DState[8]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \FSM_onehot_DState[8]_i_2_n_0\,
      Q => \FSM_onehot_DState_reg_n_0_[8]\
    );
\bitslip[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF2A"
    )
        port map (
      I0 => data0(6),
      I1 => data0(3),
      I2 => data0(5),
      I3 => \bitslip[0]_i_2_n_0\,
      I4 => \bitslip[0]_i_3_n_0\,
      I5 => \bitslip[0]_i_4_n_0\,
      O => findbitslip(0)
    );
\bitslip[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF7FFFFAAF7FF7F"
    )
        port map (
      I0 => data0(0),
      I1 => data0(5),
      I2 => data0(3),
      I3 => data0(4),
      I4 => p_0_in(0),
      I5 => data0(2),
      O => \bitslip[0]_i_2_n_0\
    );
\bitslip[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B3B"
    )
        port map (
      I0 => data0(4),
      I1 => data0(2),
      I2 => data0(3),
      I3 => data0(5),
      O => \bitslip[0]_i_3_n_0\
    );
\bitslip[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000CFFFF0AAFFFF"
    )
        port map (
      I0 => data0(3),
      I1 => data0(2),
      I2 => data0(5),
      I3 => data0(4),
      I4 => data0(7),
      I5 => data0(6),
      O => \bitslip[0]_i_4_n_0\
    );
\bitslip[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBBFFFBFEBFFFF"
    )
        port map (
      I0 => \bitslip[1]_i_2_n_0\,
      I1 => data0(0),
      I2 => data0(5),
      I3 => data0(2),
      I4 => data0(4),
      I5 => p_0_in(0),
      O => findbitslip(1)
    );
\bitslip[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE7FFFFE7FFE7FF"
    )
        port map (
      I0 => \bitslip[1]_i_3_n_0\,
      I1 => data0(7),
      I2 => data0(3),
      I3 => data0(2),
      I4 => p_0_in(0),
      I5 => data0(6),
      O => \bitslip[1]_i_2_n_0\
    );
\bitslip[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data0(4),
      I1 => data0(5),
      O => \bitslip[1]_i_3_n_0\
    );
\bitslip[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitslip[2]_i_2_n_0\,
      I1 => \bitslip[3]_i_4_n_0\,
      I2 => \bitslip[2]_i_3_n_0\,
      I3 => \bitslip[2]_i_4_n_0\,
      O => findbitslip(2)
    );
\bitslip[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B380FFFF"
    )
        port map (
      I0 => data0(0),
      I1 => data0(5),
      I2 => data0(4),
      I3 => data0(2),
      I4 => data0(7),
      O => \bitslip[2]_i_2_n_0\
    );
\bitslip[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8AFF00FF0000"
    )
        port map (
      I0 => data0(5),
      I1 => p_0_in(0),
      I2 => data0(2),
      I3 => data0(6),
      I4 => data0(3),
      I5 => data0(4),
      O => \bitslip[2]_i_3_n_0\
    );
\bitslip[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E7FFE0FFE7FF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => data0(2),
      I2 => data0(3),
      I3 => data0(0),
      I4 => data0(4),
      I5 => data0(5),
      O => \bitslip[2]_i_4_n_0\
    );
\bitslip[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_DState[8]_i_4_n_0\,
      I1 => \FSM_onehot_DState_reg_n_0_[0]\,
      O => bitslip
    );
\bitslip[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEF"
    )
        port map (
      I0 => \bitslip[3]_i_3_n_0\,
      I1 => \bitslip[3]_i_4_n_0\,
      I2 => \bitslip[3]_i_5_n_0\,
      I3 => data0(5),
      I4 => \bitslip[3]_i_6_n_0\,
      I5 => \bitslip[3]_i_7_n_0\,
      O => findbitslip(3)
    );
\bitslip[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A5DA5F"
    )
        port map (
      I0 => data0(3),
      I1 => data0(4),
      I2 => data0(5),
      I3 => data0(0),
      I4 => data0(2),
      I5 => \bitslip[3]_i_8_n_0\,
      O => \bitslip[3]_i_3_n_0\
    );
\bitslip[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"101010FF"
    )
        port map (
      I0 => data0(3),
      I1 => data0(4),
      I2 => data0(6),
      I3 => p_0_in(0),
      I4 => data0(5),
      O => \bitslip[3]_i_4_n_0\
    );
\bitslip[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(4),
      I1 => data0(6),
      O => \bitslip[3]_i_5_n_0\
    );
\bitslip[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D616B737"
    )
        port map (
      I0 => data0(5),
      I1 => data0(4),
      I2 => data0(7),
      I3 => data0(3),
      I4 => data0(0),
      O => \bitslip[3]_i_6_n_0\
    );
\bitslip[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80009111"
    )
        port map (
      I0 => data0(4),
      I1 => p_0_in(0),
      I2 => data0(2),
      I3 => data0(5),
      I4 => data0(3),
      I5 => \bitslip[2]_i_2_n_0\,
      O => \bitslip[3]_i_7_n_0\
    );
\bitslip[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B484B4847555DDDD"
    )
        port map (
      I0 => data0(6),
      I1 => data0(4),
      I2 => data0(3),
      I3 => data0(5),
      I4 => p_0_in(0),
      I5 => data0(2),
      O => \bitslip[3]_i_8_n_0\
    );
\bitslip_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => bitslip,
      CLR => \^fifo_srst\,
      D => findbitslip(0),
      Q => \bitslip_reg_n_0_[0]\
    );
\bitslip_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => bitslip,
      CLR => \^fifo_srst\,
      D => findbitslip(1),
      Q => \bitslip_reg_n_0_[1]\
    );
\bitslip_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => bitslip,
      CLR => \^fifo_srst\,
      D => findbitslip(2),
      Q => \bitslip_reg_n_0_[2]\
    );
\bitslip_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => bitslip,
      CLR => \^fifo_srst\,
      D => findbitslip(3),
      Q => \bitslip_reg_n_0_[3]\
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
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => data0(7),
      I1 => data0(4),
      I2 => data0(6),
      I3 => \fifo_din[63]_i_4_n_0\,
      I4 => data0(3),
      I5 => data0(5),
      O => \fifo_din[63]_i_3_n_0\
    );
\fifo_din[63]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(2),
      I1 => p_0_in(0),
      O => \fifo_din[63]_i_4_n_0\
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
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[0]_i_1_n_0\,
      Q => fifo_din(0)
    );
\fifo_din_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[10]_i_1_n_0\,
      Q => fifo_din(10)
    );
\fifo_din_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[11]_i_1_n_0\,
      Q => fifo_din(11)
    );
\fifo_din_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[12]_i_1_n_0\,
      Q => fifo_din(12)
    );
\fifo_din_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[13]_i_1_n_0\,
      Q => fifo_din(13)
    );
\fifo_din_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[14]_i_1_n_0\,
      Q => fifo_din(14)
    );
\fifo_din_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[15]_i_1_n_0\,
      Q => fifo_din(15)
    );
\fifo_din_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[16]_i_1_n_0\,
      Q => fifo_din(16)
    );
\fifo_din_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[17]_i_1_n_0\,
      Q => fifo_din(17)
    );
\fifo_din_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[18]_i_1_n_0\,
      Q => fifo_din(18)
    );
\fifo_din_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[19]_i_1_n_0\,
      Q => fifo_din(19)
    );
\fifo_din_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[1]_i_1_n_0\,
      Q => fifo_din(1)
    );
\fifo_din_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[20]_i_1_n_0\,
      Q => fifo_din(20)
    );
\fifo_din_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[21]_i_1_n_0\,
      Q => fifo_din(21)
    );
\fifo_din_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[22]_i_1_n_0\,
      Q => fifo_din(22)
    );
\fifo_din_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[23]_i_1_n_0\,
      Q => fifo_din(23)
    );
\fifo_din_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[24]_i_1_n_0\,
      Q => fifo_din(24)
    );
\fifo_din_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[25]_i_1_n_0\,
      Q => fifo_din(25)
    );
\fifo_din_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[26]_i_1_n_0\,
      Q => fifo_din(26)
    );
\fifo_din_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[27]_i_1_n_0\,
      Q => fifo_din(27)
    );
\fifo_din_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[28]_i_1_n_0\,
      Q => fifo_din(28)
    );
\fifo_din_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[29]_i_1_n_0\,
      Q => fifo_din(29)
    );
\fifo_din_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[2]_i_1_n_0\,
      Q => fifo_din(2)
    );
\fifo_din_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[30]_i_1_n_0\,
      Q => fifo_din(30)
    );
\fifo_din_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[31]_i_1_n_0\,
      Q => fifo_din(31)
    );
\fifo_din_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[32]_i_1_n_0\,
      Q => fifo_din(32)
    );
\fifo_din_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[33]_i_1_n_0\,
      Q => fifo_din(33)
    );
\fifo_din_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[34]_i_1_n_0\,
      Q => fifo_din(34)
    );
\fifo_din_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[35]_i_1_n_0\,
      Q => fifo_din(35)
    );
\fifo_din_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[36]_i_1_n_0\,
      Q => fifo_din(36)
    );
\fifo_din_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[37]_i_1_n_0\,
      Q => fifo_din(37)
    );
\fifo_din_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[38]_i_1_n_0\,
      Q => fifo_din(38)
    );
\fifo_din_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[39]_i_1_n_0\,
      Q => fifo_din(39)
    );
\fifo_din_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[3]_i_1_n_0\,
      Q => fifo_din(3)
    );
\fifo_din_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[40]_i_1_n_0\,
      Q => fifo_din(40)
    );
\fifo_din_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[41]_i_1_n_0\,
      Q => fifo_din(41)
    );
\fifo_din_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[42]_i_1_n_0\,
      Q => fifo_din(42)
    );
\fifo_din_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[43]_i_1_n_0\,
      Q => fifo_din(43)
    );
\fifo_din_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[44]_i_1_n_0\,
      Q => fifo_din(44)
    );
\fifo_din_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[45]_i_1_n_0\,
      Q => fifo_din(45)
    );
\fifo_din_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[46]_i_1_n_0\,
      Q => fifo_din(46)
    );
\fifo_din_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[47]_i_1_n_0\,
      Q => fifo_din(47)
    );
\fifo_din_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[48]_i_1_n_0\,
      Q => fifo_din(48)
    );
\fifo_din_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[49]_i_1_n_0\,
      Q => fifo_din(49)
    );
\fifo_din_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[4]_i_1_n_0\,
      Q => fifo_din(4)
    );
\fifo_din_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[50]_i_1_n_0\,
      Q => fifo_din(50)
    );
\fifo_din_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[51]_i_1_n_0\,
      Q => fifo_din(51)
    );
\fifo_din_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[52]_i_1_n_0\,
      Q => fifo_din(52)
    );
\fifo_din_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[53]_i_1_n_0\,
      Q => fifo_din(53)
    );
\fifo_din_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[54]_i_1_n_0\,
      Q => fifo_din(54)
    );
\fifo_din_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[55]_i_1_n_0\,
      Q => fifo_din(55)
    );
\fifo_din_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[56]_i_1_n_0\,
      Q => fifo_din(56)
    );
\fifo_din_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[57]_i_1_n_0\,
      Q => fifo_din(57)
    );
\fifo_din_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[58]_i_1_n_0\,
      Q => fifo_din(58)
    );
\fifo_din_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[59]_i_1_n_0\,
      Q => fifo_din(59)
    );
\fifo_din_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[5]_i_1_n_0\,
      Q => fifo_din(5)
    );
\fifo_din_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[60]_i_1_n_0\,
      Q => fifo_din(60)
    );
\fifo_din_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[61]_i_1_n_0\,
      Q => fifo_din(61)
    );
\fifo_din_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[62]_i_1_n_0\,
      Q => fifo_din(62)
    );
\fifo_din_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[63]_i_2_n_0\,
      Q => fifo_din(63)
    );
\fifo_din_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[6]_i_1_n_0\,
      Q => fifo_din(6)
    );
\fifo_din_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[7]_i_1_n_0\,
      Q => fifo_din(7)
    );
\fifo_din_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[8]_i_1_n_0\,
      Q => fifo_din(8)
    );
\fifo_din_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \fifo_din[63]_i_1_n_0\,
      CLR => \^fifo_srst\,
      D => \fifo_din[9]_i_1_n_0\,
      Q => fifo_din(9)
    );
fifo_srst_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => \^fifo_srst\
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
      C => lvds_word_ready_reg_n_0,
      CE => '1',
      CLR => \^fifo_srst\,
      D => fifo_wr_en_i_1_n_0,
      Q => \^fifo_wr_en\
    );
\i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000000FFFFFFFF"
    )
        port map (
      I0 => \i[0]_i_2_n_0\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i[1]_i_2_n_0\,
      I3 => \bitslip_reg_n_0_[0]\,
      I4 => \i[2]_i_2_n_0\,
      I5 => \i_reg_n_0_[0]\,
      O => i(0)
    );
\i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => lvds_word_ready_i_3_n_0,
      I1 => lvds_word_ready_i_4_n_0,
      I2 => lvds_word_ready_i_5_n_0,
      I3 => \i_reg_n_0_[2]\,
      O => \i[0]_i_2_n_0\
    );
\i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[12]_i_2_n_6\,
      O => i(10)
    );
\i[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[12]_i_2_n_5\,
      O => i(11)
    );
\i[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[12]_i_2_n_4\,
      O => i(12)
    );
\i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[16]_i_2_n_7\,
      O => i(13)
    );
\i[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[16]_i_2_n_6\,
      O => i(14)
    );
\i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[16]_i_2_n_5\,
      O => i(15)
    );
\i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[16]_i_2_n_4\,
      O => i(16)
    );
\i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[20]_i_2_n_7\,
      O => i(17)
    );
\i[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[20]_i_2_n_6\,
      O => i(18)
    );
\i[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[20]_i_2_n_5\,
      O => i(19)
    );
\i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACA0A0"
    )
        port map (
      I0 => \i_reg[4]_i_2_n_7\,
      I1 => \i[2]_i_2_n_0\,
      I2 => lvds_word_ready_i_2_n_0,
      I3 => \i[1]_i_2_n_0\,
      I4 => \bitslip_reg_n_0_[1]\,
      O => i(1)
    );
\i[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => temp_sync_word32_in,
      I1 => \bitslip_reg_n_0_[3]\,
      O => \i[1]_i_2_n_0\
    );
\i[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[20]_i_2_n_4\,
      O => i(20)
    );
\i[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[24]_i_2_n_7\,
      O => i(21)
    );
\i[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[24]_i_2_n_6\,
      O => i(22)
    );
\i[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[24]_i_2_n_5\,
      O => i(23)
    );
\i[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[24]_i_2_n_4\,
      O => i(24)
    );
\i[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[28]_i_2_n_7\,
      O => i(25)
    );
\i[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[28]_i_2_n_6\,
      O => i(26)
    );
\i[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[28]_i_2_n_5\,
      O => i(27)
    );
\i[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[28]_i_2_n_4\,
      O => i(28)
    );
\i[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[31]_i_2_n_7\,
      O => i(29)
    );
\i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0C00AAAA0000"
    )
        port map (
      I0 => \i_reg[4]_i_2_n_6\,
      I1 => \bitslip_reg_n_0_[2]\,
      I2 => \bitslip_reg_n_0_[3]\,
      I3 => temp_sync_word32_in,
      I4 => lvds_word_ready_i_2_n_0,
      I5 => \i[2]_i_2_n_0\,
      O => i(2)
    );
\i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[2]\,
      I1 => \lvds_read_process.temp_sync_word_reg_n_0_[3]\,
      I2 => \lvds_read_process.temp_sync_word_reg_n_0_[1]\,
      I3 => \lvds_read_process.temp_sync_word_reg_n_0_[0]\,
      I4 => \i[2]_i_3_n_0\,
      O => \i[2]_i_2_n_0\
    );
\i[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[5]\,
      I1 => \lvds_read_process.temp_sync_word_reg_n_0_[4]\,
      I2 => lvds_sync,
      I3 => \lvds_read_process.temp_sync_word_reg_n_0_[6]\,
      O => \i[2]_i_3_n_0\
    );
\i[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[31]_i_2_n_6\,
      O => i(30)
    );
\i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[31]_i_2_n_5\,
      O => i(31)
    );
\i[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i_reg[4]_i_2_n_5\,
      I1 => lvds_word_ready_i_2_n_0,
      O => i(3)
    );
\i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[4]_i_2_n_4\,
      O => i(4)
    );
\i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[8]_i_2_n_7\,
      O => i(5)
    );
\i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[8]_i_2_n_6\,
      O => i(6)
    );
\i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[8]_i_2_n_5\,
      O => i(7)
    );
\i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[8]_i_2_n_4\,
      O => i(8)
    );
\i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => \i_reg[12]_i_2_n_7\,
      O => i(9)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bitslip_reg_n_0_[2]\,
      I1 => \bitslip_reg_n_0_[3]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bitslip_reg_n_0_[0]\,
      I1 => \bitslip_reg_n_0_[1]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitslip_reg_n_0_[3]\,
      I1 => \bitslip_reg_n_0_[2]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitslip_reg_n_0_[1]\,
      I1 => \bitslip_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(0),
      Q => \i_reg_n_0_[0]\
    );
\i_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(10),
      Q => \i_reg_n_0_[10]\
    );
\i_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(11),
      Q => \i_reg_n_0_[11]\
    );
\i_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(12),
      Q => \i_reg_n_0_[12]\
    );
\i_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_2_n_0\,
      CO(3) => \i_reg[12]_i_2_n_0\,
      CO(2) => \i_reg[12]_i_2_n_1\,
      CO(1) => \i_reg[12]_i_2_n_2\,
      CO(0) => \i_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_2_n_4\,
      O(2) => \i_reg[12]_i_2_n_5\,
      O(1) => \i_reg[12]_i_2_n_6\,
      O(0) => \i_reg[12]_i_2_n_7\,
      S(3) => \i_reg_n_0_[12]\,
      S(2) => \i_reg_n_0_[11]\,
      S(1) => \i_reg_n_0_[10]\,
      S(0) => \i_reg_n_0_[9]\
    );
\i_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(13),
      Q => \i_reg_n_0_[13]\
    );
\i_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(14),
      Q => \i_reg_n_0_[14]\
    );
\i_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(15),
      Q => \i_reg_n_0_[15]\
    );
\i_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(16),
      Q => \i_reg_n_0_[16]\
    );
\i_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_2_n_0\,
      CO(3) => \i_reg[16]_i_2_n_0\,
      CO(2) => \i_reg[16]_i_2_n_1\,
      CO(1) => \i_reg[16]_i_2_n_2\,
      CO(0) => \i_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_2_n_4\,
      O(2) => \i_reg[16]_i_2_n_5\,
      O(1) => \i_reg[16]_i_2_n_6\,
      O(0) => \i_reg[16]_i_2_n_7\,
      S(3) => \i_reg_n_0_[16]\,
      S(2) => \i_reg_n_0_[15]\,
      S(1) => \i_reg_n_0_[14]\,
      S(0) => \i_reg_n_0_[13]\
    );
\i_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(17),
      Q => \i_reg_n_0_[17]\
    );
\i_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(18),
      Q => \i_reg_n_0_[18]\
    );
\i_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(19),
      Q => \i_reg_n_0_[19]\
    );
\i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(1),
      Q => \i_reg_n_0_[1]\
    );
\i_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(20),
      Q => \i_reg_n_0_[20]\
    );
\i_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_2_n_0\,
      CO(3) => \i_reg[20]_i_2_n_0\,
      CO(2) => \i_reg[20]_i_2_n_1\,
      CO(1) => \i_reg[20]_i_2_n_2\,
      CO(0) => \i_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_2_n_4\,
      O(2) => \i_reg[20]_i_2_n_5\,
      O(1) => \i_reg[20]_i_2_n_6\,
      O(0) => \i_reg[20]_i_2_n_7\,
      S(3) => \i_reg_n_0_[20]\,
      S(2) => \i_reg_n_0_[19]\,
      S(1) => \i_reg_n_0_[18]\,
      S(0) => \i_reg_n_0_[17]\
    );
\i_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(21),
      Q => \i_reg_n_0_[21]\
    );
\i_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(22),
      Q => \i_reg_n_0_[22]\
    );
\i_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(23),
      Q => \i_reg_n_0_[23]\
    );
\i_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(24),
      Q => \i_reg_n_0_[24]\
    );
\i_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_2_n_0\,
      CO(3) => \i_reg[24]_i_2_n_0\,
      CO(2) => \i_reg[24]_i_2_n_1\,
      CO(1) => \i_reg[24]_i_2_n_2\,
      CO(0) => \i_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[24]_i_2_n_4\,
      O(2) => \i_reg[24]_i_2_n_5\,
      O(1) => \i_reg[24]_i_2_n_6\,
      O(0) => \i_reg[24]_i_2_n_7\,
      S(3) => \i_reg_n_0_[24]\,
      S(2) => \i_reg_n_0_[23]\,
      S(1) => \i_reg_n_0_[22]\,
      S(0) => \i_reg_n_0_[21]\
    );
\i_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(25),
      Q => \i_reg_n_0_[25]\
    );
\i_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(26),
      Q => \i_reg_n_0_[26]\
    );
\i_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(27),
      Q => \i_reg_n_0_[27]\
    );
\i_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(28),
      Q => \i_reg_n_0_[28]\
    );
\i_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[24]_i_2_n_0\,
      CO(3) => \i_reg[28]_i_2_n_0\,
      CO(2) => \i_reg[28]_i_2_n_1\,
      CO(1) => \i_reg[28]_i_2_n_2\,
      CO(0) => \i_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[28]_i_2_n_4\,
      O(2) => \i_reg[28]_i_2_n_5\,
      O(1) => \i_reg[28]_i_2_n_6\,
      O(0) => \i_reg[28]_i_2_n_7\,
      S(3) => \i_reg_n_0_[28]\,
      S(2) => \i_reg_n_0_[27]\,
      S(1) => \i_reg_n_0_[26]\,
      S(0) => \i_reg_n_0_[25]\
    );
\i_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(29),
      Q => \i_reg_n_0_[29]\
    );
\i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(2),
      Q => \i_reg_n_0_[2]\
    );
\i_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(30),
      Q => \i_reg_n_0_[30]\
    );
\i_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(31),
      Q => \i_reg_n_0_[31]\
    );
\i_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_i_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[31]_i_2_n_2\,
      CO(0) => \i_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2) => \i_reg[31]_i_2_n_5\,
      O(1) => \i_reg[31]_i_2_n_6\,
      O(0) => \i_reg[31]_i_2_n_7\,
      S(3) => '0',
      S(2) => \i_reg_n_0_[31]\,
      S(1) => \i_reg_n_0_[30]\,
      S(0) => \i_reg_n_0_[29]\
    );
\i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(3),
      Q => \i_reg_n_0_[3]\
    );
\i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(4),
      Q => \i_reg_n_0_[4]\
    );
\i_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[4]_i_2_n_0\,
      CO(2) => \i_reg[4]_i_2_n_1\,
      CO(1) => \i_reg[4]_i_2_n_2\,
      CO(0) => \i_reg[4]_i_2_n_3\,
      CYINIT => \i_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_2_n_4\,
      O(2) => \i_reg[4]_i_2_n_5\,
      O(1) => \i_reg[4]_i_2_n_6\,
      O(0) => \i_reg[4]_i_2_n_7\,
      S(3) => \i_reg_n_0_[4]\,
      S(2) => \i_reg_n_0_[3]\,
      S(1) => \i_reg_n_0_[2]\,
      S(0) => \i_reg_n_0_[1]\
    );
\i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(5),
      Q => \i_reg_n_0_[5]\
    );
\i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(6),
      Q => \i_reg_n_0_[6]\
    );
\i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(7),
      Q => \i_reg_n_0_[7]\
    );
\i_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(8),
      Q => \i_reg_n_0_[8]\
    );
\i_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_2_n_0\,
      CO(3) => \i_reg[8]_i_2_n_0\,
      CO(2) => \i_reg[8]_i_2_n_1\,
      CO(1) => \i_reg[8]_i_2_n_2\,
      CO(0) => \i_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_2_n_4\,
      O(2) => \i_reg[8]_i_2_n_5\,
      O(1) => \i_reg[8]_i_2_n_6\,
      O(0) => \i_reg[8]_i_2_n_7\,
      S(3) => \i_reg_n_0_[8]\,
      S(2) => \i_reg_n_0_[7]\,
      S(1) => \i_reg_n_0_[6]\,
      S(0) => \i_reg_n_0_[5]\
    );
\i_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => i(9),
      Q => \i_reg_n_0_[9]\
    );
\kernel[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][0]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(0),
      O => \kernel[0][0]_i_1_n_0\
    );
\kernel[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(1),
      O => \kernel[0][1]_i_1_n_0\
    );
\kernel[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][2]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(2),
      O => \kernel[0][2]_i_1_n_0\
    );
\kernel[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][3]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(3),
      O => \kernel[0][3]_i_1_n_0\
    );
\kernel[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][4]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(4),
      O => \kernel[0][4]_i_1_n_0\
    );
\kernel[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][5]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(5),
      O => \kernel[0][5]_i_1_n_0\
    );
\kernel[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][6]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(6),
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
      O => \kernel[6]_7\
    );
\kernel[0][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(7),
      O => \kernel[0][7]_i_2_n_0\
    );
\kernel[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][0]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(0),
      O => \kernel[1][0]_i_1_n_0\
    );
\kernel[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(1),
      O => \kernel[1][1]_i_1_n_0\
    );
\kernel[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][2]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(2),
      O => \kernel[1][2]_i_1_n_0\
    );
\kernel[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][3]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(3),
      O => \kernel[1][3]_i_1_n_0\
    );
\kernel[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][4]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(4),
      O => \kernel[1][4]_i_1_n_0\
    );
\kernel[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][5]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(5),
      O => \kernel[1][5]_i_1_n_0\
    );
\kernel[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][6]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(6),
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
      O => \kernel[7]_8\
    );
\kernel[1][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => pixel_polarity(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => \lvds_data_words_reg[3]_4\(7),
      O => \kernel[1][7]_i_2_n_0\
    );
\kernel[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(0),
      I1 => \lvds_data_words_reg_n_0_[0][0]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(0),
      O => \kernel[2][0]_i_1_n_0\
    );
\kernel[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(1),
      I1 => \lvds_data_words_reg_n_0_[0][1]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(1),
      O => \kernel[2][1]_i_1_n_0\
    );
\kernel[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(2),
      I1 => \lvds_data_words_reg_n_0_[0][2]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(2),
      O => \kernel[2][2]_i_1_n_0\
    );
\kernel[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(3),
      I1 => \lvds_data_words_reg_n_0_[0][3]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(3),
      O => \kernel[2][3]_i_1_n_0\
    );
\kernel[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(4),
      I1 => \lvds_data_words_reg_n_0_[0][4]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(4),
      O => \kernel[2][4]_i_1_n_0\
    );
\kernel[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(5),
      I1 => \lvds_data_words_reg_n_0_[0][5]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(5),
      O => \kernel[2][5]_i_1_n_0\
    );
\kernel[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(6),
      I1 => \lvds_data_words_reg_n_0_[0][6]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(6),
      O => \kernel[2][6]_i_1_n_0\
    );
\kernel[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[1]_6\(7),
      I1 => \lvds_data_words_reg_n_0_[0][7]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(7),
      O => \kernel[2][7]_i_1_n_0\
    );
\kernel[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][0]\,
      I1 => \lvds_data_words_reg[2]_5\(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(0),
      O => \kernel[3][0]_i_1_n_0\
    );
\kernel[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => \lvds_data_words_reg[2]_5\(1),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(1),
      O => \kernel[3][1]_i_1_n_0\
    );
\kernel[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][2]\,
      I1 => \lvds_data_words_reg[2]_5\(2),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(2),
      O => \kernel[3][2]_i_1_n_0\
    );
\kernel[3][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][3]\,
      I1 => \lvds_data_words_reg[2]_5\(3),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(3),
      O => \kernel[3][3]_i_1_n_0\
    );
\kernel[3][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][4]\,
      I1 => \lvds_data_words_reg[2]_5\(4),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(4),
      O => \kernel[3][4]_i_1_n_0\
    );
\kernel[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][5]\,
      I1 => \lvds_data_words_reg[2]_5\(5),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(5),
      O => \kernel[3][5]_i_1_n_0\
    );
\kernel[3][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][6]\,
      I1 => \lvds_data_words_reg[2]_5\(6),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(6),
      O => \kernel[3][6]_i_1_n_0\
    );
\kernel[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => \lvds_data_words_reg[2]_5\(7),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(7),
      O => \kernel[3][7]_i_1_n_0\
    );
\kernel[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(0),
      I1 => \lvds_data_words_reg_n_0_[0][0]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(0),
      O => \kernel[4][0]_i_1_n_0\
    );
\kernel[4][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(1),
      I1 => \lvds_data_words_reg_n_0_[0][1]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(1),
      O => \kernel[4][1]_i_1_n_0\
    );
\kernel[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(2),
      I1 => \lvds_data_words_reg_n_0_[0][2]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(2),
      O => \kernel[4][2]_i_1_n_0\
    );
\kernel[4][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(3),
      I1 => \lvds_data_words_reg_n_0_[0][3]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(3),
      O => \kernel[4][3]_i_1_n_0\
    );
\kernel[4][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(4),
      I1 => \lvds_data_words_reg_n_0_[0][4]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(4),
      O => \kernel[4][4]_i_1_n_0\
    );
\kernel[4][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(5),
      I1 => \lvds_data_words_reg_n_0_[0][5]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(5),
      O => \kernel[4][5]_i_1_n_0\
    );
\kernel[4][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(6),
      I1 => \lvds_data_words_reg_n_0_[0][6]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(6),
      O => \kernel[4][6]_i_1_n_0\
    );
\kernel[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCA0CCA"
    )
        port map (
      I0 => \lvds_data_words_reg[2]_5\(7),
      I1 => \lvds_data_words_reg_n_0_[0][7]\,
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[1]_6\(7),
      O => \kernel[4][7]_i_1_n_0\
    );
\kernel[5][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][0]\,
      I1 => \lvds_data_words_reg[1]_6\(0),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(0),
      O => \kernel[5][0]_i_1_n_0\
    );
\kernel[5][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => \lvds_data_words_reg[1]_6\(1),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(1),
      O => \kernel[5][1]_i_1_n_0\
    );
\kernel[5][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][2]\,
      I1 => \lvds_data_words_reg[1]_6\(2),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(2),
      O => \kernel[5][2]_i_1_n_0\
    );
\kernel[5][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][3]\,
      I1 => \lvds_data_words_reg[1]_6\(3),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(3),
      O => \kernel[5][3]_i_1_n_0\
    );
\kernel[5][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][4]\,
      I1 => \lvds_data_words_reg[1]_6\(4),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(4),
      O => \kernel[5][4]_i_1_n_0\
    );
\kernel[5][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][5]\,
      I1 => \lvds_data_words_reg[1]_6\(5),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(5),
      O => \kernel[5][5]_i_1_n_0\
    );
\kernel[5][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][6]\,
      I1 => \lvds_data_words_reg[1]_6\(6),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(6),
      O => \kernel[5][6]_i_1_n_0\
    );
\kernel[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCAA0CA"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => \lvds_data_words_reg[1]_6\(7),
      I2 => \nb_kernel_reg_n_0_[0]\,
      I3 => pixel_polarity(0),
      I4 => \lvds_data_words_reg[2]_5\(7),
      O => \kernel[5][7]_i_1_n_0\
    );
\kernel[6][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][0]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(0),
      O => \kernel[6][0]_i_1_n_0\
    );
\kernel[6][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(1),
      O => \kernel[6][1]_i_1_n_0\
    );
\kernel[6][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][2]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(2),
      O => \kernel[6][2]_i_1_n_0\
    );
\kernel[6][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][3]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(3),
      O => \kernel[6][3]_i_1_n_0\
    );
\kernel[6][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][4]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(4),
      O => \kernel[6][4]_i_1_n_0\
    );
\kernel[6][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][5]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(5),
      O => \kernel[6][5]_i_1_n_0\
    );
\kernel[6][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][6]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(6),
      O => \kernel[6][6]_i_1_n_0\
    );
\kernel[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(7),
      O => \kernel[6][7]_i_1_n_0\
    );
\kernel[7][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][0]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(0),
      O => \kernel[7][0]_i_1_n_0\
    );
\kernel[7][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][1]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(1),
      O => \kernel[7][1]_i_1_n_0\
    );
\kernel[7][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][2]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(2),
      O => \kernel[7][2]_i_1_n_0\
    );
\kernel[7][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][3]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(3),
      O => \kernel[7][3]_i_1_n_0\
    );
\kernel[7][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][4]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(4),
      O => \kernel[7][4]_i_1_n_0\
    );
\kernel[7][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][5]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(5),
      O => \kernel[7][5]_i_1_n_0\
    );
\kernel[7][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][6]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(6),
      O => \kernel[7][6]_i_1_n_0\
    );
\kernel[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \lvds_data_words_reg_n_0_[0][7]\,
      I1 => \nb_kernel_reg_n_0_[0]\,
      I2 => pixel_polarity(0),
      I3 => \lvds_data_words_reg[3]_4\(7),
      O => \kernel[7][7]_i_1_n_0\
    );
\kernel_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][0]_i_1_n_0\,
      Q => in19(0)
    );
\kernel_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][1]_i_1_n_0\,
      Q => in19(1)
    );
\kernel_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][2]_i_1_n_0\,
      Q => in19(2)
    );
\kernel_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][3]_i_1_n_0\,
      Q => in19(3)
    );
\kernel_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][4]_i_1_n_0\,
      Q => in19(4)
    );
\kernel_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][5]_i_1_n_0\,
      Q => in19(5)
    );
\kernel_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][6]_i_1_n_0\,
      Q => in19(6)
    );
\kernel_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[0][7]_i_2_n_0\,
      Q => in19(7)
    );
\kernel_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][0]_i_1_n_0\,
      Q => in19(8)
    );
\kernel_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][1]_i_1_n_0\,
      Q => in19(9)
    );
\kernel_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][2]_i_1_n_0\,
      Q => in19(10)
    );
\kernel_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][3]_i_1_n_0\,
      Q => in19(11)
    );
\kernel_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][4]_i_1_n_0\,
      Q => in19(12)
    );
\kernel_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][5]_i_1_n_0\,
      Q => in19(13)
    );
\kernel_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][6]_i_1_n_0\,
      Q => in19(14)
    );
\kernel_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[1][7]_i_2_n_0\,
      Q => in19(15)
    );
\kernel_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][0]_i_1_n_0\,
      Q => in19(16)
    );
\kernel_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][1]_i_1_n_0\,
      Q => in19(17)
    );
\kernel_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][2]_i_1_n_0\,
      Q => in19(18)
    );
\kernel_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][3]_i_1_n_0\,
      Q => in19(19)
    );
\kernel_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][4]_i_1_n_0\,
      Q => in19(20)
    );
\kernel_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][5]_i_1_n_0\,
      Q => in19(21)
    );
\kernel_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][6]_i_1_n_0\,
      Q => in19(22)
    );
\kernel_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[2][7]_i_1_n_0\,
      Q => in19(23)
    );
\kernel_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][0]_i_1_n_0\,
      Q => in19(24)
    );
\kernel_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][1]_i_1_n_0\,
      Q => in19(25)
    );
\kernel_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][2]_i_1_n_0\,
      Q => in19(26)
    );
\kernel_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][3]_i_1_n_0\,
      Q => in19(27)
    );
\kernel_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][4]_i_1_n_0\,
      Q => in19(28)
    );
\kernel_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][5]_i_1_n_0\,
      Q => in19(29)
    );
\kernel_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][6]_i_1_n_0\,
      Q => in19(30)
    );
\kernel_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[3][7]_i_1_n_0\,
      Q => in19(31)
    );
\kernel_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][0]_i_1_n_0\,
      Q => in19(32)
    );
\kernel_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][1]_i_1_n_0\,
      Q => in19(33)
    );
\kernel_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][2]_i_1_n_0\,
      Q => in19(34)
    );
\kernel_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][3]_i_1_n_0\,
      Q => in19(35)
    );
\kernel_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][4]_i_1_n_0\,
      Q => in19(36)
    );
\kernel_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][5]_i_1_n_0\,
      Q => in19(37)
    );
\kernel_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][6]_i_1_n_0\,
      Q => in19(38)
    );
\kernel_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[4][7]_i_1_n_0\,
      Q => in19(39)
    );
\kernel_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][0]_i_1_n_0\,
      Q => in19(40)
    );
\kernel_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][1]_i_1_n_0\,
      Q => in19(41)
    );
\kernel_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][2]_i_1_n_0\,
      Q => in19(42)
    );
\kernel_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][3]_i_1_n_0\,
      Q => in19(43)
    );
\kernel_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][4]_i_1_n_0\,
      Q => in19(44)
    );
\kernel_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][5]_i_1_n_0\,
      Q => in19(45)
    );
\kernel_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][6]_i_1_n_0\,
      Q => in19(46)
    );
\kernel_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[5][7]_i_1_n_0\,
      Q => in19(47)
    );
\kernel_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][0]_i_1_n_0\,
      Q => in19(48)
    );
\kernel_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][1]_i_1_n_0\,
      Q => in19(49)
    );
\kernel_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][2]_i_1_n_0\,
      Q => in19(50)
    );
\kernel_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][3]_i_1_n_0\,
      Q => in19(51)
    );
\kernel_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][4]_i_1_n_0\,
      Q => in19(52)
    );
\kernel_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][5]_i_1_n_0\,
      Q => in19(53)
    );
\kernel_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][6]_i_1_n_0\,
      Q => in19(54)
    );
\kernel_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[6]_7\,
      CLR => \^fifo_srst\,
      D => \kernel[6][7]_i_1_n_0\,
      Q => in19(55)
    );
\kernel_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][0]_i_1_n_0\,
      Q => in19(56)
    );
\kernel_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][1]_i_1_n_0\,
      Q => in19(57)
    );
\kernel_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][2]_i_1_n_0\,
      Q => in19(58)
    );
\kernel_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][3]_i_1_n_0\,
      Q => in19(59)
    );
\kernel_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][4]_i_1_n_0\,
      Q => in19(60)
    );
\kernel_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][5]_i_1_n_0\,
      Q => in19(61)
    );
\kernel_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][6]_i_1_n_0\,
      Q => in19(62)
    );
\kernel_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_word_ready_reg_n_0,
      CE => \kernel[7]_8\,
      CLR => \^fifo_srst\,
      D => \kernel[7][7]_i_1_n_0\,
      Q => in19(63)
    );
\lvds_data_words_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(0),
      Q => \lvds_data_words_reg_n_0_[0][0]\
    );
\lvds_data_words_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(1),
      Q => \lvds_data_words_reg_n_0_[0][1]\
    );
\lvds_data_words_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(2),
      Q => \lvds_data_words_reg_n_0_[0][2]\
    );
\lvds_data_words_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(3),
      Q => \lvds_data_words_reg_n_0_[0][3]\
    );
\lvds_data_words_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(4),
      Q => \lvds_data_words_reg_n_0_[0][4]\
    );
\lvds_data_words_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(5),
      Q => \lvds_data_words_reg_n_0_[0][5]\
    );
\lvds_data_words_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(6),
      Q => \lvds_data_words_reg_n_0_[0][6]\
    );
\lvds_data_words_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux10_out(7),
      Q => \lvds_data_words_reg_n_0_[0][7]\
    );
\lvds_data_words_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(0),
      Q => \lvds_data_words_reg[1]_6\(0)
    );
\lvds_data_words_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(1),
      Q => \lvds_data_words_reg[1]_6\(1)
    );
\lvds_data_words_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(2),
      Q => \lvds_data_words_reg[1]_6\(2)
    );
\lvds_data_words_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(3),
      Q => \lvds_data_words_reg[1]_6\(3)
    );
\lvds_data_words_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(4),
      Q => \lvds_data_words_reg[1]_6\(4)
    );
\lvds_data_words_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(5),
      Q => \lvds_data_words_reg[1]_6\(5)
    );
\lvds_data_words_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(6),
      Q => \lvds_data_words_reg[1]_6\(6)
    );
\lvds_data_words_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux7_out(7),
      Q => \lvds_data_words_reg[1]_6\(7)
    );
\lvds_data_words_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(0),
      Q => \lvds_data_words_reg[2]_5\(0)
    );
\lvds_data_words_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(1),
      Q => \lvds_data_words_reg[2]_5\(1)
    );
\lvds_data_words_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(2),
      Q => \lvds_data_words_reg[2]_5\(2)
    );
\lvds_data_words_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(3),
      Q => \lvds_data_words_reg[2]_5\(3)
    );
\lvds_data_words_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(4),
      Q => \lvds_data_words_reg[2]_5\(4)
    );
\lvds_data_words_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(5),
      Q => \lvds_data_words_reg[2]_5\(5)
    );
\lvds_data_words_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(6),
      Q => \lvds_data_words_reg[2]_5\(6)
    );
\lvds_data_words_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux4_out(7),
      Q => \lvds_data_words_reg[2]_5\(7)
    );
\lvds_data_words_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(0),
      Q => \lvds_data_words_reg[3]_4\(0)
    );
\lvds_data_words_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(1),
      Q => \lvds_data_words_reg[3]_4\(1)
    );
\lvds_data_words_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(2),
      Q => \lvds_data_words_reg[3]_4\(2)
    );
\lvds_data_words_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(3),
      Q => \lvds_data_words_reg[3]_4\(3)
    );
\lvds_data_words_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(4),
      Q => \lvds_data_words_reg[3]_4\(4)
    );
\lvds_data_words_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(5),
      Q => \lvds_data_words_reg[3]_4\(5)
    );
\lvds_data_words_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(6),
      Q => \lvds_data_words_reg[3]_4\(6)
    );
\lvds_data_words_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux1_out(7),
      Q => \lvds_data_words_reg[3]_4\(7)
    );
\lvds_read_process.temp_data_words[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \lvds_sync_word[0]_i_2_n_0\,
      I2 => \i_reg_n_0_[2]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \i_reg_n_0_[1]\,
      O => \lvds_read_process.temp_data_words[0][0]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(0),
      I1 => \lvds_read_process.temp_sync_word[0]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(0)
    );
\lvds_read_process.temp_data_words[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \lvds_sync_word[1]_i_2_n_0\,
      O => \lvds_read_process.temp_data_words[0][1]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(1),
      I1 => \lvds_sync_word[1]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(1)
    );
\lvds_read_process.temp_data_words[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \lvds_sync_word[2]_i_2_n_0\,
      O => \lvds_read_process.temp_data_words[0][2]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(2),
      I1 => \lvds_sync_word[2]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(2)
    );
\lvds_read_process.temp_data_words[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \lvds_sync_word[3]_i_2_n_0\,
      O => \lvds_read_process.temp_data_words[0][3]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(3),
      I1 => \lvds_sync_word[3]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(3)
    );
\lvds_read_process.temp_data_words[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      O => \lvds_read_process.temp_data_words[0][4]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(4),
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(4)
    );
\lvds_read_process.temp_data_words[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \i[0]_i_2_n_0\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      O => \lvds_read_process.temp_data_words[0][5]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(5),
      I1 => \lvds_sync_word[5]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(5)
    );
\lvds_read_process.temp_data_words[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      O => \lvds_read_process.temp_data_words[0][6]_i_1_n_0\
    );
\lvds_read_process.temp_data_words[0][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(6),
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      I2 => lvds_data(0),
      O => mux10_out(6)
    );
\lvds_read_process.temp_data_words[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[0]_0\(7),
      I1 => lvds_word_ready_i_2_n_0,
      I2 => lvds_data(0),
      O => mux10_out(7)
    );
\lvds_read_process.temp_data_words[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(0),
      I1 => \lvds_read_process.temp_sync_word[0]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(0)
    );
\lvds_read_process.temp_data_words[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(1),
      I1 => \lvds_sync_word[1]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(1)
    );
\lvds_read_process.temp_data_words[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(2),
      I1 => \lvds_sync_word[2]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(2)
    );
\lvds_read_process.temp_data_words[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(3),
      I1 => \lvds_sync_word[3]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(3)
    );
\lvds_read_process.temp_data_words[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(4),
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(4)
    );
\lvds_read_process.temp_data_words[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(5),
      I1 => \lvds_sync_word[5]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(5)
    );
\lvds_read_process.temp_data_words[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(6),
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      I2 => lvds_data(1),
      O => mux7_out(6)
    );
\lvds_read_process.temp_data_words[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[1]_3\(7),
      I1 => lvds_word_ready_i_2_n_0,
      I2 => lvds_data(1),
      O => mux7_out(7)
    );
\lvds_read_process.temp_data_words[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(0),
      I1 => \lvds_read_process.temp_sync_word[0]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(0)
    );
\lvds_read_process.temp_data_words[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(1),
      I1 => \lvds_sync_word[1]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(1)
    );
\lvds_read_process.temp_data_words[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(2),
      I1 => \lvds_sync_word[2]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(2)
    );
\lvds_read_process.temp_data_words[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(3),
      I1 => \lvds_sync_word[3]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(3)
    );
\lvds_read_process.temp_data_words[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(4),
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(4)
    );
\lvds_read_process.temp_data_words[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(5),
      I1 => \lvds_sync_word[5]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(5)
    );
\lvds_read_process.temp_data_words[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(6),
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      I2 => lvds_data(2),
      O => mux4_out(6)
    );
\lvds_read_process.temp_data_words[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[2]_2\(7),
      I1 => lvds_word_ready_i_2_n_0,
      I2 => lvds_data(2),
      O => mux4_out(7)
    );
\lvds_read_process.temp_data_words[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(0),
      I1 => \lvds_read_process.temp_sync_word[0]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(0)
    );
\lvds_read_process.temp_data_words[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(1),
      I1 => \lvds_sync_word[1]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(1)
    );
\lvds_read_process.temp_data_words[3][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(2),
      I1 => \lvds_sync_word[2]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(2)
    );
\lvds_read_process.temp_data_words[3][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(3),
      I1 => \lvds_sync_word[3]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(3)
    );
\lvds_read_process.temp_data_words[3][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(4),
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(4)
    );
\lvds_read_process.temp_data_words[3][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(5),
      I1 => \lvds_sync_word[5]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(5)
    );
\lvds_read_process.temp_data_words[3][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(6),
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      I2 => lvds_data(3),
      O => mux1_out(6)
    );
\lvds_read_process.temp_data_words[3][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_data_words_reg[3]_1\(7),
      I1 => lvds_word_ready_i_2_n_0,
      I2 => lvds_data(3),
      O => mux1_out(7)
    );
\lvds_read_process.temp_data_words_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][0]_i_1_n_0\,
      D => mux10_out(0),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(0),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][1]_i_1_n_0\,
      D => mux10_out(1),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(1),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][2]_i_1_n_0\,
      D => mux10_out(2),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(2),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][3]_i_1_n_0\,
      D => mux10_out(3),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(3),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][4]_i_1_n_0\,
      D => mux10_out(4),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(4),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][5]_i_1_n_0\,
      D => mux10_out(5),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(5),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][6]_i_1_n_0\,
      D => mux10_out(6),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(6),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_sync_word[7]_i_1_n_0\,
      D => mux10_out(7),
      Q => \lvds_read_process.temp_data_words_reg[0]_0\(7),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][0]_i_1_n_0\,
      D => mux7_out(0),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(0),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][1]_i_1_n_0\,
      D => mux7_out(1),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(1),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][2]_i_1_n_0\,
      D => mux7_out(2),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(2),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][3]_i_1_n_0\,
      D => mux7_out(3),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(3),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][4]_i_1_n_0\,
      D => mux7_out(4),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(4),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][5]_i_1_n_0\,
      D => mux7_out(5),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(5),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][6]_i_1_n_0\,
      D => mux7_out(6),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(6),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_sync_word[7]_i_1_n_0\,
      D => mux7_out(7),
      Q => \lvds_read_process.temp_data_words_reg[1]_3\(7),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][0]_i_1_n_0\,
      D => mux4_out(0),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(0),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][1]_i_1_n_0\,
      D => mux4_out(1),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(1),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][2]_i_1_n_0\,
      D => mux4_out(2),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(2),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][3]_i_1_n_0\,
      D => mux4_out(3),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(3),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][4]_i_1_n_0\,
      D => mux4_out(4),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(4),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][5]_i_1_n_0\,
      D => mux4_out(5),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(5),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][6]_i_1_n_0\,
      D => mux4_out(6),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(6),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_sync_word[7]_i_1_n_0\,
      D => mux4_out(7),
      Q => \lvds_read_process.temp_data_words_reg[2]_2\(7),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][0]_i_1_n_0\,
      D => mux1_out(0),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(0),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][1]_i_1_n_0\,
      D => mux1_out(1),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(1),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][2]_i_1_n_0\,
      D => mux1_out(2),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(2),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][3]_i_1_n_0\,
      D => mux1_out(3),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(3),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][4]_i_1_n_0\,
      D => mux1_out(4),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(4),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][5]_i_1_n_0\,
      D => mux1_out(5),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(5),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_data_words[0][6]_i_1_n_0\,
      D => mux1_out(6),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(6),
      R => '0'
    );
\lvds_read_process.temp_data_words_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_sync_word[7]_i_1_n_0\,
      D => mux1_out(7),
      Q => \lvds_read_process.temp_data_words_reg[3]_1\(7),
      R => '0'
    );
\lvds_read_process.temp_sync_word[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFFF2320000"
    )
        port map (
      I0 => lvds_sync,
      I1 => \lvds_read_process.temp_sync_word[0]_i_2_n_0\,
      I2 => \lvds_read_process.temp_sync_word[7]_i_3_n_0\,
      I3 => \i[2]_i_2_n_0\,
      I4 => s00_axis_aresetn,
      I5 => \lvds_read_process.temp_sync_word_reg_n_0_[0]\,
      O => \lvds_read_process.temp_sync_word[0]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[2]\,
      I3 => \lvds_sync_word[0]_i_2_n_0\,
      O => \lvds_read_process.temp_sync_word[0]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFFFAAAAAA00"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word[1]_i_2_n_0\,
      I1 => \lvds_sync_word[0]_i_2_n_0\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \lvds_read_process.temp_data_words[0][1]_i_1_n_0\,
      I4 => \lvds_read_process.temp_sync_word[4]_i_3_n_0\,
      I5 => \lvds_read_process.temp_sync_word_reg_n_0_[1]\,
      O => \lvds_read_process.temp_sync_word[1]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C480FFFFC480C480"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \lvds_read_process.temp_sync_word_reg_n_0_[1]\,
      I2 => \lvds_read_process.temp_sync_word[1]_i_3_n_0\,
      I3 => \i_reg_n_0_[2]\,
      I4 => \lvds_sync_word[1]_i_2_n_0\,
      I5 => lvds_sync,
      O => \lvds_read_process.temp_sync_word[1]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FF77FF77FF7F"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => temp_sync_word32_in,
      I2 => \bitslip_reg_n_0_[2]\,
      I3 => \bitslip_reg_n_0_[3]\,
      I4 => \bitslip_reg_n_0_[0]\,
      I5 => \bitslip_reg_n_0_[1]\,
      O => \lvds_read_process.temp_sync_word[1]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFFF0F0F000"
    )
        port map (
      I0 => \lvds_sync_word[0]_i_2_n_0\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \lvds_read_process.temp_sync_word[2]_i_2_n_0\,
      I3 => \lvds_read_process.temp_data_words[0][2]_i_1_n_0\,
      I4 => \lvds_read_process.temp_sync_word[4]_i_3_n_0\,
      I5 => \lvds_read_process.temp_sync_word_reg_n_0_[2]\,
      O => \lvds_read_process.temp_sync_word[2]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C480FFFFC480C480"
    )
        port map (
      I0 => \i_reg_n_0_[0]\,
      I1 => \lvds_read_process.temp_sync_word_reg_n_0_[2]\,
      I2 => \lvds_read_process.temp_sync_word[2]_i_3_n_0\,
      I3 => \i_reg_n_0_[2]\,
      I4 => \lvds_sync_word[2]_i_2_n_0\,
      I5 => lvds_sync,
      O => \lvds_read_process.temp_sync_word[2]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FFF7F"
    )
        port map (
      I0 => \bitslip_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[2]\,
      I2 => temp_sync_word32_in,
      I3 => \bitslip_reg_n_0_[3]\,
      I4 => \bitslip_reg_n_0_[2]\,
      O => \lvds_read_process.temp_sync_word[2]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEE0000"
    )
        port map (
      I0 => mux16_out(3),
      I1 => \lvds_read_process.temp_sync_word[3]_i_2_n_0\,
      I2 => \bitslip_reg_n_0_[0]\,
      I3 => \lvds_read_process.temp_sync_word[6]_i_2_n_0\,
      I4 => \lvds_read_process.temp_sync_word[3]_i_3_n_0\,
      I5 => \lvds_read_process.temp_sync_word_reg_n_0_[3]\,
      O => \lvds_read_process.temp_sync_word[3]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => temp_sync_word32_in,
      I2 => \bitslip_reg_n_0_[3]\,
      I3 => \bitslip_reg_n_0_[2]\,
      O => \lvds_read_process.temp_sync_word[3]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080C080808080808"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word[3]_i_4_n_0\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \lvds_sync_word[0]_i_2_n_0\,
      I3 => \i_reg_n_0_[2]\,
      I4 => \i_reg_n_0_[0]\,
      I5 => s00_axis_aresetn,
      O => \lvds_read_process.temp_sync_word[3]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => temp_sync_word32_in,
      I1 => \bitslip_reg_n_0_[3]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => s00_axis_aresetn,
      I4 => \i[2]_i_2_n_0\,
      O => \lvds_read_process.temp_sync_word[3]_i_4_n_0\
    );
\lvds_read_process.temp_sync_word[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word[4]_i_2_n_0\,
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      I2 => s00_axis_aresetn,
      I3 => \lvds_read_process.temp_sync_word[4]_i_3_n_0\,
      I4 => \lvds_read_process.temp_sync_word_reg_n_0_[4]\,
      O => \lvds_read_process.temp_sync_word[4]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEAAAAAABA"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word[4]_i_4_n_0\,
      I1 => \i[0]_i_2_n_0\,
      I2 => lvds_sync,
      I3 => \i_reg_n_0_[1]\,
      I4 => \i_reg_n_0_[0]\,
      I5 => \lvds_read_process.temp_sync_word_reg_n_0_[4]\,
      O => \lvds_read_process.temp_sync_word[4]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \i[2]_i_2_n_0\,
      I2 => lvds_word_ready_i_2_n_0,
      I3 => temp_sync_word32_in,
      I4 => \bitslip_reg_n_0_[3]\,
      O => \lvds_read_process.temp_sync_word[4]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00DF00FF000000"
    )
        port map (
      I0 => temp_sync_word32_in,
      I1 => \bitslip_reg_n_0_[3]\,
      I2 => \bitslip_reg_n_0_[2]\,
      I3 => \lvds_read_process.temp_sync_word_reg_n_0_[4]\,
      I4 => \i_reg_n_0_[1]\,
      I5 => \i_reg_n_0_[0]\,
      O => \lvds_read_process.temp_sync_word[4]_i_4_n_0\
    );
\lvds_read_process.temp_sync_word[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFF400"
    )
        port map (
      I0 => \lvds_sync_word[5]_i_2_n_0\,
      I1 => lvds_sync,
      I2 => \lvds_read_process.temp_sync_word[5]_i_2_n_0\,
      I3 => \lvds_read_process.temp_sync_word[5]_i_3_n_0\,
      I4 => \lvds_read_process.temp_sync_word_reg_n_0_[5]\,
      O => \lvds_read_process.temp_sync_word[5]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E0000000000"
    )
        port map (
      I0 => \bitslip_reg_n_0_[0]\,
      I1 => \bitslip_reg_n_0_[1]\,
      I2 => lvds_word_ready_i_2_n_0,
      I3 => temp_sync_word32_in,
      I4 => \bitslip_reg_n_0_[3]\,
      I5 => \bitslip_reg_n_0_[2]\,
      O => \lvds_read_process.temp_sync_word[5]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000040F000000000"
    )
        port map (
      I0 => \i[1]_i_2_n_0\,
      I1 => \i[2]_i_2_n_0\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => \i[0]_i_2_n_0\,
      I5 => s00_axis_aresetn,
      O => \lvds_read_process.temp_sync_word[5]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8B8AAAAAAAA"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[6]\,
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      I2 => lvds_sync,
      I3 => \bitslip_reg_n_0_[2]\,
      I4 => \lvds_read_process.temp_sync_word[6]_i_2_n_0\,
      I5 => \lvds_read_process.temp_sync_word[6]_i_3_n_0\,
      O => \lvds_read_process.temp_sync_word[6]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      I1 => temp_sync_word32_in,
      I2 => \bitslip_reg_n_0_[3]\,
      I3 => \bitslip_reg_n_0_[1]\,
      O => \lvds_read_process.temp_sync_word[6]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000F000000000"
    )
        port map (
      I0 => \i[2]_i_2_n_0\,
      I1 => \i[1]_i_2_n_0\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i[0]_i_2_n_0\,
      I4 => \i_reg_n_0_[0]\,
      I5 => s00_axis_aresetn,
      O => \lvds_read_process.temp_sync_word[6]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => lvds_word_ready_i_2_n_0,
      O => \lvds_read_process.temp_sync_word[7]_i_1_n_0\
    );
\lvds_read_process.temp_sync_word[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCECECECECECECEC"
    )
        port map (
      I0 => \bitslip_reg_n_0_[3]\,
      I1 => mux16_out(7),
      I2 => \lvds_read_process.temp_sync_word[7]_i_3_n_0\,
      I3 => \bitslip_reg_n_0_[1]\,
      I4 => \bitslip_reg_n_0_[0]\,
      I5 => \bitslip_reg_n_0_[2]\,
      O => \lvds_read_process.temp_sync_word[7]_i_2_n_0\
    );
\lvds_read_process.temp_sync_word[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bitslip_reg_n_0_[3]\,
      I1 => temp_sync_word32_in,
      I2 => lvds_word_ready_i_2_n_0,
      O => \lvds_read_process.temp_sync_word[7]_i_3_n_0\
    );
\lvds_read_process.temp_sync_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[0]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[0]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[1]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[1]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[2]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[2]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[3]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[3]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[4]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[4]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[5]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[5]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => '1',
      D => \lvds_read_process.temp_sync_word[6]_i_1_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[6]\,
      R => '0'
    );
\lvds_read_process.temp_sync_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => lvds_clk,
      CE => \lvds_read_process.temp_sync_word[7]_i_1_n_0\,
      D => \lvds_read_process.temp_sync_word[7]_i_2_n_0\,
      Q => \lvds_read_process.temp_sync_word_reg_n_0_[7]\,
      R => '0'
    );
\lvds_sync_word[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[2]\,
      I4 => \lvds_sync_word[0]_i_2_n_0\,
      I5 => lvds_sync,
      O => mux16_out(0)
    );
\lvds_sync_word[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => lvds_word_ready_i_5_n_0,
      I1 => lvds_word_ready_i_4_n_0,
      I2 => lvds_word_ready_i_3_n_0,
      O => \lvds_sync_word[0]_i_2_n_0\
    );
\lvds_sync_word[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[1]\,
      I1 => \lvds_sync_word[1]_i_2_n_0\,
      I2 => lvds_sync,
      O => mux16_out(1)
    );
\lvds_sync_word[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \i_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[2]\,
      I3 => lvds_word_ready_i_5_n_0,
      I4 => lvds_word_ready_i_4_n_0,
      I5 => lvds_word_ready_i_3_n_0,
      O => \lvds_sync_word[1]_i_2_n_0\
    );
\lvds_sync_word[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[2]\,
      I1 => \lvds_sync_word[2]_i_2_n_0\,
      I2 => lvds_sync,
      O => mux16_out(2)
    );
\lvds_sync_word[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => lvds_word_ready_i_3_n_0,
      I2 => lvds_word_ready_i_4_n_0,
      I3 => lvds_word_ready_i_5_n_0,
      I4 => \i_reg_n_0_[2]\,
      I5 => \i_reg_n_0_[0]\,
      O => \lvds_sync_word[2]_i_2_n_0\
    );
\lvds_sync_word[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[3]\,
      I1 => \lvds_sync_word[3]_i_2_n_0\,
      I2 => lvds_sync,
      O => mux16_out(3)
    );
\lvds_sync_word[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => lvds_word_ready_i_3_n_0,
      I2 => lvds_word_ready_i_4_n_0,
      I3 => lvds_word_ready_i_5_n_0,
      I4 => \i_reg_n_0_[2]\,
      I5 => \i_reg_n_0_[0]\,
      O => \lvds_sync_word[3]_i_2_n_0\
    );
\lvds_sync_word[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[4]\,
      I1 => \lvds_sync_word[4]_i_2_n_0\,
      I2 => lvds_sync,
      O => mux16_out(4)
    );
\lvds_sync_word[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i[0]_i_2_n_0\,
      O => \lvds_sync_word[4]_i_2_n_0\
    );
\lvds_sync_word[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[5]\,
      I1 => \lvds_sync_word[5]_i_2_n_0\,
      I2 => lvds_sync,
      O => mux16_out(5)
    );
\lvds_sync_word[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \i_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i[0]_i_2_n_0\,
      O => \lvds_sync_word[5]_i_2_n_0\
    );
\lvds_sync_word[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[6]\,
      I1 => \lvds_sync_word[6]_i_2_n_0\,
      I2 => lvds_sync,
      O => mux16_out(6)
    );
\lvds_sync_word[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => lvds_word_ready_i_3_n_0,
      I2 => lvds_word_ready_i_4_n_0,
      I3 => lvds_word_ready_i_5_n_0,
      I4 => \i_reg_n_0_[2]\,
      I5 => \i_reg_n_0_[0]\,
      O => \lvds_sync_word[6]_i_2_n_0\
    );
\lvds_sync_word[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lvds_read_process.temp_sync_word_reg_n_0_[7]\,
      I1 => lvds_word_ready_i_2_n_0,
      I2 => lvds_sync,
      O => mux16_out(7)
    );
\lvds_sync_word_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(0),
      Q => data0(2)
    );
\lvds_sync_word_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(1),
      Q => data0(3)
    );
\lvds_sync_word_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(2),
      Q => data0(4)
    );
\lvds_sync_word_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(3),
      Q => data0(5)
    );
\lvds_sync_word_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(4),
      Q => data0(6)
    );
\lvds_sync_word_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(5),
      Q => data0(7)
    );
\lvds_sync_word_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(6),
      Q => data0(0)
    );
\lvds_sync_word_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => lvds_word_ready,
      CLR => \^fifo_srst\,
      D => mux16_out(7),
      Q => p_0_in(0)
    );
lvds_word_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lvds_word_ready_i_2_n_0,
      O => lvds_word_ready
    );
lvds_word_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => lvds_word_ready_i_3_n_0,
      I2 => lvds_word_ready_i_4_n_0,
      I3 => lvds_word_ready_i_5_n_0,
      I4 => \i_reg_n_0_[2]\,
      I5 => \i_reg_n_0_[0]\,
      O => lvds_word_ready_i_2_n_0
    );
lvds_word_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => lvds_word_ready_i_6_n_0,
      I1 => \i_reg_n_0_[23]\,
      I2 => \i_reg_n_0_[22]\,
      I3 => \i_reg_n_0_[25]\,
      I4 => \i_reg_n_0_[24]\,
      I5 => lvds_word_ready_i_7_n_0,
      O => lvds_word_ready_i_3_n_0
    );
lvds_word_ready_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \i_reg_n_0_[8]\,
      I1 => \i_reg_n_0_[9]\,
      I2 => \i_reg_n_0_[6]\,
      I3 => \i_reg_n_0_[7]\,
      I4 => lvds_word_ready_i_8_n_0,
      O => lvds_word_ready_i_4_n_0
    );
lvds_word_ready_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \i_reg_n_0_[16]\,
      I1 => \i_reg_n_0_[17]\,
      I2 => \i_reg_n_0_[14]\,
      I3 => \i_reg_n_0_[15]\,
      I4 => lvds_word_ready_i_9_n_0,
      O => lvds_word_ready_i_5_n_0
    );
lvds_word_ready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[27]\,
      I1 => \i_reg_n_0_[26]\,
      I2 => \i_reg_n_0_[29]\,
      I3 => \i_reg_n_0_[28]\,
      O => lvds_word_ready_i_6_n_0
    );
lvds_word_ready_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \i_reg_n_0_[3]\,
      I1 => \i_reg_n_0_[30]\,
      I2 => \i_reg_n_0_[31]\,
      I3 => \i_reg_n_0_[5]\,
      I4 => \i_reg_n_0_[4]\,
      O => lvds_word_ready_i_7_n_0
    );
lvds_word_ready_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[11]\,
      I1 => \i_reg_n_0_[10]\,
      I2 => \i_reg_n_0_[13]\,
      I3 => \i_reg_n_0_[12]\,
      O => lvds_word_ready_i_8_n_0
    );
lvds_word_ready_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[19]\,
      I1 => \i_reg_n_0_[18]\,
      I2 => \i_reg_n_0_[21]\,
      I3 => \i_reg_n_0_[20]\,
      O => lvds_word_ready_i_9_n_0
    );
lvds_word_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => lvds_clk,
      CE => '1',
      CLR => \^fifo_srst\,
      D => lvds_word_ready,
      Q => lvds_word_ready_reg_n_0
    );
\nb_kernel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000007FF0F0F080"
    )
        port map (
      I0 => pixel_polarity(0),
      I1 => \fifo_din[63]_i_3_n_0\,
      I2 => \FSM_onehot_DState_reg_n_0_[6]\,
      I3 => \FSM_onehot_DState_reg_n_0_[7]\,
      I4 => \nb_kernel[0]_i_2_n_0\,
      I5 => \nb_kernel_reg_n_0_[0]\,
      O => \nb_kernel[0]_i_1_n_0\
    );
\nb_kernel[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => data0(7),
      I1 => data0(6),
      I2 => data0(4),
      I3 => data0(0),
      I4 => \FSM_onehot_DState_reg_n_0_[4]\,
      I5 => \FSM_onehot_DState[8]_i_10_n_0\,
      O => \nb_kernel[0]_i_2_n_0\
    );
\nb_kernel_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => lvds_word_ready_reg_n_0,
      CE => '1',
      CLR => \^fifo_srst\,
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
      C => lvds_word_ready_reg_n_0,
      CE => '1',
      CLR => \^fifo_srst\,
      D => \pixel_polarity[0]_i_1_n_0\,
      Q => pixel_polarity(0)
    );
\temp_sync_word3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_temp_sync_word3_inferred__0/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => temp_sync_word32_in,
      CO(0) => \temp_sync_word3_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry_i_1_n_0\,
      DI(0) => \i__carry_i_2_n_0\,
      O(3 downto 0) => \NLW_temp_sync_word3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_lvds_stream_0_1 is
  port (
    lvds_clk : in STD_LOGIC;
    lvds_sync : in STD_LOGIC;
    lvds_data : in STD_LOGIC_VECTOR ( 0 to 3 );
    trigger0 : out STD_LOGIC;
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
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
  attribute x_interface_info of lvds_clk : signal is "onsemi:user:noip_lvds:1.0 noip_lvds lvds_clock, xilinx.com:signal:clock:1.0 lvds_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of lvds_clk : signal is "XIL_INTERFACENAME lvds_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of lvds_sync : signal is "onsemi:user:noip_lvds:1.0 noip_lvds lvds_sync";
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of fifo_din : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write WR_DATA";
  attribute x_interface_info of fifo_dout : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read RD_DATA";
  attribute x_interface_info of lvds_data : signal is "onsemi:user:noip_lvds:1.0 noip_lvds lvds_data";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  fifo_rd_en <= \<const1>\;
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
      fifo_din(63 downto 0) => fifo_din(63 downto 0),
      fifo_srst => fifo_srst,
      fifo_wr_en => fifo_wr_en,
      lvds_clk => lvds_clk,
      lvds_data(0 to 3) => lvds_data(0 to 3),
      lvds_sync => lvds_sync,
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
