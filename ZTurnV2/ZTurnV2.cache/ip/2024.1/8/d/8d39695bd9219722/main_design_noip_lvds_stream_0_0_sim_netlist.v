// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Jul 29 13:59:47 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ main_design_noip_lvds_stream_0_0_sim_netlist.v
// Design      : main_design_noip_lvds_stream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_design_noip_lvds_stream_0_0,noip_lvds_stream,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "noip_lvds_stream,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (lvds_clk,
    lvds_sync,
    lvds_data,
    trigger0,
    monitor0,
    monitor1,
    fifo_srst,
    fifo_full,
    fifo_din,
    fifo_wr_en,
    fifo_empty,
    fifo_dout,
    fifo_rd_en,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* x_interface_info = "onsemi:user:noip_lvds:1.0 noip_lvds lvds_clock, xilinx.com:signal:clock:1.0 lvds_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME lvds_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input lvds_clk;
  (* x_interface_info = "onsemi:user:noip_lvds:1.0 noip_lvds lvds_sync" *) input lvds_sync;
  (* x_interface_info = "onsemi:user:noip_lvds:1.0 noip_lvds lvds_data" *) input [0:3]lvds_data;
  output trigger0;
  input monitor0;
  input monitor1;
  output fifo_srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 fifo_write FULL" *) input fifo_full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 fifo_write WR_DATA" *) output [63:0]fifo_din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 fifo_write WR_EN" *) output fifo_wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 fifo_read EMPTY" *) input fifo_empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 fifo_read RD_DATA" *) input [31:0]fifo_dout;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 fifo_read RD_EN" *) output fifo_rd_en;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]fifo_din;
  wire fifo_srst;
  wire fifo_wr_en;
  wire lvds_clk;
  wire [0:3]lvds_data;
  wire lvds_sync;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign fifo_rd_en = \<const1> ;
  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign m00_axis_tvalid = \<const0> ;
  assign trigger0 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_lvds_stream U0
       (.fifo_din(fifo_din),
        .fifo_srst(fifo_srst),
        .fifo_wr_en(fifo_wr_en),
        .lvds_clk(lvds_clk),
        .lvds_data(lvds_data),
        .lvds_sync(lvds_sync),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_lvds_stream
   (fifo_srst,
    fifo_din,
    s00_axis_tready,
    fifo_wr_en,
    lvds_clk,
    lvds_sync,
    lvds_data,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_tlast,
    s00_axis_aclk);
  output fifo_srst;
  output [63:0]fifo_din;
  output s00_axis_tready;
  output fifo_wr_en;
  input lvds_clk;
  input lvds_sync;
  input [0:3]lvds_data;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input s00_axis_tlast;
  input s00_axis_aclk;

  wire \FSM_onehot_DState[1]_i_1_n_0 ;
  wire \FSM_onehot_DState[5]_i_1_n_0 ;
  wire \FSM_onehot_DState[7]_i_1_n_0 ;
  wire \FSM_onehot_DState[8]_i_1_n_0 ;
  wire \FSM_onehot_DState[8]_i_2_n_0 ;
  wire \FSM_onehot_DState[8]_i_3_n_0 ;
  wire \FSM_onehot_DState[8]_i_4_n_0 ;
  wire \FSM_onehot_DState[8]_i_5_n_0 ;
  wire \FSM_onehot_DState[8]_i_6_n_0 ;
  wire \FSM_onehot_DState[8]_i_7_n_0 ;
  wire \FSM_onehot_DState[8]_i_8_n_0 ;
  wire \FSM_onehot_DState[8]_i_9_n_0 ;
  wire \FSM_onehot_DState_reg_n_0_[0] ;
  wire \FSM_onehot_DState_reg_n_0_[1] ;
  wire \FSM_onehot_DState_reg_n_0_[2] ;
  wire \FSM_onehot_DState_reg_n_0_[3] ;
  wire \FSM_onehot_DState_reg_n_0_[4] ;
  wire \FSM_onehot_DState_reg_n_0_[5] ;
  wire \FSM_onehot_DState_reg_n_0_[6] ;
  wire \FSM_onehot_DState_reg_n_0_[7] ;
  wire \FSM_onehot_DState_reg_n_0_[8] ;
  wire \bitslip[0]_i_2_n_0 ;
  wire \bitslip[0]_i_3_n_0 ;
  wire \bitslip[0]_i_4_n_0 ;
  wire \bitslip[1]_i_2_n_0 ;
  wire \bitslip[1]_i_3_n_0 ;
  wire \bitslip[2]_i_2_n_0 ;
  wire \bitslip[2]_i_3_n_0 ;
  wire \bitslip[2]_i_4_n_0 ;
  wire \bitslip[3]_i_10_n_0 ;
  wire \bitslip[3]_i_11_n_0 ;
  wire \bitslip[3]_i_1_n_0 ;
  wire \bitslip[3]_i_3_n_0 ;
  wire \bitslip[3]_i_4_n_0 ;
  wire \bitslip[3]_i_5_n_0 ;
  wire \bitslip[3]_i_6_n_0 ;
  wire \bitslip[3]_i_7_n_0 ;
  wire \bitslip[3]_i_8_n_0 ;
  wire \bitslip[3]_i_9_n_0 ;
  wire [3:0]bitslip__0;
  wire [31:1]data1;
  wire [63:0]fifo_din;
  wire \fifo_din[0]_i_1_n_0 ;
  wire \fifo_din[10]_i_1_n_0 ;
  wire \fifo_din[11]_i_1_n_0 ;
  wire \fifo_din[12]_i_1_n_0 ;
  wire \fifo_din[13]_i_1_n_0 ;
  wire \fifo_din[14]_i_1_n_0 ;
  wire \fifo_din[15]_i_1_n_0 ;
  wire \fifo_din[16]_i_1_n_0 ;
  wire \fifo_din[17]_i_1_n_0 ;
  wire \fifo_din[18]_i_1_n_0 ;
  wire \fifo_din[19]_i_1_n_0 ;
  wire \fifo_din[1]_i_1_n_0 ;
  wire \fifo_din[20]_i_1_n_0 ;
  wire \fifo_din[21]_i_1_n_0 ;
  wire \fifo_din[22]_i_1_n_0 ;
  wire \fifo_din[23]_i_1_n_0 ;
  wire \fifo_din[24]_i_1_n_0 ;
  wire \fifo_din[25]_i_1_n_0 ;
  wire \fifo_din[26]_i_1_n_0 ;
  wire \fifo_din[27]_i_1_n_0 ;
  wire \fifo_din[28]_i_1_n_0 ;
  wire \fifo_din[29]_i_1_n_0 ;
  wire \fifo_din[2]_i_1_n_0 ;
  wire \fifo_din[30]_i_1_n_0 ;
  wire \fifo_din[31]_i_1_n_0 ;
  wire \fifo_din[32]_i_1_n_0 ;
  wire \fifo_din[33]_i_1_n_0 ;
  wire \fifo_din[34]_i_1_n_0 ;
  wire \fifo_din[35]_i_1_n_0 ;
  wire \fifo_din[36]_i_1_n_0 ;
  wire \fifo_din[37]_i_1_n_0 ;
  wire \fifo_din[38]_i_1_n_0 ;
  wire \fifo_din[39]_i_1_n_0 ;
  wire \fifo_din[3]_i_1_n_0 ;
  wire \fifo_din[40]_i_1_n_0 ;
  wire \fifo_din[41]_i_1_n_0 ;
  wire \fifo_din[42]_i_1_n_0 ;
  wire \fifo_din[43]_i_1_n_0 ;
  wire \fifo_din[44]_i_1_n_0 ;
  wire \fifo_din[45]_i_1_n_0 ;
  wire \fifo_din[46]_i_1_n_0 ;
  wire \fifo_din[47]_i_1_n_0 ;
  wire \fifo_din[48]_i_1_n_0 ;
  wire \fifo_din[49]_i_1_n_0 ;
  wire \fifo_din[4]_i_1_n_0 ;
  wire \fifo_din[50]_i_1_n_0 ;
  wire \fifo_din[51]_i_1_n_0 ;
  wire \fifo_din[52]_i_1_n_0 ;
  wire \fifo_din[53]_i_1_n_0 ;
  wire \fifo_din[54]_i_1_n_0 ;
  wire \fifo_din[55]_i_1_n_0 ;
  wire \fifo_din[56]_i_1_n_0 ;
  wire \fifo_din[57]_i_1_n_0 ;
  wire \fifo_din[58]_i_1_n_0 ;
  wire \fifo_din[59]_i_1_n_0 ;
  wire \fifo_din[5]_i_1_n_0 ;
  wire \fifo_din[60]_i_1_n_0 ;
  wire \fifo_din[61]_i_1_n_0 ;
  wire \fifo_din[62]_i_1_n_0 ;
  wire \fifo_din[63]_i_1_n_0 ;
  wire \fifo_din[63]_i_2_n_0 ;
  wire \fifo_din[63]_i_3_n_0 ;
  wire \fifo_din[63]_i_4_n_0 ;
  wire \fifo_din[6]_i_1_n_0 ;
  wire \fifo_din[7]_i_1_n_0 ;
  wire \fifo_din[8]_i_1_n_0 ;
  wire \fifo_din[9]_i_1_n_0 ;
  wire fifo_srst;
  wire fifo_wr_en;
  wire fifo_wr_en_i_1_n_0;
  wire fifo_wr_en_i_2_n_0;
  wire [3:0]findbitslip;
  wire [31:0]i;
  wire \i[0]_i_2_n_0 ;
  wire \i[0]_i_3_n_0 ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire \i_reg[12]_i_2_n_0 ;
  wire \i_reg[12]_i_2_n_1 ;
  wire \i_reg[12]_i_2_n_2 ;
  wire \i_reg[12]_i_2_n_3 ;
  wire \i_reg[16]_i_2_n_0 ;
  wire \i_reg[16]_i_2_n_1 ;
  wire \i_reg[16]_i_2_n_2 ;
  wire \i_reg[16]_i_2_n_3 ;
  wire \i_reg[20]_i_2_n_0 ;
  wire \i_reg[20]_i_2_n_1 ;
  wire \i_reg[20]_i_2_n_2 ;
  wire \i_reg[20]_i_2_n_3 ;
  wire \i_reg[24]_i_2_n_0 ;
  wire \i_reg[24]_i_2_n_1 ;
  wire \i_reg[24]_i_2_n_2 ;
  wire \i_reg[24]_i_2_n_3 ;
  wire \i_reg[28]_i_2_n_0 ;
  wire \i_reg[28]_i_2_n_1 ;
  wire \i_reg[28]_i_2_n_2 ;
  wire \i_reg[28]_i_2_n_3 ;
  wire \i_reg[31]_i_2_n_2 ;
  wire \i_reg[31]_i_2_n_3 ;
  wire \i_reg[4]_i_2_n_0 ;
  wire \i_reg[4]_i_2_n_1 ;
  wire \i_reg[4]_i_2_n_2 ;
  wire \i_reg[4]_i_2_n_3 ;
  wire \i_reg[8]_i_2_n_0 ;
  wire \i_reg[8]_i_2_n_1 ;
  wire \i_reg[8]_i_2_n_2 ;
  wire \i_reg[8]_i_2_n_3 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[10] ;
  wire \i_reg_n_0_[11] ;
  wire \i_reg_n_0_[12] ;
  wire \i_reg_n_0_[13] ;
  wire \i_reg_n_0_[14] ;
  wire \i_reg_n_0_[15] ;
  wire \i_reg_n_0_[16] ;
  wire \i_reg_n_0_[17] ;
  wire \i_reg_n_0_[18] ;
  wire \i_reg_n_0_[19] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[20] ;
  wire \i_reg_n_0_[21] ;
  wire \i_reg_n_0_[22] ;
  wire \i_reg_n_0_[23] ;
  wire \i_reg_n_0_[24] ;
  wire \i_reg_n_0_[25] ;
  wire \i_reg_n_0_[26] ;
  wire \i_reg_n_0_[27] ;
  wire \i_reg_n_0_[28] ;
  wire \i_reg_n_0_[29] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[30] ;
  wire \i_reg_n_0_[31] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire \i_reg_n_0_[8] ;
  wire \i_reg_n_0_[9] ;
  wire [63:0]in20;
  wire \kernel[0][0]_i_1_n_0 ;
  wire \kernel[0][1]_i_1_n_0 ;
  wire \kernel[0][2]_i_1_n_0 ;
  wire \kernel[0][3]_i_1_n_0 ;
  wire \kernel[0][4]_i_1_n_0 ;
  wire \kernel[0][5]_i_1_n_0 ;
  wire \kernel[0][6]_i_1_n_0 ;
  wire \kernel[0][7]_i_1_n_0 ;
  wire \kernel[0][7]_i_2_n_0 ;
  wire \kernel[1][0]_i_1_n_0 ;
  wire \kernel[1][1]_i_1_n_0 ;
  wire \kernel[1][2]_i_1_n_0 ;
  wire \kernel[1][3]_i_1_n_0 ;
  wire \kernel[1][4]_i_1_n_0 ;
  wire \kernel[1][5]_i_1_n_0 ;
  wire \kernel[1][6]_i_1_n_0 ;
  wire \kernel[1][7]_i_1_n_0 ;
  wire \kernel[1][7]_i_2_n_0 ;
  wire \kernel[2][0]_i_1_n_0 ;
  wire \kernel[2][1]_i_1_n_0 ;
  wire \kernel[2][2]_i_1_n_0 ;
  wire \kernel[2][3]_i_1_n_0 ;
  wire \kernel[2][4]_i_1_n_0 ;
  wire \kernel[2][5]_i_1_n_0 ;
  wire \kernel[2][6]_i_1_n_0 ;
  wire \kernel[2][7]_i_1_n_0 ;
  wire \kernel[3][0]_i_1_n_0 ;
  wire \kernel[3][1]_i_1_n_0 ;
  wire \kernel[3][2]_i_1_n_0 ;
  wire \kernel[3][3]_i_1_n_0 ;
  wire \kernel[3][4]_i_1_n_0 ;
  wire \kernel[3][5]_i_1_n_0 ;
  wire \kernel[3][6]_i_1_n_0 ;
  wire \kernel[3][7]_i_1_n_0 ;
  wire \kernel[4][0]_i_1_n_0 ;
  wire \kernel[4][1]_i_1_n_0 ;
  wire \kernel[4][2]_i_1_n_0 ;
  wire \kernel[4][3]_i_1_n_0 ;
  wire \kernel[4][4]_i_1_n_0 ;
  wire \kernel[4][5]_i_1_n_0 ;
  wire \kernel[4][6]_i_1_n_0 ;
  wire \kernel[4][7]_i_1_n_0 ;
  wire \kernel[5][0]_i_1_n_0 ;
  wire \kernel[5][1]_i_1_n_0 ;
  wire \kernel[5][2]_i_1_n_0 ;
  wire \kernel[5][3]_i_1_n_0 ;
  wire \kernel[5][4]_i_1_n_0 ;
  wire \kernel[5][5]_i_1_n_0 ;
  wire \kernel[5][6]_i_1_n_0 ;
  wire \kernel[5][7]_i_1_n_0 ;
  wire \kernel[6][0]_i_1_n_0 ;
  wire \kernel[6][1]_i_1_n_0 ;
  wire \kernel[6][2]_i_1_n_0 ;
  wire \kernel[6][3]_i_1_n_0 ;
  wire \kernel[6][4]_i_1_n_0 ;
  wire \kernel[6][5]_i_1_n_0 ;
  wire \kernel[6][6]_i_1_n_0 ;
  wire \kernel[6][7]_i_1_n_0 ;
  wire \kernel[7][0]_i_1_n_0 ;
  wire \kernel[7][1]_i_1_n_0 ;
  wire \kernel[7][2]_i_1_n_0 ;
  wire \kernel[7][3]_i_1_n_0 ;
  wire \kernel[7][4]_i_1_n_0 ;
  wire \kernel[7][5]_i_1_n_0 ;
  wire \kernel[7][6]_i_1_n_0 ;
  wire \kernel[7][7]_i_1_n_0 ;
  wire lvds_clk;
  wire [0:3]lvds_data;
  wire \lvds_data_words[0][0]_i_1_n_0 ;
  wire \lvds_data_words[0][1]_i_1_n_0 ;
  wire \lvds_data_words[0][2]_i_1_n_0 ;
  wire \lvds_data_words[0][3]_i_1_n_0 ;
  wire \lvds_data_words[0][4]_i_1_n_0 ;
  wire \lvds_data_words[0][5]_i_1_n_0 ;
  wire \lvds_data_words[0][6]_i_1_n_0 ;
  wire [7:0]\lvds_data_words_reg[1]_2 ;
  wire [7:0]\lvds_data_words_reg[2]_1 ;
  wire [7:0]\lvds_data_words_reg[3]_0 ;
  wire \lvds_data_words_reg_n_0_[0][0] ;
  wire \lvds_data_words_reg_n_0_[0][1] ;
  wire \lvds_data_words_reg_n_0_[0][2] ;
  wire \lvds_data_words_reg_n_0_[0][3] ;
  wire \lvds_data_words_reg_n_0_[0][4] ;
  wire \lvds_data_words_reg_n_0_[0][5] ;
  wire \lvds_data_words_reg_n_0_[0][6] ;
  wire \lvds_data_words_reg_n_0_[0][7] ;
  wire lvds_sync;
  wire [7:3]lvds_sync_word;
  wire lvds_sync_word33_in;
  wire \lvds_sync_word3_inferred__0/i__carry_n_3 ;
  wire \lvds_sync_word[0]_i_1_n_0 ;
  wire \lvds_sync_word[0]_i_2_n_0 ;
  wire \lvds_sync_word[0]_i_3_n_0 ;
  wire \lvds_sync_word[1]_i_1_n_0 ;
  wire \lvds_sync_word[1]_i_2_n_0 ;
  wire \lvds_sync_word[1]_i_3_n_0 ;
  wire \lvds_sync_word[1]_i_4_n_0 ;
  wire \lvds_sync_word[1]_i_5_n_0 ;
  wire \lvds_sync_word[2]_i_1_n_0 ;
  wire \lvds_sync_word[2]_i_2_n_0 ;
  wire \lvds_sync_word[2]_i_3_n_0 ;
  wire \lvds_sync_word[2]_i_4_n_0 ;
  wire \lvds_sync_word[2]_i_5_n_0 ;
  wire \lvds_sync_word[3]_i_1_n_0 ;
  wire \lvds_sync_word[3]_i_2_n_0 ;
  wire \lvds_sync_word[3]_i_3_n_0 ;
  wire \lvds_sync_word[3]_i_4_n_0 ;
  wire \lvds_sync_word[3]_i_6_n_0 ;
  wire \lvds_sync_word[4]_i_1_n_0 ;
  wire \lvds_sync_word[4]_i_2_n_0 ;
  wire \lvds_sync_word[4]_i_3_n_0 ;
  wire \lvds_sync_word[4]_i_4_n_0 ;
  wire \lvds_sync_word[4]_i_5_n_0 ;
  wire \lvds_sync_word[5]_i_1_n_0 ;
  wire \lvds_sync_word[5]_i_2_n_0 ;
  wire \lvds_sync_word[5]_i_3_n_0 ;
  wire \lvds_sync_word[5]_i_4_n_0 ;
  wire \lvds_sync_word[6]_i_1_n_0 ;
  wire \lvds_sync_word[6]_i_2_n_0 ;
  wire \lvds_sync_word[6]_i_3_n_0 ;
  wire \lvds_sync_word[6]_i_4_n_0 ;
  wire \lvds_sync_word[7]_i_10_n_0 ;
  wire \lvds_sync_word[7]_i_11_n_0 ;
  wire \lvds_sync_word[7]_i_12_n_0 ;
  wire \lvds_sync_word[7]_i_13_n_0 ;
  wire \lvds_sync_word[7]_i_2_n_0 ;
  wire \lvds_sync_word[7]_i_3_n_0 ;
  wire \lvds_sync_word[7]_i_4_n_0 ;
  wire \lvds_sync_word[7]_i_5_n_0 ;
  wire \lvds_sync_word[7]_i_6_n_0 ;
  wire \lvds_sync_word[7]_i_7_n_0 ;
  wire \lvds_sync_word[7]_i_8_n_0 ;
  wire \lvds_sync_word[7]_i_9_n_0 ;
  wire lvds_word_ready_reg_n_0;
  wire \nb_kernel[0]_i_1_n_0 ;
  wire \nb_kernel[0]_i_2_n_0 ;
  wire \nb_kernel[0]_i_3_n_0 ;
  wire \nb_kernel[0]_i_4_n_0 ;
  wire \nb_kernel[0]_i_5_n_0 ;
  wire \nb_kernel_reg_n_0_[0] ;
  wire [7:0]p_0_in;
  wire [0:0]pixel_polarity;
  wire \pixel_polarity[0]_i_1_n_0 ;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [3:2]\NLW_i_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_lvds_sync_word3_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_lvds_sync_word3_inferred__0/i__carry_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[1]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[0] ),
        .I1(\FSM_onehot_DState_reg_n_0_[8] ),
        .O(\FSM_onehot_DState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[5]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[4] ),
        .I1(\FSM_onehot_DState_reg_n_0_[7] ),
        .O(\FSM_onehot_DState[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_DState[7]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(p_0_in[7]),
        .I2(\fifo_din[63]_i_3_n_0 ),
        .O(\FSM_onehot_DState[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFEEFFEA)) 
    \FSM_onehot_DState[8]_i_1 
       (.I0(\FSM_onehot_DState[8]_i_3_n_0 ),
        .I1(lvds_word_ready_reg_n_0),
        .I2(\FSM_onehot_DState_reg_n_0_[8] ),
        .I3(\FSM_onehot_DState[8]_i_4_n_0 ),
        .I4(\FSM_onehot_DState_reg_n_0_[6] ),
        .I5(\fifo_din[63]_i_3_n_0 ),
        .O(\FSM_onehot_DState[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_DState[8]_i_2 
       (.I0(p_0_in[7]),
        .I1(\fifo_din[63]_i_3_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .O(\FSM_onehot_DState[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4400F400)) 
    \FSM_onehot_DState[8]_i_3 
       (.I0(\bitslip[3]_i_3_n_0 ),
        .I1(\FSM_onehot_DState_reg_n_0_[0] ),
        .I2(\FSM_onehot_DState_reg_n_0_[3] ),
        .I3(lvds_word_ready_reg_n_0),
        .I4(\FSM_onehot_DState[8]_i_5_n_0 ),
        .I5(\FSM_onehot_DState[8]_i_6_n_0 ),
        .O(\FSM_onehot_DState[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \FSM_onehot_DState[8]_i_4 
       (.I0(\FSM_onehot_DState[8]_i_7_n_0 ),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .I3(lvds_word_ready_reg_n_0),
        .I4(p_0_in[4]),
        .I5(p_0_in[3]),
        .O(\FSM_onehot_DState[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[8]_i_5 
       (.I0(\fifo_din[63]_i_3_n_0 ),
        .I1(p_0_in[7]),
        .O(\FSM_onehot_DState[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0E0)) 
    \FSM_onehot_DState[8]_i_6 
       (.I0(\FSM_onehot_DState_reg_n_0_[5] ),
        .I1(\FSM_onehot_DState[8]_i_8_n_0 ),
        .I2(lvds_word_ready_reg_n_0),
        .I3(p_0_in[0]),
        .I4(p_0_in[7]),
        .O(\FSM_onehot_DState[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE0E0000)) 
    \FSM_onehot_DState[8]_i_7 
       (.I0(\FSM_onehot_DState_reg_n_0_[7] ),
        .I1(\FSM_onehot_DState_reg_n_0_[1] ),
        .I2(p_0_in[7]),
        .I3(\FSM_onehot_DState_reg_n_0_[4] ),
        .I4(p_0_in[2]),
        .I5(\FSM_onehot_DState[8]_i_9_n_0 ),
        .O(\FSM_onehot_DState[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \FSM_onehot_DState[8]_i_8 
       (.I0(\bitslip[3]_i_7_n_0 ),
        .I1(p_0_in[5]),
        .I2(p_0_in[6]),
        .I3(\FSM_onehot_DState_reg_n_0_[2] ),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\FSM_onehot_DState[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[8]_i_9 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\FSM_onehot_DState[8]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_DState_reg[0] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .D(1'b0),
        .PRE(fifo_srst),
        .Q(\FSM_onehot_DState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[1] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[2] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState_reg_n_0_[1] ),
        .Q(\FSM_onehot_DState_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[3] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState_reg_n_0_[2] ),
        .Q(\FSM_onehot_DState_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[4] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState_reg_n_0_[3] ),
        .Q(\FSM_onehot_DState_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[5] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState[5]_i_1_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[6] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState_reg_n_0_[5] ),
        .Q(\FSM_onehot_DState_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[7] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState[7]_i_1_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[8] 
       (.C(lvds_clk),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\FSM_onehot_DState[8]_i_2_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'hFEFFFEAEAEFFFEFF)) 
    \bitslip[0]_i_1 
       (.I0(\bitslip[0]_i_2_n_0 ),
        .I1(\bitslip[2]_i_3_n_0 ),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[5]),
        .I5(p_0_in[6]),
        .O(findbitslip[0]));
  LUT6 #(
    .INIT(64'hFFAEFF0CFF0CFFFF)) 
    \bitslip[0]_i_2 
       (.I0(p_0_in[3]),
        .I1(\bitslip[0]_i_3_n_0 ),
        .I2(p_0_in[2]),
        .I3(\bitslip[0]_i_4_n_0 ),
        .I4(p_0_in[1]),
        .I5(p_0_in[4]),
        .O(\bitslip[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bitslip[0]_i_3 
       (.I0(p_0_in[0]),
        .I1(p_0_in[5]),
        .I2(p_0_in[1]),
        .O(\bitslip[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF77FF770AFFFFFF)) 
    \bitslip[0]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[5]),
        .I3(p_0_in[7]),
        .I4(p_0_in[4]),
        .I5(p_0_in[3]),
        .O(\bitslip[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEFFFFFEFEF)) 
    \bitslip[1]_i_1 
       (.I0(\bitslip[1]_i_2_n_0 ),
        .I1(\bitslip[1]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(findbitslip[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF77F999F)) 
    \bitslip[1]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[7]),
        .I2(p_0_in[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .O(\bitslip[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE27FE27FFFFF)) 
    \bitslip[1]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[6]),
        .I4(p_0_in[1]),
        .I5(p_0_in[5]),
        .O(\bitslip[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFFFFFFFFBF)) 
    \bitslip[2]_i_1 
       (.I0(\bitslip[2]_i_2_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\bitslip[2]_i_3_n_0 ),
        .I4(\bitslip[2]_i_4_n_0 ),
        .I5(p_0_in[5]),
        .O(findbitslip[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE2FFF37F)) 
    \bitslip[2]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[7]),
        .I4(p_0_in[0]),
        .O(\bitslip[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA8FF)) 
    \bitslip[2]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[6]),
        .O(\bitslip[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bitslip[2]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .O(\bitslip[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bitslip[3]_i_1 
       (.I0(\bitslip[3]_i_3_n_0 ),
        .I1(lvds_word_ready_reg_n_0),
        .I2(\FSM_onehot_DState_reg_n_0_[0] ),
        .O(\bitslip[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h990111FF)) 
    \bitslip[3]_i_10 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[2]),
        .O(\bitslip[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bitslip[3]_i_11 
       (.I0(bitslip__0[0]),
        .I1(bitslip__0[1]),
        .O(\bitslip[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEFF)) 
    \bitslip[3]_i_2 
       (.I0(\bitslip[3]_i_4_n_0 ),
        .I1(\bitslip[3]_i_5_n_0 ),
        .I2(\bitslip[3]_i_6_n_0 ),
        .I3(p_0_in[4]),
        .I4(\bitslip[3]_i_7_n_0 ),
        .I5(\bitslip[3]_i_8_n_0 ),
        .O(findbitslip[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \bitslip[3]_i_3 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(\lvds_data_words_reg_n_0_[0][1] ),
        .I2(\lvds_data_words_reg_n_0_[0][3] ),
        .I3(\lvds_data_words_reg_n_0_[0][2] ),
        .I4(\bitslip[3]_i_9_n_0 ),
        .I5(\i[0]_i_2_n_0 ),
        .O(\bitslip[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3DC5CDC533333333)) 
    \bitslip[3]_i_4 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[4]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\bitslip[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA000A0FF55FF7777)) 
    \bitslip[3]_i_5 
       (.I0(p_0_in[0]),
        .I1(p_0_in[7]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(\bitslip[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC03D003D)) 
    \bitslip[3]_i_6 
       (.I0(p_0_in[0]),
        .I1(p_0_in[5]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(\bitslip[3]_i_10_n_0 ),
        .O(\bitslip[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bitslip[3]_i_7 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .O(\bitslip[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h13FF130313031303)) 
    \bitslip[3]_i_8 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(\bitslip[2]_i_3_n_0 ),
        .O(\bitslip[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \bitslip[3]_i_9 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(\lvds_data_words_reg_n_0_[0][7] ),
        .I2(\lvds_data_words_reg_n_0_[0][4] ),
        .I3(\lvds_data_words_reg_n_0_[0][5] ),
        .I4(\lvds_sync_word[2]_i_5_n_0 ),
        .I5(\bitslip[3]_i_11_n_0 ),
        .O(\bitslip[3]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bitslip_reg[0] 
       (.C(lvds_clk),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(findbitslip[0]),
        .Q(bitslip__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bitslip_reg[1] 
       (.C(lvds_clk),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(findbitslip[1]),
        .Q(bitslip__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bitslip_reg[2] 
       (.C(lvds_clk),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(findbitslip[2]),
        .Q(bitslip__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bitslip_reg[3] 
       (.C(lvds_clk),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(findbitslip[3]),
        .Q(bitslip__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[0]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[0]),
        .O(\fifo_din[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[10]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[10]),
        .O(\fifo_din[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[11]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[11]),
        .O(\fifo_din[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[12]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[12]),
        .O(\fifo_din[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[13]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[13]),
        .O(\fifo_din[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[14]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[14]),
        .O(\fifo_din[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[15]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[15]),
        .O(\fifo_din[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[16]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[16]),
        .O(\fifo_din[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[17]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[17]),
        .O(\fifo_din[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[18]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[18]),
        .O(\fifo_din[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[19]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[19]),
        .O(\fifo_din[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[1]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[1]),
        .O(\fifo_din[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[20]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[20]),
        .O(\fifo_din[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[21]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[21]),
        .O(\fifo_din[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[22]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[22]),
        .O(\fifo_din[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[23]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[23]),
        .O(\fifo_din[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[24]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[24]),
        .O(\fifo_din[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[25]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[25]),
        .O(\fifo_din[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[26]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[26]),
        .O(\fifo_din[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[27]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[27]),
        .O(\fifo_din[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[28]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[28]),
        .O(\fifo_din[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[29]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[29]),
        .O(\fifo_din[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[2]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[2]),
        .O(\fifo_din[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[30]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[30]),
        .O(\fifo_din[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[31]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[31]),
        .O(\fifo_din[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[32]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[32]),
        .O(\fifo_din[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[33]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[33]),
        .O(\fifo_din[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[34]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[34]),
        .O(\fifo_din[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[35]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[35]),
        .O(\fifo_din[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[36]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[36]),
        .O(\fifo_din[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[37]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[37]),
        .O(\fifo_din[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[38]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[38]),
        .O(\fifo_din[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[39]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[39]),
        .O(\fifo_din[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[3]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[3]),
        .O(\fifo_din[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[40]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[40]),
        .O(\fifo_din[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[41]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[41]),
        .O(\fifo_din[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[42]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[42]),
        .O(\fifo_din[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[43]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[43]),
        .O(\fifo_din[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[44]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[44]),
        .O(\fifo_din[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[45]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[45]),
        .O(\fifo_din[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[46]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[46]),
        .O(\fifo_din[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[47]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[47]),
        .O(\fifo_din[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[48]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[48]),
        .O(\fifo_din[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[49]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[49]),
        .O(\fifo_din[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[4]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[4]),
        .O(\fifo_din[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[50]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[50]),
        .O(\fifo_din[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[51]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[51]),
        .O(\fifo_din[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[52]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[52]),
        .O(\fifo_din[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[53]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[53]),
        .O(\fifo_din[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[54]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[54]),
        .O(\fifo_din[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[55]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[55]),
        .O(\fifo_din[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[56]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[56]),
        .O(\fifo_din[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[57]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[57]),
        .O(\fifo_din[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[58]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[58]),
        .O(\fifo_din[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[59]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[59]),
        .O(\fifo_din[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[5]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[5]),
        .O(\fifo_din[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[60]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[60]),
        .O(\fifo_din[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[61]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[61]),
        .O(\fifo_din[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[62]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[62]),
        .O(\fifo_din[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0A0A0A0)) 
    \fifo_din[63]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[1] ),
        .I1(pixel_polarity),
        .I2(lvds_word_ready_reg_n_0),
        .I3(\FSM_onehot_DState_reg_n_0_[6] ),
        .I4(\fifo_din[63]_i_3_n_0 ),
        .O(\fifo_din[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[63]_i_2 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[63]),
        .O(\fifo_din[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \fifo_din[63]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\fifo_din[63]_i_4_n_0 ),
        .I4(p_0_in[5]),
        .I5(p_0_in[6]),
        .O(\fifo_din[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[63]_i_4 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .O(\fifo_din[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[6]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[6]),
        .O(\fifo_din[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[7]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[7]),
        .O(\fifo_din[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[8]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[8]),
        .O(\fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[9]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in20[9]),
        .O(\fifo_din[9]_i_1_n_0 ));
  FDCE \fifo_din_reg[0] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[0]_i_1_n_0 ),
        .Q(fifo_din[0]));
  FDCE \fifo_din_reg[10] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[10]_i_1_n_0 ),
        .Q(fifo_din[10]));
  FDCE \fifo_din_reg[11] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[11]_i_1_n_0 ),
        .Q(fifo_din[11]));
  FDCE \fifo_din_reg[12] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[12]_i_1_n_0 ),
        .Q(fifo_din[12]));
  FDCE \fifo_din_reg[13] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[13]_i_1_n_0 ),
        .Q(fifo_din[13]));
  FDCE \fifo_din_reg[14] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[14]_i_1_n_0 ),
        .Q(fifo_din[14]));
  FDCE \fifo_din_reg[15] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[15]_i_1_n_0 ),
        .Q(fifo_din[15]));
  FDCE \fifo_din_reg[16] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[16]_i_1_n_0 ),
        .Q(fifo_din[16]));
  FDCE \fifo_din_reg[17] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[17]_i_1_n_0 ),
        .Q(fifo_din[17]));
  FDCE \fifo_din_reg[18] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[18]_i_1_n_0 ),
        .Q(fifo_din[18]));
  FDCE \fifo_din_reg[19] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[19]_i_1_n_0 ),
        .Q(fifo_din[19]));
  FDCE \fifo_din_reg[1] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[1]_i_1_n_0 ),
        .Q(fifo_din[1]));
  FDCE \fifo_din_reg[20] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[20]_i_1_n_0 ),
        .Q(fifo_din[20]));
  FDCE \fifo_din_reg[21] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[21]_i_1_n_0 ),
        .Q(fifo_din[21]));
  FDCE \fifo_din_reg[22] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[22]_i_1_n_0 ),
        .Q(fifo_din[22]));
  FDCE \fifo_din_reg[23] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[23]_i_1_n_0 ),
        .Q(fifo_din[23]));
  FDCE \fifo_din_reg[24] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[24]_i_1_n_0 ),
        .Q(fifo_din[24]));
  FDCE \fifo_din_reg[25] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[25]_i_1_n_0 ),
        .Q(fifo_din[25]));
  FDCE \fifo_din_reg[26] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[26]_i_1_n_0 ),
        .Q(fifo_din[26]));
  FDCE \fifo_din_reg[27] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[27]_i_1_n_0 ),
        .Q(fifo_din[27]));
  FDCE \fifo_din_reg[28] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[28]_i_1_n_0 ),
        .Q(fifo_din[28]));
  FDCE \fifo_din_reg[29] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[29]_i_1_n_0 ),
        .Q(fifo_din[29]));
  FDCE \fifo_din_reg[2] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[2]_i_1_n_0 ),
        .Q(fifo_din[2]));
  FDCE \fifo_din_reg[30] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[30]_i_1_n_0 ),
        .Q(fifo_din[30]));
  FDCE \fifo_din_reg[31] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[31]_i_1_n_0 ),
        .Q(fifo_din[31]));
  FDCE \fifo_din_reg[32] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[32]_i_1_n_0 ),
        .Q(fifo_din[32]));
  FDCE \fifo_din_reg[33] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[33]_i_1_n_0 ),
        .Q(fifo_din[33]));
  FDCE \fifo_din_reg[34] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[34]_i_1_n_0 ),
        .Q(fifo_din[34]));
  FDCE \fifo_din_reg[35] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[35]_i_1_n_0 ),
        .Q(fifo_din[35]));
  FDCE \fifo_din_reg[36] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[36]_i_1_n_0 ),
        .Q(fifo_din[36]));
  FDCE \fifo_din_reg[37] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[37]_i_1_n_0 ),
        .Q(fifo_din[37]));
  FDCE \fifo_din_reg[38] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[38]_i_1_n_0 ),
        .Q(fifo_din[38]));
  FDCE \fifo_din_reg[39] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[39]_i_1_n_0 ),
        .Q(fifo_din[39]));
  FDCE \fifo_din_reg[3] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[3]_i_1_n_0 ),
        .Q(fifo_din[3]));
  FDCE \fifo_din_reg[40] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[40]_i_1_n_0 ),
        .Q(fifo_din[40]));
  FDCE \fifo_din_reg[41] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[41]_i_1_n_0 ),
        .Q(fifo_din[41]));
  FDCE \fifo_din_reg[42] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[42]_i_1_n_0 ),
        .Q(fifo_din[42]));
  FDCE \fifo_din_reg[43] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[43]_i_1_n_0 ),
        .Q(fifo_din[43]));
  FDCE \fifo_din_reg[44] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[44]_i_1_n_0 ),
        .Q(fifo_din[44]));
  FDCE \fifo_din_reg[45] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[45]_i_1_n_0 ),
        .Q(fifo_din[45]));
  FDCE \fifo_din_reg[46] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[46]_i_1_n_0 ),
        .Q(fifo_din[46]));
  FDCE \fifo_din_reg[47] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[47]_i_1_n_0 ),
        .Q(fifo_din[47]));
  FDCE \fifo_din_reg[48] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[48]_i_1_n_0 ),
        .Q(fifo_din[48]));
  FDCE \fifo_din_reg[49] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[49]_i_1_n_0 ),
        .Q(fifo_din[49]));
  FDCE \fifo_din_reg[4] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[4]_i_1_n_0 ),
        .Q(fifo_din[4]));
  FDCE \fifo_din_reg[50] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[50]_i_1_n_0 ),
        .Q(fifo_din[50]));
  FDCE \fifo_din_reg[51] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[51]_i_1_n_0 ),
        .Q(fifo_din[51]));
  FDCE \fifo_din_reg[52] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[52]_i_1_n_0 ),
        .Q(fifo_din[52]));
  FDCE \fifo_din_reg[53] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[53]_i_1_n_0 ),
        .Q(fifo_din[53]));
  FDCE \fifo_din_reg[54] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[54]_i_1_n_0 ),
        .Q(fifo_din[54]));
  FDCE \fifo_din_reg[55] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[55]_i_1_n_0 ),
        .Q(fifo_din[55]));
  FDCE \fifo_din_reg[56] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[56]_i_1_n_0 ),
        .Q(fifo_din[56]));
  FDCE \fifo_din_reg[57] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[57]_i_1_n_0 ),
        .Q(fifo_din[57]));
  FDCE \fifo_din_reg[58] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[58]_i_1_n_0 ),
        .Q(fifo_din[58]));
  FDCE \fifo_din_reg[59] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[59]_i_1_n_0 ),
        .Q(fifo_din[59]));
  FDCE \fifo_din_reg[5] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[5]_i_1_n_0 ),
        .Q(fifo_din[5]));
  FDCE \fifo_din_reg[60] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[60]_i_1_n_0 ),
        .Q(fifo_din[60]));
  FDCE \fifo_din_reg[61] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[61]_i_1_n_0 ),
        .Q(fifo_din[61]));
  FDCE \fifo_din_reg[62] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[62]_i_1_n_0 ),
        .Q(fifo_din[62]));
  FDCE \fifo_din_reg[63] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[63]_i_2_n_0 ),
        .Q(fifo_din[63]));
  FDCE \fifo_din_reg[6] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[6]_i_1_n_0 ),
        .Q(fifo_din[6]));
  FDCE \fifo_din_reg[7] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[7]_i_1_n_0 ),
        .Q(fifo_din[7]));
  FDCE \fifo_din_reg[8] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[8]_i_1_n_0 ),
        .Q(fifo_din[8]));
  FDCE \fifo_din_reg[9] 
       (.C(lvds_clk),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\fifo_din[9]_i_1_n_0 ),
        .Q(fifo_din[9]));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_srst_INST_0
       (.I0(s00_axis_aresetn),
        .O(fifo_srst));
  LUT6 #(
    .INIT(64'hAB33FFFFA8000000)) 
    fifo_wr_en_i_1
       (.I0(pixel_polarity),
        .I1(fifo_wr_en_i_2_n_0),
        .I2(\fifo_din[63]_i_3_n_0 ),
        .I3(\FSM_onehot_DState_reg_n_0_[6] ),
        .I4(lvds_word_ready_reg_n_0),
        .I5(fifo_wr_en),
        .O(fifo_wr_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    fifo_wr_en_i_2
       (.I0(\FSM_onehot_DState_reg_n_0_[1] ),
        .I1(\FSM_onehot_DState_reg_n_0_[7] ),
        .O(fifo_wr_en_i_2_n_0));
  FDCE fifo_wr_en_reg
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(fifo_wr_en_i_1_n_0),
        .Q(fifo_wr_en));
  LUT6 #(
    .INIT(64'h04000000FFFFFFFF)) 
    \i[0]_i_1 
       (.I0(\lvds_sync_word[4]_i_2_n_0 ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\lvds_sync_word[7]_i_5_n_0 ),
        .I3(bitslip__0[0]),
        .I4(\i[0]_i_2_n_0 ),
        .I5(\i_reg_n_0_[0] ),
        .O(i[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \i[0]_i_2 
       (.I0(\i[0]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[7]),
        .I4(p_0_in[0]),
        .O(\i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \i[0]_i_3 
       (.I0(p_0_in[6]),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .O(\i[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[10]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[10]),
        .O(i[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[11]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[11]),
        .O(i[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[12]),
        .O(i[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[13]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[13]),
        .O(i[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[14]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[14]),
        .O(i[14]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[15]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[15]),
        .O(i[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[16]),
        .O(i[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[17]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[17]),
        .O(i[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[18]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[18]),
        .O(i[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[19]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[19]),
        .O(i[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \i[1]_i_1 
       (.I0(data1[1]),
        .I1(\lvds_sync_word[7]_i_3_n_0 ),
        .I2(bitslip__0[1]),
        .I3(\lvds_sync_word[4]_i_4_n_0 ),
        .O(i[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[20]),
        .O(i[20]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[21]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[21]),
        .O(i[21]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[22]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[22]),
        .O(i[22]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[23]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[23]),
        .O(i[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[24]),
        .O(i[24]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[25]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[25]),
        .O(i[25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[26]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[26]),
        .O(i[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[27]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[27]),
        .O(i[27]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[28]),
        .O(i[28]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[29]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[29]),
        .O(i[29]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \i[2]_i_1 
       (.I0(data1[2]),
        .I1(\lvds_sync_word[7]_i_3_n_0 ),
        .I2(bitslip__0[2]),
        .I3(\lvds_sync_word[4]_i_4_n_0 ),
        .O(i[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[30]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[30]),
        .O(i[30]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[31]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[31]),
        .O(i[31]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \i[3]_i_1 
       (.I0(data1[3]),
        .I1(\lvds_sync_word[7]_i_3_n_0 ),
        .I2(bitslip__0[3]),
        .I3(\lvds_sync_word[4]_i_4_n_0 ),
        .O(i[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[4]),
        .O(i[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[5]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[5]),
        .O(i[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[6]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[6]),
        .O(i[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[7]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[7]),
        .O(i[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[8]),
        .O(i[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[9]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(data1[9]),
        .O(i[9]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(bitslip__0[2]),
        .I1(bitslip__0[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(bitslip__0[0]),
        .I1(bitslip__0[1]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(bitslip__0[3]),
        .I1(bitslip__0[2]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(bitslip__0[1]),
        .I1(bitslip__0[0]),
        .O(i__carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[0]),
        .Q(\i_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[10]),
        .Q(\i_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[11]),
        .Q(\i_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[12]),
        .Q(\i_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[12]_i_2 
       (.CI(\i_reg[8]_i_2_n_0 ),
        .CO({\i_reg[12]_i_2_n_0 ,\i_reg[12]_i_2_n_1 ,\i_reg[12]_i_2_n_2 ,\i_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[12:9]),
        .S({\i_reg_n_0_[12] ,\i_reg_n_0_[11] ,\i_reg_n_0_[10] ,\i_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[13]),
        .Q(\i_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[14]),
        .Q(\i_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[15]),
        .Q(\i_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[16]),
        .Q(\i_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[16]_i_2 
       (.CI(\i_reg[12]_i_2_n_0 ),
        .CO({\i_reg[16]_i_2_n_0 ,\i_reg[16]_i_2_n_1 ,\i_reg[16]_i_2_n_2 ,\i_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[16:13]),
        .S({\i_reg_n_0_[16] ,\i_reg_n_0_[15] ,\i_reg_n_0_[14] ,\i_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[17]),
        .Q(\i_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[18]),
        .Q(\i_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[19]),
        .Q(\i_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[1]),
        .Q(\i_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[20]),
        .Q(\i_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[20]_i_2 
       (.CI(\i_reg[16]_i_2_n_0 ),
        .CO({\i_reg[20]_i_2_n_0 ,\i_reg[20]_i_2_n_1 ,\i_reg[20]_i_2_n_2 ,\i_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[20:17]),
        .S({\i_reg_n_0_[20] ,\i_reg_n_0_[19] ,\i_reg_n_0_[18] ,\i_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[21]),
        .Q(\i_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[22]),
        .Q(\i_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[23]),
        .Q(\i_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[24]),
        .Q(\i_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[24]_i_2 
       (.CI(\i_reg[20]_i_2_n_0 ),
        .CO({\i_reg[24]_i_2_n_0 ,\i_reg[24]_i_2_n_1 ,\i_reg[24]_i_2_n_2 ,\i_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[24:21]),
        .S({\i_reg_n_0_[24] ,\i_reg_n_0_[23] ,\i_reg_n_0_[22] ,\i_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[25]),
        .Q(\i_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[26]),
        .Q(\i_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[27]),
        .Q(\i_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[28]),
        .Q(\i_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[28]_i_2 
       (.CI(\i_reg[24]_i_2_n_0 ),
        .CO({\i_reg[28]_i_2_n_0 ,\i_reg[28]_i_2_n_1 ,\i_reg[28]_i_2_n_2 ,\i_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[28:25]),
        .S({\i_reg_n_0_[28] ,\i_reg_n_0_[27] ,\i_reg_n_0_[26] ,\i_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[29]),
        .Q(\i_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[2]),
        .Q(\i_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[30]),
        .Q(\i_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[31]),
        .Q(\i_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[31]_i_2 
       (.CI(\i_reg[28]_i_2_n_0 ),
        .CO({\NLW_i_reg[31]_i_2_CO_UNCONNECTED [3:2],\i_reg[31]_i_2_n_2 ,\i_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg[31]_i_2_O_UNCONNECTED [3],data1[31:29]}),
        .S({1'b0,\i_reg_n_0_[31] ,\i_reg_n_0_[30] ,\i_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[3]),
        .Q(\i_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[4]),
        .Q(\i_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[4]_i_2_n_0 ,\i_reg[4]_i_2_n_1 ,\i_reg[4]_i_2_n_2 ,\i_reg[4]_i_2_n_3 }),
        .CYINIT(\i_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[4:1]),
        .S({\i_reg_n_0_[4] ,\i_reg_n_0_[3] ,\i_reg_n_0_[2] ,\i_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[5]),
        .Q(\i_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[6]),
        .Q(\i_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[7]),
        .Q(\i_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[8]),
        .Q(\i_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[8]_i_2 
       (.CI(\i_reg[4]_i_2_n_0 ),
        .CO({\i_reg[8]_i_2_n_0 ,\i_reg[8]_i_2_n_1 ,\i_reg[8]_i_2_n_2 ,\i_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[8:5]),
        .S({\i_reg_n_0_[8] ,\i_reg_n_0_[7] ,\i_reg_n_0_[6] ,\i_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(i[9]),
        .Q(\i_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][0]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [0]),
        .O(\kernel[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][1]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][1] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [1]),
        .O(\kernel[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][2]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][2] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [2]),
        .O(\kernel[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][3]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][3] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [3]),
        .O(\kernel[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][4]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][4] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [4]),
        .O(\kernel[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][5]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][5] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [5]),
        .O(\kernel[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][6]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [6]),
        .O(\kernel[0][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80080000)) 
    \kernel[0][7]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(lvds_word_ready_reg_n_0),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\fifo_din[63]_i_3_n_0 ),
        .O(\kernel[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][7]_i_2 
       (.I0(\lvds_data_words_reg_n_0_[0][7] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [7]),
        .O(\kernel[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][0]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [0]),
        .O(\kernel[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][1]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][1] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [1]),
        .O(\kernel[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][2]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][2] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [2]),
        .O(\kernel[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][3]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][3] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [3]),
        .O(\kernel[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][4]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][4] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [4]),
        .O(\kernel[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][5]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][5] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [5]),
        .O(\kernel[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][6]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [6]),
        .O(\kernel[1][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h60000000)) 
    \kernel[1][7]_i_1 
       (.I0(\nb_kernel_reg_n_0_[0] ),
        .I1(pixel_polarity),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .I3(lvds_word_ready_reg_n_0),
        .I4(\fifo_din[63]_i_3_n_0 ),
        .O(\kernel[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][7]_i_2 
       (.I0(\lvds_data_words_reg_n_0_[0][7] ),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(\lvds_data_words_reg[3]_0 [7]),
        .O(\kernel[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][0]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [0]),
        .I1(\lvds_data_words_reg_n_0_[0][0] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [0]),
        .O(\kernel[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][1]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [1]),
        .I1(\lvds_data_words_reg_n_0_[0][1] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [1]),
        .O(\kernel[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][2]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [2]),
        .I1(\lvds_data_words_reg_n_0_[0][2] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [2]),
        .O(\kernel[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][3]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [3]),
        .I1(\lvds_data_words_reg_n_0_[0][3] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [3]),
        .O(\kernel[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][4]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [4]),
        .I1(\lvds_data_words_reg_n_0_[0][4] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [4]),
        .O(\kernel[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][5]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [5]),
        .I1(\lvds_data_words_reg_n_0_[0][5] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [5]),
        .O(\kernel[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][6]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [6]),
        .I1(\lvds_data_words_reg_n_0_[0][6] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [6]),
        .O(\kernel[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[2][7]_i_1 
       (.I0(\lvds_data_words_reg[1]_2 [7]),
        .I1(\lvds_data_words_reg_n_0_[0][7] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [7]),
        .O(\kernel[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][0]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(\lvds_data_words_reg[2]_1 [0]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [0]),
        .O(\kernel[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][1]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][1] ),
        .I1(\lvds_data_words_reg[2]_1 [1]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [1]),
        .O(\kernel[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][2]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][2] ),
        .I1(\lvds_data_words_reg[2]_1 [2]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [2]),
        .O(\kernel[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][3]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][3] ),
        .I1(\lvds_data_words_reg[2]_1 [3]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [3]),
        .O(\kernel[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][4]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][4] ),
        .I1(\lvds_data_words_reg[2]_1 [4]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [4]),
        .O(\kernel[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][5]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][5] ),
        .I1(\lvds_data_words_reg[2]_1 [5]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [5]),
        .O(\kernel[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][6]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(\lvds_data_words_reg[2]_1 [6]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [6]),
        .O(\kernel[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[3][7]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][7] ),
        .I1(\lvds_data_words_reg[2]_1 [7]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [7]),
        .O(\kernel[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][0]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [0]),
        .I1(\lvds_data_words_reg_n_0_[0][0] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [0]),
        .O(\kernel[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][1]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [1]),
        .I1(\lvds_data_words_reg_n_0_[0][1] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [1]),
        .O(\kernel[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][2]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [2]),
        .I1(\lvds_data_words_reg_n_0_[0][2] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [2]),
        .O(\kernel[4][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][3]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [3]),
        .I1(\lvds_data_words_reg_n_0_[0][3] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [3]),
        .O(\kernel[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][4]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [4]),
        .I1(\lvds_data_words_reg_n_0_[0][4] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [4]),
        .O(\kernel[4][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][5]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [5]),
        .I1(\lvds_data_words_reg_n_0_[0][5] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [5]),
        .O(\kernel[4][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][6]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [6]),
        .I1(\lvds_data_words_reg_n_0_[0][6] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [6]),
        .O(\kernel[4][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \kernel[4][7]_i_1 
       (.I0(\lvds_data_words_reg[2]_1 [7]),
        .I1(\lvds_data_words_reg_n_0_[0][7] ),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[1]_2 [7]),
        .O(\kernel[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][0]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(\lvds_data_words_reg[1]_2 [0]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [0]),
        .O(\kernel[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][1]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][1] ),
        .I1(\lvds_data_words_reg[1]_2 [1]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [1]),
        .O(\kernel[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][2]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][2] ),
        .I1(\lvds_data_words_reg[1]_2 [2]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [2]),
        .O(\kernel[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][3]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][3] ),
        .I1(\lvds_data_words_reg[1]_2 [3]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [3]),
        .O(\kernel[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][4]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][4] ),
        .I1(\lvds_data_words_reg[1]_2 [4]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [4]),
        .O(\kernel[5][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][5]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][5] ),
        .I1(\lvds_data_words_reg[1]_2 [5]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [5]),
        .O(\kernel[5][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][6]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(\lvds_data_words_reg[1]_2 [6]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [6]),
        .O(\kernel[5][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAFCAA0CA)) 
    \kernel[5][7]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][7] ),
        .I1(\lvds_data_words_reg[1]_2 [7]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(\lvds_data_words_reg[2]_1 [7]),
        .O(\kernel[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][0]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [0]),
        .O(\kernel[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][1]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][1] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [1]),
        .O(\kernel[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][2]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][2] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [2]),
        .O(\kernel[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][3]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][3] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [3]),
        .O(\kernel[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][4]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][4] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [4]),
        .O(\kernel[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][5]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][5] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [5]),
        .O(\kernel[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][6]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [6]),
        .O(\kernel[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][7]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][7] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [7]),
        .O(\kernel[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][0]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][0] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [0]),
        .O(\kernel[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][1]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][1] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [1]),
        .O(\kernel[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][2]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][2] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [2]),
        .O(\kernel[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][3]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][3] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [3]),
        .O(\kernel[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][4]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][4] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [4]),
        .O(\kernel[7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][5]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][5] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [5]),
        .O(\kernel[7][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][6]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][6] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [6]),
        .O(\kernel[7][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][7]_i_1 
       (.I0(\lvds_data_words_reg_n_0_[0][7] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\lvds_data_words_reg[3]_0 [7]),
        .O(\kernel[7][7]_i_1_n_0 ));
  FDCE \kernel_reg[0][0] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][0]_i_1_n_0 ),
        .Q(in20[0]));
  FDCE \kernel_reg[0][1] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][1]_i_1_n_0 ),
        .Q(in20[1]));
  FDCE \kernel_reg[0][2] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][2]_i_1_n_0 ),
        .Q(in20[2]));
  FDCE \kernel_reg[0][3] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][3]_i_1_n_0 ),
        .Q(in20[3]));
  FDCE \kernel_reg[0][4] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][4]_i_1_n_0 ),
        .Q(in20[4]));
  FDCE \kernel_reg[0][5] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][5]_i_1_n_0 ),
        .Q(in20[5]));
  FDCE \kernel_reg[0][6] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][6]_i_1_n_0 ),
        .Q(in20[6]));
  FDCE \kernel_reg[0][7] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[0][7]_i_2_n_0 ),
        .Q(in20[7]));
  FDCE \kernel_reg[1][0] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][0]_i_1_n_0 ),
        .Q(in20[8]));
  FDCE \kernel_reg[1][1] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][1]_i_1_n_0 ),
        .Q(in20[9]));
  FDCE \kernel_reg[1][2] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][2]_i_1_n_0 ),
        .Q(in20[10]));
  FDCE \kernel_reg[1][3] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][3]_i_1_n_0 ),
        .Q(in20[11]));
  FDCE \kernel_reg[1][4] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][4]_i_1_n_0 ),
        .Q(in20[12]));
  FDCE \kernel_reg[1][5] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][5]_i_1_n_0 ),
        .Q(in20[13]));
  FDCE \kernel_reg[1][6] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][6]_i_1_n_0 ),
        .Q(in20[14]));
  FDCE \kernel_reg[1][7] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[1][7]_i_2_n_0 ),
        .Q(in20[15]));
  FDCE \kernel_reg[2][0] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][0]_i_1_n_0 ),
        .Q(in20[16]));
  FDCE \kernel_reg[2][1] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][1]_i_1_n_0 ),
        .Q(in20[17]));
  FDCE \kernel_reg[2][2] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][2]_i_1_n_0 ),
        .Q(in20[18]));
  FDCE \kernel_reg[2][3] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][3]_i_1_n_0 ),
        .Q(in20[19]));
  FDCE \kernel_reg[2][4] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][4]_i_1_n_0 ),
        .Q(in20[20]));
  FDCE \kernel_reg[2][5] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][5]_i_1_n_0 ),
        .Q(in20[21]));
  FDCE \kernel_reg[2][6] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][6]_i_1_n_0 ),
        .Q(in20[22]));
  FDCE \kernel_reg[2][7] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[2][7]_i_1_n_0 ),
        .Q(in20[23]));
  FDCE \kernel_reg[3][0] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][0]_i_1_n_0 ),
        .Q(in20[24]));
  FDCE \kernel_reg[3][1] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][1]_i_1_n_0 ),
        .Q(in20[25]));
  FDCE \kernel_reg[3][2] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][2]_i_1_n_0 ),
        .Q(in20[26]));
  FDCE \kernel_reg[3][3] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][3]_i_1_n_0 ),
        .Q(in20[27]));
  FDCE \kernel_reg[3][4] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][4]_i_1_n_0 ),
        .Q(in20[28]));
  FDCE \kernel_reg[3][5] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][5]_i_1_n_0 ),
        .Q(in20[29]));
  FDCE \kernel_reg[3][6] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][6]_i_1_n_0 ),
        .Q(in20[30]));
  FDCE \kernel_reg[3][7] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[3][7]_i_1_n_0 ),
        .Q(in20[31]));
  FDCE \kernel_reg[4][0] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][0]_i_1_n_0 ),
        .Q(in20[32]));
  FDCE \kernel_reg[4][1] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][1]_i_1_n_0 ),
        .Q(in20[33]));
  FDCE \kernel_reg[4][2] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][2]_i_1_n_0 ),
        .Q(in20[34]));
  FDCE \kernel_reg[4][3] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][3]_i_1_n_0 ),
        .Q(in20[35]));
  FDCE \kernel_reg[4][4] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][4]_i_1_n_0 ),
        .Q(in20[36]));
  FDCE \kernel_reg[4][5] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][5]_i_1_n_0 ),
        .Q(in20[37]));
  FDCE \kernel_reg[4][6] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][6]_i_1_n_0 ),
        .Q(in20[38]));
  FDCE \kernel_reg[4][7] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[4][7]_i_1_n_0 ),
        .Q(in20[39]));
  FDCE \kernel_reg[5][0] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][0]_i_1_n_0 ),
        .Q(in20[40]));
  FDCE \kernel_reg[5][1] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][1]_i_1_n_0 ),
        .Q(in20[41]));
  FDCE \kernel_reg[5][2] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][2]_i_1_n_0 ),
        .Q(in20[42]));
  FDCE \kernel_reg[5][3] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][3]_i_1_n_0 ),
        .Q(in20[43]));
  FDCE \kernel_reg[5][4] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][4]_i_1_n_0 ),
        .Q(in20[44]));
  FDCE \kernel_reg[5][5] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][5]_i_1_n_0 ),
        .Q(in20[45]));
  FDCE \kernel_reg[5][6] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][6]_i_1_n_0 ),
        .Q(in20[46]));
  FDCE \kernel_reg[5][7] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[5][7]_i_1_n_0 ),
        .Q(in20[47]));
  FDCE \kernel_reg[6][0] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][0]_i_1_n_0 ),
        .Q(in20[48]));
  FDCE \kernel_reg[6][1] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][1]_i_1_n_0 ),
        .Q(in20[49]));
  FDCE \kernel_reg[6][2] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][2]_i_1_n_0 ),
        .Q(in20[50]));
  FDCE \kernel_reg[6][3] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][3]_i_1_n_0 ),
        .Q(in20[51]));
  FDCE \kernel_reg[6][4] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][4]_i_1_n_0 ),
        .Q(in20[52]));
  FDCE \kernel_reg[6][5] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][5]_i_1_n_0 ),
        .Q(in20[53]));
  FDCE \kernel_reg[6][6] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][6]_i_1_n_0 ),
        .Q(in20[54]));
  FDCE \kernel_reg[6][7] 
       (.C(lvds_clk),
        .CE(\kernel[0][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[6][7]_i_1_n_0 ),
        .Q(in20[55]));
  FDCE \kernel_reg[7][0] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][0]_i_1_n_0 ),
        .Q(in20[56]));
  FDCE \kernel_reg[7][1] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][1]_i_1_n_0 ),
        .Q(in20[57]));
  FDCE \kernel_reg[7][2] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][2]_i_1_n_0 ),
        .Q(in20[58]));
  FDCE \kernel_reg[7][3] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][3]_i_1_n_0 ),
        .Q(in20[59]));
  FDCE \kernel_reg[7][4] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][4]_i_1_n_0 ),
        .Q(in20[60]));
  FDCE \kernel_reg[7][5] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][5]_i_1_n_0 ),
        .Q(in20[61]));
  FDCE \kernel_reg[7][6] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][6]_i_1_n_0 ),
        .Q(in20[62]));
  FDCE \kernel_reg[7][7] 
       (.C(lvds_clk),
        .CE(\kernel[1][7]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(\kernel[7][7]_i_1_n_0 ),
        .Q(in20[63]));
  LUT1 #(
    .INIT(2'h1)) 
    \lvds_data_words[0][0]_i_1 
       (.I0(\lvds_sync_word[0]_i_3_n_0 ),
        .O(\lvds_data_words[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \lvds_data_words[0][1]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\lvds_sync_word[1]_i_3_n_0 ),
        .O(\lvds_data_words[0][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \lvds_data_words[0][2]_i_1 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\lvds_sync_word[1]_i_3_n_0 ),
        .I2(\i_reg_n_0_[0] ),
        .O(\lvds_data_words[0][2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lvds_data_words[0][3]_i_1 
       (.I0(\lvds_sync_word[3]_i_3_n_0 ),
        .O(\lvds_data_words[0][3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \lvds_data_words[0][4]_i_1 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\lvds_sync_word[4]_i_2_n_0 ),
        .O(\lvds_data_words[0][4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lvds_data_words[0][5]_i_1 
       (.I0(\lvds_sync_word[5]_i_4_n_0 ),
        .O(\lvds_data_words[0][5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lvds_data_words[0][6]_i_1 
       (.I0(\lvds_sync_word[6]_i_4_n_0 ),
        .O(\lvds_data_words[0][6]_i_1_n_0 ));
  FDCE \lvds_data_words_reg[0][0] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][0]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][0] ));
  FDCE \lvds_data_words_reg[0][1] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][1]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][1] ));
  FDCE \lvds_data_words_reg[0][2] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][2]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][2] ));
  FDCE \lvds_data_words_reg[0][3] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][3] ));
  FDCE \lvds_data_words_reg[0][4] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][4]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][4] ));
  FDCE \lvds_data_words_reg[0][5] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][5]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][5] ));
  FDCE \lvds_data_words_reg[0][6] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][6]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][6] ));
  FDCE \lvds_data_words_reg[0][7] 
       (.C(lvds_clk),
        .CE(lvds_sync_word[7]),
        .CLR(fifo_srst),
        .D(lvds_data[0]),
        .Q(\lvds_data_words_reg_n_0_[0][7] ));
  FDCE \lvds_data_words_reg[1][0] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][0]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [0]));
  FDCE \lvds_data_words_reg[1][1] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][1]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [1]));
  FDCE \lvds_data_words_reg[1][2] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][2]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [2]));
  FDCE \lvds_data_words_reg[1][3] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [3]));
  FDCE \lvds_data_words_reg[1][4] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][4]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [4]));
  FDCE \lvds_data_words_reg[1][5] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][5]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [5]));
  FDCE \lvds_data_words_reg[1][6] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][6]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [6]));
  FDCE \lvds_data_words_reg[1][7] 
       (.C(lvds_clk),
        .CE(lvds_sync_word[7]),
        .CLR(fifo_srst),
        .D(lvds_data[1]),
        .Q(\lvds_data_words_reg[1]_2 [7]));
  FDCE \lvds_data_words_reg[2][0] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][0]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [0]));
  FDCE \lvds_data_words_reg[2][1] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][1]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [1]));
  FDCE \lvds_data_words_reg[2][2] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][2]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [2]));
  FDCE \lvds_data_words_reg[2][3] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [3]));
  FDCE \lvds_data_words_reg[2][4] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][4]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [4]));
  FDCE \lvds_data_words_reg[2][5] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][5]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [5]));
  FDCE \lvds_data_words_reg[2][6] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][6]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [6]));
  FDCE \lvds_data_words_reg[2][7] 
       (.C(lvds_clk),
        .CE(lvds_sync_word[7]),
        .CLR(fifo_srst),
        .D(lvds_data[2]),
        .Q(\lvds_data_words_reg[2]_1 [7]));
  FDCE \lvds_data_words_reg[3][0] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][0]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [0]));
  FDCE \lvds_data_words_reg[3][1] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][1]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [1]));
  FDCE \lvds_data_words_reg[3][2] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][2]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [2]));
  FDCE \lvds_data_words_reg[3][3] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][3]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [3]));
  FDCE \lvds_data_words_reg[3][4] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][4]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [4]));
  FDCE \lvds_data_words_reg[3][5] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][5]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [5]));
  FDCE \lvds_data_words_reg[3][6] 
       (.C(lvds_clk),
        .CE(\lvds_data_words[0][6]_i_1_n_0 ),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [6]));
  FDCE \lvds_data_words_reg[3][7] 
       (.C(lvds_clk),
        .CE(lvds_sync_word[7]),
        .CLR(fifo_srst),
        .D(lvds_data[3]),
        .Q(\lvds_data_words_reg[3]_0 [7]));
  CARRY4 \lvds_sync_word3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_lvds_sync_word3_inferred__0/i__carry_CO_UNCONNECTED [3:2],lvds_sync_word33_in,\lvds_sync_word3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0}),
        .O(\NLW_lvds_sync_word3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'hFFEEA0EE)) 
    \lvds_sync_word[0]_i_1 
       (.I0(\lvds_sync_word[0]_i_2_n_0 ),
        .I1(lvds_sync),
        .I2(\lvds_sync_word[4]_i_4_n_0 ),
        .I3(\lvds_sync_word[0]_i_3_n_0 ),
        .I4(p_0_in[1]),
        .O(\lvds_sync_word[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \lvds_sync_word[0]_i_2 
       (.I0(bitslip__0[3]),
        .I1(lvds_sync_word33_in),
        .I2(\lvds_sync_word[7]_i_3_n_0 ),
        .O(\lvds_sync_word[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \lvds_sync_word[0]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\lvds_sync_word[1]_i_3_n_0 ),
        .O(\lvds_sync_word[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCEFFFECCCE000E)) 
    \lvds_sync_word[1]_i_1 
       (.I0(lvds_sync),
        .I1(\lvds_sync_word[1]_i_2_n_0 ),
        .I2(\lvds_sync_word[1]_i_3_n_0 ),
        .I3(\lvds_sync_word[1]_i_4_n_0 ),
        .I4(\lvds_sync_word[4]_i_4_n_0 ),
        .I5(p_0_in[2]),
        .O(\lvds_sync_word[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00BF00FB00BB00)) 
    \lvds_sync_word[1]_i_2 
       (.I0(\lvds_sync_word[3]_i_6_n_0 ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(p_0_in[2]),
        .I4(\lvds_sync_word[1]_i_5_n_0 ),
        .I5(\i_reg_n_0_[2] ),
        .O(\lvds_sync_word[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lvds_sync_word[1]_i_3 
       (.I0(\lvds_sync_word[7]_i_7_n_0 ),
        .I1(\lvds_sync_word[7]_i_8_n_0 ),
        .I2(\lvds_sync_word[7]_i_9_n_0 ),
        .I3(\i_reg_n_0_[2] ),
        .O(\lvds_sync_word[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \lvds_sync_word[1]_i_4 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\lvds_sync_word[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF77FF77FF77FF7F)) 
    \lvds_sync_word[1]_i_5 
       (.I0(\i_reg_n_0_[2] ),
        .I1(lvds_sync_word33_in),
        .I2(bitslip__0[2]),
        .I3(bitslip__0[3]),
        .I4(bitslip__0[0]),
        .I5(bitslip__0[1]),
        .O(\lvds_sync_word[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFCFCFC00)) 
    \lvds_sync_word[2]_i_1 
       (.I0(\lvds_sync_word[2]_i_2_n_0 ),
        .I1(\lvds_sync_word[2]_i_3_n_0 ),
        .I2(\lvds_sync_word[2]_i_4_n_0 ),
        .I3(\lvds_data_words[0][2]_i_1_n_0 ),
        .I4(\lvds_sync_word[4]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\lvds_sync_word[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \lvds_sync_word[2]_i_2 
       (.I0(\lvds_sync_word[3]_i_6_n_0 ),
        .I1(\i_reg_n_0_[1] ),
        .O(\lvds_sync_word[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \lvds_sync_word[2]_i_3 
       (.I0(\i_reg_n_0_[0] ),
        .I1(lvds_sync),
        .I2(\i_reg_n_0_[1] ),
        .I3(\lvds_sync_word[1]_i_3_n_0 ),
        .O(\lvds_sync_word[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF1FF0F000000000)) 
    \lvds_sync_word[2]_i_4 
       (.I0(bitslip__0[1]),
        .I1(\lvds_sync_word[2]_i_5_n_0 ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\lvds_sync_word[7]_i_5_n_0 ),
        .I4(\i_reg_n_0_[0] ),
        .I5(p_0_in[3]),
        .O(\lvds_sync_word[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \lvds_sync_word[2]_i_5 
       (.I0(bitslip__0[2]),
        .I1(bitslip__0[3]),
        .O(\lvds_sync_word[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFCE0000)) 
    \lvds_sync_word[3]_i_1 
       (.I0(lvds_sync),
        .I1(\lvds_sync_word[3]_i_2_n_0 ),
        .I2(\lvds_sync_word[3]_i_3_n_0 ),
        .I3(\lvds_sync_word[3]_i_4_n_0 ),
        .I4(lvds_sync_word[3]),
        .I5(p_0_in[4]),
        .O(\lvds_sync_word[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \lvds_sync_word[3]_i_2 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(lvds_sync_word33_in),
        .I2(bitslip__0[3]),
        .I3(bitslip__0[2]),
        .O(\lvds_sync_word[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \lvds_sync_word[3]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\lvds_sync_word[1]_i_3_n_0 ),
        .I2(\i_reg_n_0_[0] ),
        .O(\lvds_sync_word[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \lvds_sync_word[3]_i_4 
       (.I0(bitslip__0[1]),
        .I1(bitslip__0[0]),
        .I2(\lvds_sync_word[7]_i_3_n_0 ),
        .I3(lvds_sync_word33_in),
        .I4(bitslip__0[3]),
        .O(\lvds_sync_word[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000020F000000000)) 
    \lvds_sync_word[3]_i_5 
       (.I0(\i[0]_i_2_n_0 ),
        .I1(\lvds_sync_word[7]_i_5_n_0 ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[2] ),
        .I4(\lvds_sync_word[3]_i_6_n_0 ),
        .I5(\i_reg_n_0_[1] ),
        .O(lvds_sync_word[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \lvds_sync_word[3]_i_6 
       (.I0(\lvds_sync_word[7]_i_9_n_0 ),
        .I1(\lvds_sync_word[7]_i_8_n_0 ),
        .I2(\lvds_sync_word[7]_i_7_n_0 ),
        .O(\lvds_sync_word[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFEFF000100)) 
    \lvds_sync_word[4]_i_1 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\lvds_sync_word[4]_i_2_n_0 ),
        .I3(\lvds_sync_word[4]_i_3_n_0 ),
        .I4(\lvds_sync_word[4]_i_4_n_0 ),
        .I5(p_0_in[5]),
        .O(\lvds_sync_word[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \lvds_sync_word[4]_i_2 
       (.I0(\lvds_sync_word[7]_i_7_n_0 ),
        .I1(\lvds_sync_word[7]_i_8_n_0 ),
        .I2(\lvds_sync_word[7]_i_9_n_0 ),
        .I3(\i_reg_n_0_[2] ),
        .O(\lvds_sync_word[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88CC88D8)) 
    \lvds_sync_word[4]_i_3 
       (.I0(\lvds_sync_word[4]_i_2_n_0 ),
        .I1(p_0_in[5]),
        .I2(lvds_sync),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[0] ),
        .I5(\lvds_sync_word[4]_i_5_n_0 ),
        .O(\lvds_sync_word[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \lvds_sync_word[4]_i_4 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .I1(lvds_sync_word33_in),
        .I2(bitslip__0[3]),
        .I3(\i[0]_i_2_n_0 ),
        .O(\lvds_sync_word[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8808888888888888)) 
    \lvds_sync_word[4]_i_5 
       (.I0(\i_reg_n_0_[1] ),
        .I1(p_0_in[5]),
        .I2(bitslip__0[2]),
        .I3(bitslip__0[3]),
        .I4(lvds_sync_word33_in),
        .I5(\i_reg_n_0_[0] ),
        .O(\lvds_sync_word[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEEC0EE)) 
    \lvds_sync_word[5]_i_1 
       (.I0(lvds_sync),
        .I1(\lvds_sync_word[5]_i_2_n_0 ),
        .I2(\lvds_sync_word[5]_i_3_n_0 ),
        .I3(\lvds_sync_word[5]_i_4_n_0 ),
        .I4(p_0_in[6]),
        .O(\lvds_sync_word[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000E0000000000)) 
    \lvds_sync_word[5]_i_2 
       (.I0(bitslip__0[0]),
        .I1(bitslip__0[1]),
        .I2(\lvds_sync_word[7]_i_3_n_0 ),
        .I3(lvds_sync_word33_in),
        .I4(bitslip__0[3]),
        .I5(bitslip__0[2]),
        .O(\lvds_sync_word[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \lvds_sync_word[5]_i_3 
       (.I0(bitslip__0[3]),
        .I1(lvds_sync_word33_in),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i[0]_i_2_n_0 ),
        .I4(\lvds_sync_word[4]_i_2_n_0 ),
        .O(\lvds_sync_word[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \lvds_sync_word[5]_i_4 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\lvds_sync_word[4]_i_2_n_0 ),
        .O(\lvds_sync_word[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEEC0EE)) 
    \lvds_sync_word[6]_i_1 
       (.I0(lvds_sync),
        .I1(\lvds_sync_word[6]_i_2_n_0 ),
        .I2(\lvds_sync_word[6]_i_3_n_0 ),
        .I3(\lvds_sync_word[6]_i_4_n_0 ),
        .I4(p_0_in[7]),
        .O(\lvds_sync_word[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \lvds_sync_word[6]_i_2 
       (.I0(bitslip__0[1]),
        .I1(\lvds_sync_word[7]_i_3_n_0 ),
        .I2(lvds_sync_word33_in),
        .I3(bitslip__0[3]),
        .I4(bitslip__0[2]),
        .O(\lvds_sync_word[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \lvds_sync_word[6]_i_3 
       (.I0(lvds_sync_word33_in),
        .I1(bitslip__0[3]),
        .I2(\i[0]_i_2_n_0 ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\lvds_sync_word[4]_i_2_n_0 ),
        .O(\lvds_sync_word[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \lvds_sync_word[6]_i_4 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\lvds_sync_word[4]_i_2_n_0 ),
        .I2(\i_reg_n_0_[0] ),
        .O(\lvds_sync_word[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lvds_sync_word[7]_i_1 
       (.I0(\lvds_sync_word[7]_i_3_n_0 ),
        .O(lvds_sync_word[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lvds_sync_word[7]_i_10 
       (.I0(\i_reg_n_0_[27] ),
        .I1(\i_reg_n_0_[26] ),
        .I2(\i_reg_n_0_[29] ),
        .I3(\i_reg_n_0_[28] ),
        .O(\lvds_sync_word[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \lvds_sync_word[7]_i_11 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[30] ),
        .I2(\i_reg_n_0_[31] ),
        .I3(\i_reg_n_0_[5] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\lvds_sync_word[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lvds_sync_word[7]_i_12 
       (.I0(\i_reg_n_0_[11] ),
        .I1(\i_reg_n_0_[10] ),
        .I2(\i_reg_n_0_[13] ),
        .I3(\i_reg_n_0_[12] ),
        .O(\lvds_sync_word[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lvds_sync_word[7]_i_13 
       (.I0(\i_reg_n_0_[19] ),
        .I1(\i_reg_n_0_[18] ),
        .I2(\i_reg_n_0_[21] ),
        .I3(\i_reg_n_0_[20] ),
        .O(\lvds_sync_word[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAAFAAABA)) 
    \lvds_sync_word[7]_i_2 
       (.I0(lvds_sync),
        .I1(p_0_in[0]),
        .I2(\lvds_sync_word[7]_i_4_n_0 ),
        .I3(\lvds_sync_word[7]_i_5_n_0 ),
        .I4(\lvds_sync_word[7]_i_6_n_0 ),
        .O(\lvds_sync_word[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \lvds_sync_word[7]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\lvds_sync_word[7]_i_7_n_0 ),
        .I2(\lvds_sync_word[7]_i_8_n_0 ),
        .I3(\lvds_sync_word[7]_i_9_n_0 ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[0] ),
        .O(\lvds_sync_word[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \lvds_sync_word[7]_i_4 
       (.I0(bitslip__0[0]),
        .I1(bitslip__0[1]),
        .I2(bitslip__0[2]),
        .I3(bitslip__0[3]),
        .O(\lvds_sync_word[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \lvds_sync_word[7]_i_5 
       (.I0(lvds_sync_word33_in),
        .I1(bitslip__0[3]),
        .O(\lvds_sync_word[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \lvds_sync_word[7]_i_6 
       (.I0(p_0_in[7]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\fifo_din[63]_i_4_n_0 ),
        .I4(p_0_in[5]),
        .I5(p_0_in[6]),
        .O(\lvds_sync_word[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \lvds_sync_word[7]_i_7 
       (.I0(\lvds_sync_word[7]_i_10_n_0 ),
        .I1(\i_reg_n_0_[23] ),
        .I2(\i_reg_n_0_[22] ),
        .I3(\i_reg_n_0_[25] ),
        .I4(\i_reg_n_0_[24] ),
        .I5(\lvds_sync_word[7]_i_11_n_0 ),
        .O(\lvds_sync_word[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \lvds_sync_word[7]_i_8 
       (.I0(\i_reg_n_0_[8] ),
        .I1(\i_reg_n_0_[9] ),
        .I2(\i_reg_n_0_[6] ),
        .I3(\i_reg_n_0_[7] ),
        .I4(\lvds_sync_word[7]_i_12_n_0 ),
        .O(\lvds_sync_word[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \lvds_sync_word[7]_i_9 
       (.I0(\i_reg_n_0_[16] ),
        .I1(\i_reg_n_0_[17] ),
        .I2(\i_reg_n_0_[14] ),
        .I3(\i_reg_n_0_[15] ),
        .I4(\lvds_sync_word[7]_i_13_n_0 ),
        .O(\lvds_sync_word[7]_i_9_n_0 ));
  FDCE \lvds_sync_word_reg[0] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[0]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE \lvds_sync_word_reg[1] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[1]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE \lvds_sync_word_reg[2] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[2]_i_1_n_0 ),
        .Q(p_0_in[3]));
  FDCE \lvds_sync_word_reg[3] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[3]_i_1_n_0 ),
        .Q(p_0_in[4]));
  FDCE \lvds_sync_word_reg[4] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[4]_i_1_n_0 ),
        .Q(p_0_in[5]));
  FDCE \lvds_sync_word_reg[5] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[5]_i_1_n_0 ),
        .Q(p_0_in[6]));
  FDCE \lvds_sync_word_reg[6] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[6]_i_1_n_0 ),
        .Q(p_0_in[7]));
  FDCE \lvds_sync_word_reg[7] 
       (.C(lvds_clk),
        .CE(lvds_sync_word[7]),
        .CLR(fifo_srst),
        .D(\lvds_sync_word[7]_i_2_n_0 ),
        .Q(p_0_in[0]));
  FDCE lvds_word_ready_reg
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(lvds_sync_word[7]),
        .Q(lvds_word_ready_reg_n_0));
  LUT6 #(
    .INIT(64'h00000333AAAAA888)) 
    \nb_kernel[0]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(\nb_kernel[0]_i_2_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[7] ),
        .I3(lvds_word_ready_reg_n_0),
        .I4(\nb_kernel[0]_i_3_n_0 ),
        .I5(\nb_kernel_reg_n_0_[0] ),
        .O(\nb_kernel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \nb_kernel[0]_i_2 
       (.I0(lvds_word_ready_reg_n_0),
        .I1(p_0_in[7]),
        .I2(\FSM_onehot_DState_reg_n_0_[4] ),
        .I3(\nb_kernel[0]_i_4_n_0 ),
        .I4(\fifo_din[63]_i_4_n_0 ),
        .I5(\nb_kernel[0]_i_5_n_0 ),
        .O(\nb_kernel[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \nb_kernel[0]_i_3 
       (.I0(\fifo_din[63]_i_3_n_0 ),
        .I1(\FSM_onehot_DState_reg_n_0_[6] ),
        .I2(lvds_word_ready_reg_n_0),
        .I3(pixel_polarity),
        .O(\nb_kernel[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \nb_kernel[0]_i_4 
       (.I0(p_0_in[6]),
        .I1(p_0_in[5]),
        .O(\nb_kernel[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \nb_kernel[0]_i_5 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .O(\nb_kernel[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \nb_kernel_reg[0] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\nb_kernel[0]_i_1_n_0 ),
        .Q(\nb_kernel_reg_n_0_[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_lvds_stream_slave_stream_v1_0_S00_AXIS noip_lvds_stream_slave_stream_v1_0_S00_AXIS_inst
       (.s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h15FFE000)) 
    \pixel_polarity[0]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[7] ),
        .I1(\fifo_din[63]_i_3_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .I3(lvds_word_ready_reg_n_0),
        .I4(pixel_polarity),
        .O(\pixel_polarity[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_polarity_reg[0] 
       (.C(lvds_clk),
        .CE(1'b1),
        .CLR(fifo_srst),
        .D(\pixel_polarity[0]_i_1_n_0 ),
        .Q(pixel_polarity));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_lvds_stream_slave_stream_v1_0_S00_AXIS
   (s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_tlast);
  output s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input s00_axis_tlast;

  wire mst_exec_state_i_1_n_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire writes_done;
  wire writes_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(s00_axis_tready),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(s00_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(s00_axis_tvalid),
        .I2(s00_axis_tready),
        .I3(s00_axis_tlast),
        .I4(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif