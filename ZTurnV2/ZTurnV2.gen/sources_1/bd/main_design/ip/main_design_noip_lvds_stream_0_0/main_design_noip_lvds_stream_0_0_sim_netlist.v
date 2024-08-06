// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Aug  6 09:42:42 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top main_design_noip_lvds_stream_0_0 -prefix
//               main_design_noip_lvds_stream_0_0_ main_design_noip_lvds_stream_0_0_sim_netlist.v
// Design      : main_design_noip_lvds_stream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_design_noip_lvds_stream_0_0,noip_lvds_stream,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "noip_lvds_stream,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_design_noip_lvds_stream_0_0
   (lvds_clk_div,
    lvds_deserialized,
    trigger0,
    monitor0,
    monitor1,
    bitslip,
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
  input lvds_clk_div;
  input [39:0]lvds_deserialized;
  output trigger0;
  input monitor0;
  input monitor1;
  output [3:0]bitslip;
  output fifo_srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 fifo_write FULL" *) input fifo_full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 fifo_write WR_DATA" *) output [63:0]fifo_din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 fifo_write WR_EN" *) output fifo_wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 fifo_read EMPTY" *) input fifo_empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 fifo_read RD_DATA" *) input [31:0]fifo_dout;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 fifo_read RD_EN" *) output fifo_rd_en;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 2e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 2e+08, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 2e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 2e+08, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]bitslip;
  wire [63:0]fifo_din;
  wire fifo_wr_en;
  wire lvds_clk_div;
  wire [39:0]lvds_deserialized;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign fifo_rd_en = \<const1> ;
  assign fifo_srst = \<const0> ;
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
  main_design_noip_lvds_stream_0_0_noip_lvds_stream U0
       (.bitslip(bitslip),
        .fifo_din(fifo_din),
        .fifo_wr_en(fifo_wr_en),
        .lvds_clk_div(lvds_clk_div),
        .lvds_deserialized(lvds_deserialized),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

module main_design_noip_lvds_stream_0_0_noip_lvds_stream
   (bitslip,
    fifo_din,
    s00_axis_tready,
    fifo_wr_en,
    lvds_clk_div,
    lvds_deserialized,
    s00_axis_tvalid,
    s00_axis_tlast,
    s00_axis_aresetn,
    s00_axis_aclk);
  output [3:0]bitslip;
  output [63:0]fifo_din;
  output s00_axis_tready;
  output fifo_wr_en;
  input lvds_clk_div;
  input [39:0]lvds_deserialized;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input s00_axis_aresetn;
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
  wire \FSM_onehot_DState_reg_n_0_[0] ;
  wire \FSM_onehot_DState_reg_n_0_[1] ;
  wire \FSM_onehot_DState_reg_n_0_[2] ;
  wire \FSM_onehot_DState_reg_n_0_[3] ;
  wire \FSM_onehot_DState_reg_n_0_[4] ;
  wire \FSM_onehot_DState_reg_n_0_[5] ;
  wire \FSM_onehot_DState_reg_n_0_[6] ;
  wire \FSM_onehot_DState_reg_n_0_[7] ;
  wire \FSM_onehot_DState_reg_n_0_[8] ;
  wire [3:0]bitslip;
  wire \bitslip[0]_i_1_n_0 ;
  wire \bitslip[0]_i_2_n_0 ;
  wire \bitslip[1]_i_1_n_0 ;
  wire \bitslip[1]_i_2_n_0 ;
  wire \bitslip[2]_i_1_n_0 ;
  wire \bitslip[2]_i_2_n_0 ;
  wire \bitslip[2]_i_3_n_0 ;
  wire \bitslip[3]_i_10_n_0 ;
  wire \bitslip[3]_i_1_n_0 ;
  wire \bitslip[3]_i_3_n_0 ;
  wire \bitslip[3]_i_4_n_0 ;
  wire \bitslip[3]_i_5_n_0 ;
  wire \bitslip[3]_i_6_n_0 ;
  wire \bitslip[3]_i_7_n_0 ;
  wire \bitslip[3]_i_8_n_0 ;
  wire \bitslip[3]_i_9_n_0 ;
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
  wire \fifo_din[6]_i_1_n_0 ;
  wire \fifo_din[7]_i_1_n_0 ;
  wire \fifo_din[8]_i_1_n_0 ;
  wire \fifo_din[9]_i_1_n_0 ;
  wire fifo_wr_en;
  wire fifo_wr_en_i_1_n_0;
  wire findbitslip1;
  wire [63:0]in19;
  wire \kernel[0][0]_i_1_n_0 ;
  wire \kernel[0][1]_i_1_n_0 ;
  wire \kernel[0][2]_i_1_n_0 ;
  wire \kernel[0][3]_i_1_n_0 ;
  wire \kernel[0][4]_i_1_n_0 ;
  wire \kernel[0][5]_i_1_n_0 ;
  wire \kernel[0][6]_i_1_n_0 ;
  wire \kernel[0][7]_i_2_n_0 ;
  wire \kernel[1][0]_i_1_n_0 ;
  wire \kernel[1][1]_i_1_n_0 ;
  wire \kernel[1][2]_i_1_n_0 ;
  wire \kernel[1][3]_i_1_n_0 ;
  wire \kernel[1][4]_i_1_n_0 ;
  wire \kernel[1][5]_i_1_n_0 ;
  wire \kernel[1][6]_i_1_n_0 ;
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
  wire \kernel[6]_0 ;
  wire \kernel[7][0]_i_1_n_0 ;
  wire \kernel[7][1]_i_1_n_0 ;
  wire \kernel[7][2]_i_1_n_0 ;
  wire \kernel[7][3]_i_1_n_0 ;
  wire \kernel[7][4]_i_1_n_0 ;
  wire \kernel[7][5]_i_1_n_0 ;
  wire \kernel[7][6]_i_1_n_0 ;
  wire \kernel[7][7]_i_1_n_0 ;
  wire \kernel[7]_1 ;
  wire lvds_clk_div;
  wire [39:0]lvds_deserialized;
  wire \nb_kernel[0]_i_1_n_0 ;
  wire \nb_kernel[0]_i_2_n_0 ;
  wire \nb_kernel_reg_n_0_[0] ;
  wire [0:0]pixel_polarity;
  wire \pixel_polarity[0]_i_1_n_0 ;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[1]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[0] ),
        .I1(\FSM_onehot_DState_reg_n_0_[8] ),
        .O(\FSM_onehot_DState[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[5]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[4] ),
        .I1(\FSM_onehot_DState_reg_n_0_[7] ),
        .O(\FSM_onehot_DState[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_DState[7]_i_1 
       (.I0(lvds_deserialized[6]),
        .I1(\FSM_onehot_DState_reg_n_0_[6] ),
        .I2(\fifo_din[63]_i_3_n_0 ),
        .O(\FSM_onehot_DState[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \FSM_onehot_DState[8]_i_1 
       (.I0(\FSM_onehot_DState[8]_i_3_n_0 ),
        .I1(\FSM_onehot_DState[8]_i_4_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[0] ),
        .I3(\FSM_onehot_DState[8]_i_5_n_0 ),
        .I4(\FSM_onehot_DState_reg_n_0_[8] ),
        .I5(\FSM_onehot_DState_reg_n_0_[5] ),
        .O(\FSM_onehot_DState[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_DState[8]_i_2 
       (.I0(lvds_deserialized[6]),
        .I1(\FSM_onehot_DState_reg_n_0_[6] ),
        .I2(\fifo_din[63]_i_3_n_0 ),
        .O(\FSM_onehot_DState[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000300020)) 
    \FSM_onehot_DState[8]_i_3 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(\FSM_onehot_DState[8]_i_6_n_0 ),
        .I2(lvds_deserialized[5]),
        .I3(lvds_deserialized[4]),
        .I4(\FSM_onehot_DState_reg_n_0_[3] ),
        .I5(lvds_deserialized[6]),
        .O(\FSM_onehot_DState[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \FSM_onehot_DState[8]_i_4 
       (.I0(lvds_deserialized[1]),
        .I1(lvds_deserialized[7]),
        .I2(\bitslip[3]_i_5_n_0 ),
        .I3(lvds_deserialized[6]),
        .I4(lvds_deserialized[2]),
        .I5(lvds_deserialized[3]),
        .O(\FSM_onehot_DState[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44444444444444F4)) 
    \FSM_onehot_DState[8]_i_5 
       (.I0(\FSM_onehot_DState[8]_i_6_n_0 ),
        .I1(\FSM_onehot_DState[8]_i_7_n_0 ),
        .I2(\FSM_onehot_DState[8]_i_8_n_0 ),
        .I3(lvds_deserialized[6]),
        .I4(lvds_deserialized[5]),
        .I5(lvds_deserialized[4]),
        .O(\FSM_onehot_DState[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_onehot_DState[8]_i_6 
       (.I0(lvds_deserialized[7]),
        .I1(lvds_deserialized[2]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[1]),
        .I4(lvds_deserialized[0]),
        .O(\FSM_onehot_DState[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4444444000004440)) 
    \FSM_onehot_DState[8]_i_7 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[4]),
        .I2(\FSM_onehot_DState_reg_n_0_[7] ),
        .I3(\FSM_onehot_DState_reg_n_0_[1] ),
        .I4(lvds_deserialized[6]),
        .I5(\FSM_onehot_DState_reg_n_0_[4] ),
        .O(\FSM_onehot_DState[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \FSM_onehot_DState[8]_i_8 
       (.I0(lvds_deserialized[2]),
        .I1(lvds_deserialized[1]),
        .I2(\FSM_onehot_DState_reg_n_0_[2] ),
        .I3(lvds_deserialized[0]),
        .I4(lvds_deserialized[7]),
        .I5(lvds_deserialized[3]),
        .O(\FSM_onehot_DState[8]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_DState_reg[0] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .D(1'b0),
        .PRE(\bitslip[3]_i_3_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[1] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[2] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState_reg_n_0_[1] ),
        .Q(\FSM_onehot_DState_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[3] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState_reg_n_0_[2] ),
        .Q(\FSM_onehot_DState_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[4] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState_reg_n_0_[3] ),
        .Q(\FSM_onehot_DState_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[5] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState[5]_i_1_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[6] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState_reg_n_0_[5] ),
        .Q(\FSM_onehot_DState_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[7] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState[7]_i_1_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "rec_black:000001000,end_black:000010000,wait_black:000000100,idle:000000010,aligning:000000001,wait_ls:010000000,after_fe:100000000,rec_img:001000000,rec_id:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_DState_reg[8] 
       (.C(lvds_clk_div),
        .CE(\FSM_onehot_DState[8]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\FSM_onehot_DState[8]_i_2_n_0 ),
        .Q(\FSM_onehot_DState_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'hFDFFFDFFFFDFFFFF)) 
    \bitslip[0]_i_1 
       (.I0(lvds_deserialized[1]),
        .I1(\bitslip[0]_i_2_n_0 ),
        .I2(lvds_deserialized[0]),
        .I3(lvds_deserialized[4]),
        .I4(lvds_deserialized[5]),
        .I5(lvds_deserialized[3]),
        .O(\bitslip[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB3DFFF)) 
    \bitslip[0]_i_2 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[7]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[6]),
        .I4(lvds_deserialized[2]),
        .O(\bitslip[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEBFFFFBFFFBF)) 
    \bitslip[1]_i_1 
       (.I0(\bitslip[1]_i_2_n_0 ),
        .I1(lvds_deserialized[6]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[4]),
        .I4(lvds_deserialized[0]),
        .I5(lvds_deserialized[7]),
        .O(\bitslip[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1FF1FFFFFFF)) 
    \bitslip[1]_i_2 
       (.I0(lvds_deserialized[0]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[1]),
        .I3(lvds_deserialized[2]),
        .I4(lvds_deserialized[3]),
        .I5(lvds_deserialized[5]),
        .O(\bitslip[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF91FF)) 
    \bitslip[2]_i_1 
       (.I0(lvds_deserialized[3]),
        .I1(lvds_deserialized[6]),
        .I2(lvds_deserialized[2]),
        .I3(lvds_deserialized[4]),
        .I4(\bitslip[2]_i_2_n_0 ),
        .I5(\bitslip[2]_i_3_n_0 ),
        .O(\bitslip[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF8F8F8F)) 
    \bitslip[2]_i_2 
       (.I0(lvds_deserialized[3]),
        .I1(lvds_deserialized[7]),
        .I2(lvds_deserialized[5]),
        .I3(lvds_deserialized[2]),
        .I4(lvds_deserialized[1]),
        .O(\bitslip[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F7FF0FFFF7FF)) 
    \bitslip[2]_i_3 
       (.I0(lvds_deserialized[6]),
        .I1(lvds_deserialized[1]),
        .I2(lvds_deserialized[0]),
        .I3(lvds_deserialized[3]),
        .I4(lvds_deserialized[2]),
        .I5(lvds_deserialized[7]),
        .O(\bitslip[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000000)) 
    \bitslip[3]_i_1 
       (.I0(\bitslip[3]_i_4_n_0 ),
        .I1(lvds_deserialized[6]),
        .I2(\bitslip[3]_i_5_n_0 ),
        .I3(lvds_deserialized[7]),
        .I4(lvds_deserialized[1]),
        .I5(\FSM_onehot_DState_reg_n_0_[0] ),
        .O(\bitslip[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8D5BDFF4FDFBF7F)) 
    \bitslip[3]_i_10 
       (.I0(lvds_deserialized[7]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[1]),
        .I3(lvds_deserialized[3]),
        .I4(lvds_deserialized[2]),
        .I5(lvds_deserialized[5]),
        .O(\bitslip[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bitslip[3]_i_2 
       (.I0(\bitslip[3]_i_6_n_0 ),
        .I1(\bitslip[3]_i_7_n_0 ),
        .I2(\bitslip[3]_i_8_n_0 ),
        .I3(\bitslip[3]_i_9_n_0 ),
        .I4(\bitslip[3]_i_10_n_0 ),
        .O(findbitslip1));
  LUT1 #(
    .INIT(2'h1)) 
    \bitslip[3]_i_3 
       (.I0(s00_axis_aresetn),
        .O(\bitslip[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bitslip[3]_i_4 
       (.I0(lvds_deserialized[2]),
        .I1(lvds_deserialized[3]),
        .O(\bitslip[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bitslip[3]_i_5 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[0]),
        .O(\bitslip[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00005555C0FF5555)) 
    \bitslip[3]_i_6 
       (.I0(lvds_deserialized[6]),
        .I1(lvds_deserialized[7]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[1]),
        .I4(lvds_deserialized[2]),
        .I5(lvds_deserialized[4]),
        .O(\bitslip[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0331)) 
    \bitslip[3]_i_7 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[6]),
        .O(\bitslip[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC50500CC)) 
    \bitslip[3]_i_8 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[2]),
        .I3(lvds_deserialized[6]),
        .I4(lvds_deserialized[3]),
        .O(\bitslip[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8A80757F)) 
    \bitslip[3]_i_9 
       (.I0(lvds_deserialized[4]),
        .I1(lvds_deserialized[1]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[2]),
        .I4(lvds_deserialized[0]),
        .O(\bitslip[3]_i_9_n_0 ));
  FDCE \bitslip_reg[0] 
       (.C(lvds_clk_div),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\bitslip[0]_i_1_n_0 ),
        .Q(bitslip[0]));
  FDCE \bitslip_reg[1] 
       (.C(lvds_clk_div),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\bitslip[1]_i_1_n_0 ),
        .Q(bitslip[1]));
  FDCE \bitslip_reg[2] 
       (.C(lvds_clk_div),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\bitslip[2]_i_1_n_0 ),
        .Q(bitslip[2]));
  FDCE \bitslip_reg[3] 
       (.C(lvds_clk_div),
        .CE(\bitslip[3]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(findbitslip1),
        .Q(bitslip[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[0]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[0]),
        .O(\fifo_din[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[10]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[10]),
        .O(\fifo_din[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[11]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[11]),
        .O(\fifo_din[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[12]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[12]),
        .O(\fifo_din[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[13]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[13]),
        .O(\fifo_din[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[14]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[14]),
        .O(\fifo_din[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[15]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[15]),
        .O(\fifo_din[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[16]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[16]),
        .O(\fifo_din[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[17]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[17]),
        .O(\fifo_din[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[18]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[18]),
        .O(\fifo_din[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[19]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[19]),
        .O(\fifo_din[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[1]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[1]),
        .O(\fifo_din[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[20]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[20]),
        .O(\fifo_din[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[21]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[21]),
        .O(\fifo_din[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[22]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[22]),
        .O(\fifo_din[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[23]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[23]),
        .O(\fifo_din[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[24]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[24]),
        .O(\fifo_din[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[25]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[25]),
        .O(\fifo_din[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[26]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[26]),
        .O(\fifo_din[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[27]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[27]),
        .O(\fifo_din[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[28]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[28]),
        .O(\fifo_din[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[29]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[29]),
        .O(\fifo_din[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[2]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[2]),
        .O(\fifo_din[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[30]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[30]),
        .O(\fifo_din[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[31]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[31]),
        .O(\fifo_din[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[32]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[32]),
        .O(\fifo_din[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[33]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[33]),
        .O(\fifo_din[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[34]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[34]),
        .O(\fifo_din[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[35]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[35]),
        .O(\fifo_din[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[36]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[36]),
        .O(\fifo_din[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[37]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[37]),
        .O(\fifo_din[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[38]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[38]),
        .O(\fifo_din[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[39]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[39]),
        .O(\fifo_din[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[3]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[3]),
        .O(\fifo_din[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[40]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[40]),
        .O(\fifo_din[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[41]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[41]),
        .O(\fifo_din[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[42]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[42]),
        .O(\fifo_din[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[43]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[43]),
        .O(\fifo_din[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[44]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[44]),
        .O(\fifo_din[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[45]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[45]),
        .O(\fifo_din[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[46]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[46]),
        .O(\fifo_din[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[47]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[47]),
        .O(\fifo_din[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[48]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[48]),
        .O(\fifo_din[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[49]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[49]),
        .O(\fifo_din[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[4]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[4]),
        .O(\fifo_din[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[50]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[50]),
        .O(\fifo_din[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[51]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[51]),
        .O(\fifo_din[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[52]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[52]),
        .O(\fifo_din[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[53]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[53]),
        .O(\fifo_din[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[54]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[54]),
        .O(\fifo_din[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[55]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[55]),
        .O(\fifo_din[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[56]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[56]),
        .O(\fifo_din[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[57]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[57]),
        .O(\fifo_din[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[58]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[58]),
        .O(\fifo_din[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[59]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[59]),
        .O(\fifo_din[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[5]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[5]),
        .O(\fifo_din[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[60]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[60]),
        .O(\fifo_din[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[61]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[61]),
        .O(\fifo_din[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[62]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[62]),
        .O(\fifo_din[62]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \fifo_din[63]_i_1 
       (.I0(pixel_polarity),
        .I1(\fifo_din[63]_i_3_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .I3(\FSM_onehot_DState_reg_n_0_[1] ),
        .O(\fifo_din[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[63]_i_2 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[63]),
        .O(\fifo_din[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \fifo_din[63]_i_3 
       (.I0(lvds_deserialized[0]),
        .I1(lvds_deserialized[1]),
        .I2(\bitslip[3]_i_4_n_0 ),
        .I3(lvds_deserialized[7]),
        .I4(lvds_deserialized[5]),
        .I5(lvds_deserialized[4]),
        .O(\fifo_din[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[6]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[6]),
        .O(\fifo_din[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[7]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[7]),
        .O(\fifo_din[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[8]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[8]),
        .O(\fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[9]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(in19[9]),
        .O(\fifo_din[9]_i_1_n_0 ));
  FDCE \fifo_din_reg[0] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[0]_i_1_n_0 ),
        .Q(fifo_din[0]));
  FDCE \fifo_din_reg[10] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[10]_i_1_n_0 ),
        .Q(fifo_din[10]));
  FDCE \fifo_din_reg[11] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[11]_i_1_n_0 ),
        .Q(fifo_din[11]));
  FDCE \fifo_din_reg[12] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[12]_i_1_n_0 ),
        .Q(fifo_din[12]));
  FDCE \fifo_din_reg[13] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[13]_i_1_n_0 ),
        .Q(fifo_din[13]));
  FDCE \fifo_din_reg[14] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[14]_i_1_n_0 ),
        .Q(fifo_din[14]));
  FDCE \fifo_din_reg[15] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[15]_i_1_n_0 ),
        .Q(fifo_din[15]));
  FDCE \fifo_din_reg[16] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[16]_i_1_n_0 ),
        .Q(fifo_din[16]));
  FDCE \fifo_din_reg[17] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[17]_i_1_n_0 ),
        .Q(fifo_din[17]));
  FDCE \fifo_din_reg[18] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[18]_i_1_n_0 ),
        .Q(fifo_din[18]));
  FDCE \fifo_din_reg[19] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[19]_i_1_n_0 ),
        .Q(fifo_din[19]));
  FDCE \fifo_din_reg[1] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[1]_i_1_n_0 ),
        .Q(fifo_din[1]));
  FDCE \fifo_din_reg[20] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[20]_i_1_n_0 ),
        .Q(fifo_din[20]));
  FDCE \fifo_din_reg[21] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[21]_i_1_n_0 ),
        .Q(fifo_din[21]));
  FDCE \fifo_din_reg[22] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[22]_i_1_n_0 ),
        .Q(fifo_din[22]));
  FDCE \fifo_din_reg[23] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[23]_i_1_n_0 ),
        .Q(fifo_din[23]));
  FDCE \fifo_din_reg[24] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[24]_i_1_n_0 ),
        .Q(fifo_din[24]));
  FDCE \fifo_din_reg[25] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[25]_i_1_n_0 ),
        .Q(fifo_din[25]));
  FDCE \fifo_din_reg[26] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[26]_i_1_n_0 ),
        .Q(fifo_din[26]));
  FDCE \fifo_din_reg[27] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[27]_i_1_n_0 ),
        .Q(fifo_din[27]));
  FDCE \fifo_din_reg[28] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[28]_i_1_n_0 ),
        .Q(fifo_din[28]));
  FDCE \fifo_din_reg[29] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[29]_i_1_n_0 ),
        .Q(fifo_din[29]));
  FDCE \fifo_din_reg[2] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[2]_i_1_n_0 ),
        .Q(fifo_din[2]));
  FDCE \fifo_din_reg[30] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[30]_i_1_n_0 ),
        .Q(fifo_din[30]));
  FDCE \fifo_din_reg[31] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[31]_i_1_n_0 ),
        .Q(fifo_din[31]));
  FDCE \fifo_din_reg[32] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[32]_i_1_n_0 ),
        .Q(fifo_din[32]));
  FDCE \fifo_din_reg[33] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[33]_i_1_n_0 ),
        .Q(fifo_din[33]));
  FDCE \fifo_din_reg[34] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[34]_i_1_n_0 ),
        .Q(fifo_din[34]));
  FDCE \fifo_din_reg[35] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[35]_i_1_n_0 ),
        .Q(fifo_din[35]));
  FDCE \fifo_din_reg[36] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[36]_i_1_n_0 ),
        .Q(fifo_din[36]));
  FDCE \fifo_din_reg[37] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[37]_i_1_n_0 ),
        .Q(fifo_din[37]));
  FDCE \fifo_din_reg[38] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[38]_i_1_n_0 ),
        .Q(fifo_din[38]));
  FDCE \fifo_din_reg[39] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[39]_i_1_n_0 ),
        .Q(fifo_din[39]));
  FDCE \fifo_din_reg[3] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[3]_i_1_n_0 ),
        .Q(fifo_din[3]));
  FDCE \fifo_din_reg[40] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[40]_i_1_n_0 ),
        .Q(fifo_din[40]));
  FDCE \fifo_din_reg[41] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[41]_i_1_n_0 ),
        .Q(fifo_din[41]));
  FDCE \fifo_din_reg[42] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[42]_i_1_n_0 ),
        .Q(fifo_din[42]));
  FDCE \fifo_din_reg[43] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[43]_i_1_n_0 ),
        .Q(fifo_din[43]));
  FDCE \fifo_din_reg[44] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[44]_i_1_n_0 ),
        .Q(fifo_din[44]));
  FDCE \fifo_din_reg[45] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[45]_i_1_n_0 ),
        .Q(fifo_din[45]));
  FDCE \fifo_din_reg[46] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[46]_i_1_n_0 ),
        .Q(fifo_din[46]));
  FDCE \fifo_din_reg[47] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[47]_i_1_n_0 ),
        .Q(fifo_din[47]));
  FDCE \fifo_din_reg[48] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[48]_i_1_n_0 ),
        .Q(fifo_din[48]));
  FDCE \fifo_din_reg[49] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[49]_i_1_n_0 ),
        .Q(fifo_din[49]));
  FDCE \fifo_din_reg[4] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[4]_i_1_n_0 ),
        .Q(fifo_din[4]));
  FDCE \fifo_din_reg[50] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[50]_i_1_n_0 ),
        .Q(fifo_din[50]));
  FDCE \fifo_din_reg[51] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[51]_i_1_n_0 ),
        .Q(fifo_din[51]));
  FDCE \fifo_din_reg[52] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[52]_i_1_n_0 ),
        .Q(fifo_din[52]));
  FDCE \fifo_din_reg[53] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[53]_i_1_n_0 ),
        .Q(fifo_din[53]));
  FDCE \fifo_din_reg[54] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[54]_i_1_n_0 ),
        .Q(fifo_din[54]));
  FDCE \fifo_din_reg[55] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[55]_i_1_n_0 ),
        .Q(fifo_din[55]));
  FDCE \fifo_din_reg[56] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[56]_i_1_n_0 ),
        .Q(fifo_din[56]));
  FDCE \fifo_din_reg[57] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[57]_i_1_n_0 ),
        .Q(fifo_din[57]));
  FDCE \fifo_din_reg[58] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[58]_i_1_n_0 ),
        .Q(fifo_din[58]));
  FDCE \fifo_din_reg[59] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[59]_i_1_n_0 ),
        .Q(fifo_din[59]));
  FDCE \fifo_din_reg[5] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[5]_i_1_n_0 ),
        .Q(fifo_din[5]));
  FDCE \fifo_din_reg[60] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[60]_i_1_n_0 ),
        .Q(fifo_din[60]));
  FDCE \fifo_din_reg[61] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[61]_i_1_n_0 ),
        .Q(fifo_din[61]));
  FDCE \fifo_din_reg[62] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[62]_i_1_n_0 ),
        .Q(fifo_din[62]));
  FDCE \fifo_din_reg[63] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[63]_i_2_n_0 ),
        .Q(fifo_din[63]));
  FDCE \fifo_din_reg[6] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[6]_i_1_n_0 ),
        .Q(fifo_din[6]));
  FDCE \fifo_din_reg[7] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[7]_i_1_n_0 ),
        .Q(fifo_din[7]));
  FDCE \fifo_din_reg[8] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[8]_i_1_n_0 ),
        .Q(fifo_din[8]));
  FDCE \fifo_din_reg[9] 
       (.C(lvds_clk_div),
        .CE(\fifo_din[63]_i_1_n_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\fifo_din[9]_i_1_n_0 ),
        .Q(fifo_din[9]));
  LUT6 #(
    .INIT(64'h888888BF88888880)) 
    fifo_wr_en_i_1
       (.I0(pixel_polarity),
        .I1(\FSM_onehot_DState_reg_n_0_[6] ),
        .I2(\fifo_din[63]_i_3_n_0 ),
        .I3(\FSM_onehot_DState_reg_n_0_[7] ),
        .I4(\FSM_onehot_DState_reg_n_0_[1] ),
        .I5(fifo_wr_en),
        .O(fifo_wr_en_i_1_n_0));
  FDCE fifo_wr_en_reg
       (.C(lvds_clk_div),
        .CE(1'b1),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(fifo_wr_en_i_1_n_0),
        .Q(fifo_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][0]_i_1 
       (.I0(lvds_deserialized[8]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[32]),
        .O(\kernel[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][1]_i_1 
       (.I0(lvds_deserialized[9]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[33]),
        .O(\kernel[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][2]_i_1 
       (.I0(lvds_deserialized[10]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[34]),
        .O(\kernel[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][3]_i_1 
       (.I0(lvds_deserialized[11]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[35]),
        .O(\kernel[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][4]_i_1 
       (.I0(lvds_deserialized[12]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[36]),
        .O(\kernel[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][5]_i_1 
       (.I0(lvds_deserialized[13]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[37]),
        .O(\kernel[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][6]_i_1 
       (.I0(lvds_deserialized[14]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[38]),
        .O(\kernel[0][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9000)) 
    \kernel[0][7]_i_1 
       (.I0(\nb_kernel_reg_n_0_[0] ),
        .I1(pixel_polarity),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .I3(\fifo_din[63]_i_3_n_0 ),
        .O(\kernel[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \kernel[0][7]_i_2 
       (.I0(lvds_deserialized[15]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[39]),
        .O(\kernel[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][0]_i_1 
       (.I0(lvds_deserialized[8]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[32]),
        .O(\kernel[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][1]_i_1 
       (.I0(lvds_deserialized[9]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[33]),
        .O(\kernel[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][2]_i_1 
       (.I0(lvds_deserialized[10]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[34]),
        .O(\kernel[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][3]_i_1 
       (.I0(lvds_deserialized[11]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[35]),
        .O(\kernel[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][4]_i_1 
       (.I0(lvds_deserialized[12]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[36]),
        .O(\kernel[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][5]_i_1 
       (.I0(lvds_deserialized[13]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[37]),
        .O(\kernel[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][6]_i_1 
       (.I0(lvds_deserialized[14]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[38]),
        .O(\kernel[1][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2800)) 
    \kernel[1][7]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(\fifo_din[63]_i_3_n_0 ),
        .O(\kernel[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[1][7]_i_2 
       (.I0(lvds_deserialized[15]),
        .I1(pixel_polarity),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(lvds_deserialized[39]),
        .O(\kernel[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][0]_i_1 
       (.I0(lvds_deserialized[24]),
        .I1(lvds_deserialized[16]),
        .I2(lvds_deserialized[8]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][1]_i_1 
       (.I0(lvds_deserialized[25]),
        .I1(lvds_deserialized[17]),
        .I2(lvds_deserialized[9]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][2]_i_1 
       (.I0(lvds_deserialized[26]),
        .I1(lvds_deserialized[18]),
        .I2(lvds_deserialized[10]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][3]_i_1 
       (.I0(lvds_deserialized[27]),
        .I1(lvds_deserialized[19]),
        .I2(lvds_deserialized[11]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][4]_i_1 
       (.I0(lvds_deserialized[28]),
        .I1(lvds_deserialized[20]),
        .I2(lvds_deserialized[12]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][5]_i_1 
       (.I0(lvds_deserialized[29]),
        .I1(lvds_deserialized[21]),
        .I2(lvds_deserialized[13]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][6]_i_1 
       (.I0(lvds_deserialized[30]),
        .I1(lvds_deserialized[22]),
        .I2(lvds_deserialized[14]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAF0F0CC)) 
    \kernel[2][7]_i_1 
       (.I0(lvds_deserialized[31]),
        .I1(lvds_deserialized[23]),
        .I2(lvds_deserialized[15]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][0]_i_1 
       (.I0(lvds_deserialized[24]),
        .I1(lvds_deserialized[16]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[8]),
        .O(\kernel[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][1]_i_1 
       (.I0(lvds_deserialized[25]),
        .I1(lvds_deserialized[17]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[9]),
        .O(\kernel[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][2]_i_1 
       (.I0(lvds_deserialized[26]),
        .I1(lvds_deserialized[18]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[10]),
        .O(\kernel[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][3]_i_1 
       (.I0(lvds_deserialized[27]),
        .I1(lvds_deserialized[19]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[11]),
        .O(\kernel[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][4]_i_1 
       (.I0(lvds_deserialized[28]),
        .I1(lvds_deserialized[20]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[12]),
        .O(\kernel[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][5]_i_1 
       (.I0(lvds_deserialized[29]),
        .I1(lvds_deserialized[21]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[13]),
        .O(\kernel[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][6]_i_1 
       (.I0(lvds_deserialized[30]),
        .I1(lvds_deserialized[22]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[14]),
        .O(\kernel[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \kernel[3][7]_i_1 
       (.I0(lvds_deserialized[31]),
        .I1(lvds_deserialized[23]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[15]),
        .O(\kernel[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][0]_i_1 
       (.I0(lvds_deserialized[24]),
        .I1(lvds_deserialized[16]),
        .I2(lvds_deserialized[8]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][1]_i_1 
       (.I0(lvds_deserialized[25]),
        .I1(lvds_deserialized[17]),
        .I2(lvds_deserialized[9]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][2]_i_1 
       (.I0(lvds_deserialized[26]),
        .I1(lvds_deserialized[18]),
        .I2(lvds_deserialized[10]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][3]_i_1 
       (.I0(lvds_deserialized[27]),
        .I1(lvds_deserialized[19]),
        .I2(lvds_deserialized[11]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][4]_i_1 
       (.I0(lvds_deserialized[28]),
        .I1(lvds_deserialized[20]),
        .I2(lvds_deserialized[12]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][5]_i_1 
       (.I0(lvds_deserialized[29]),
        .I1(lvds_deserialized[21]),
        .I2(lvds_deserialized[13]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][6]_i_1 
       (.I0(lvds_deserialized[30]),
        .I1(lvds_deserialized[22]),
        .I2(lvds_deserialized[14]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hCCF0F0AA)) 
    \kernel[4][7]_i_1 
       (.I0(lvds_deserialized[31]),
        .I1(lvds_deserialized[23]),
        .I2(lvds_deserialized[15]),
        .I3(\nb_kernel_reg_n_0_[0] ),
        .I4(pixel_polarity),
        .O(\kernel[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][0]_i_1 
       (.I0(lvds_deserialized[24]),
        .I1(lvds_deserialized[16]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[8]),
        .O(\kernel[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][1]_i_1 
       (.I0(lvds_deserialized[25]),
        .I1(lvds_deserialized[17]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[9]),
        .O(\kernel[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][2]_i_1 
       (.I0(lvds_deserialized[26]),
        .I1(lvds_deserialized[18]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[10]),
        .O(\kernel[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][3]_i_1 
       (.I0(lvds_deserialized[27]),
        .I1(lvds_deserialized[19]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[11]),
        .O(\kernel[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][4]_i_1 
       (.I0(lvds_deserialized[28]),
        .I1(lvds_deserialized[20]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[12]),
        .O(\kernel[5][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][5]_i_1 
       (.I0(lvds_deserialized[29]),
        .I1(lvds_deserialized[21]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[13]),
        .O(\kernel[5][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][6]_i_1 
       (.I0(lvds_deserialized[30]),
        .I1(lvds_deserialized[22]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[14]),
        .O(\kernel[5][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFACF0AC0)) 
    \kernel[5][7]_i_1 
       (.I0(lvds_deserialized[31]),
        .I1(lvds_deserialized[23]),
        .I2(\nb_kernel_reg_n_0_[0] ),
        .I3(pixel_polarity),
        .I4(lvds_deserialized[15]),
        .O(\kernel[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][0]_i_1 
       (.I0(lvds_deserialized[8]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[32]),
        .O(\kernel[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][1]_i_1 
       (.I0(lvds_deserialized[9]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[33]),
        .O(\kernel[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][2]_i_1 
       (.I0(lvds_deserialized[10]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[34]),
        .O(\kernel[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][3]_i_1 
       (.I0(lvds_deserialized[11]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[35]),
        .O(\kernel[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][4]_i_1 
       (.I0(lvds_deserialized[12]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[36]),
        .O(\kernel[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][5]_i_1 
       (.I0(lvds_deserialized[13]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[37]),
        .O(\kernel[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][6]_i_1 
       (.I0(lvds_deserialized[14]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[38]),
        .O(\kernel[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \kernel[6][7]_i_1 
       (.I0(lvds_deserialized[15]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[39]),
        .O(\kernel[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][0]_i_1 
       (.I0(lvds_deserialized[8]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[32]),
        .O(\kernel[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][1]_i_1 
       (.I0(lvds_deserialized[9]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[33]),
        .O(\kernel[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][2]_i_1 
       (.I0(lvds_deserialized[10]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[34]),
        .O(\kernel[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][3]_i_1 
       (.I0(lvds_deserialized[11]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[35]),
        .O(\kernel[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][4]_i_1 
       (.I0(lvds_deserialized[12]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[36]),
        .O(\kernel[7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][5]_i_1 
       (.I0(lvds_deserialized[13]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[37]),
        .O(\kernel[7][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][6]_i_1 
       (.I0(lvds_deserialized[14]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[38]),
        .O(\kernel[7][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \kernel[7][7]_i_1 
       (.I0(lvds_deserialized[15]),
        .I1(\nb_kernel_reg_n_0_[0] ),
        .I2(pixel_polarity),
        .I3(lvds_deserialized[39]),
        .O(\kernel[7][7]_i_1_n_0 ));
  FDCE \kernel_reg[0][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][0]_i_1_n_0 ),
        .Q(in19[0]));
  FDCE \kernel_reg[0][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][1]_i_1_n_0 ),
        .Q(in19[1]));
  FDCE \kernel_reg[0][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][2]_i_1_n_0 ),
        .Q(in19[2]));
  FDCE \kernel_reg[0][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][3]_i_1_n_0 ),
        .Q(in19[3]));
  FDCE \kernel_reg[0][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][4]_i_1_n_0 ),
        .Q(in19[4]));
  FDCE \kernel_reg[0][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][5]_i_1_n_0 ),
        .Q(in19[5]));
  FDCE \kernel_reg[0][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][6]_i_1_n_0 ),
        .Q(in19[6]));
  FDCE \kernel_reg[0][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[0][7]_i_2_n_0 ),
        .Q(in19[7]));
  FDCE \kernel_reg[1][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][0]_i_1_n_0 ),
        .Q(in19[8]));
  FDCE \kernel_reg[1][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][1]_i_1_n_0 ),
        .Q(in19[9]));
  FDCE \kernel_reg[1][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][2]_i_1_n_0 ),
        .Q(in19[10]));
  FDCE \kernel_reg[1][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][3]_i_1_n_0 ),
        .Q(in19[11]));
  FDCE \kernel_reg[1][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][4]_i_1_n_0 ),
        .Q(in19[12]));
  FDCE \kernel_reg[1][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][5]_i_1_n_0 ),
        .Q(in19[13]));
  FDCE \kernel_reg[1][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][6]_i_1_n_0 ),
        .Q(in19[14]));
  FDCE \kernel_reg[1][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[1][7]_i_2_n_0 ),
        .Q(in19[15]));
  FDCE \kernel_reg[2][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][0]_i_1_n_0 ),
        .Q(in19[16]));
  FDCE \kernel_reg[2][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][1]_i_1_n_0 ),
        .Q(in19[17]));
  FDCE \kernel_reg[2][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][2]_i_1_n_0 ),
        .Q(in19[18]));
  FDCE \kernel_reg[2][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][3]_i_1_n_0 ),
        .Q(in19[19]));
  FDCE \kernel_reg[2][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][4]_i_1_n_0 ),
        .Q(in19[20]));
  FDCE \kernel_reg[2][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][5]_i_1_n_0 ),
        .Q(in19[21]));
  FDCE \kernel_reg[2][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][6]_i_1_n_0 ),
        .Q(in19[22]));
  FDCE \kernel_reg[2][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[2][7]_i_1_n_0 ),
        .Q(in19[23]));
  FDCE \kernel_reg[3][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][0]_i_1_n_0 ),
        .Q(in19[24]));
  FDCE \kernel_reg[3][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][1]_i_1_n_0 ),
        .Q(in19[25]));
  FDCE \kernel_reg[3][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][2]_i_1_n_0 ),
        .Q(in19[26]));
  FDCE \kernel_reg[3][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][3]_i_1_n_0 ),
        .Q(in19[27]));
  FDCE \kernel_reg[3][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][4]_i_1_n_0 ),
        .Q(in19[28]));
  FDCE \kernel_reg[3][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][5]_i_1_n_0 ),
        .Q(in19[29]));
  FDCE \kernel_reg[3][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][6]_i_1_n_0 ),
        .Q(in19[30]));
  FDCE \kernel_reg[3][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[3][7]_i_1_n_0 ),
        .Q(in19[31]));
  FDCE \kernel_reg[4][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][0]_i_1_n_0 ),
        .Q(in19[32]));
  FDCE \kernel_reg[4][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][1]_i_1_n_0 ),
        .Q(in19[33]));
  FDCE \kernel_reg[4][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][2]_i_1_n_0 ),
        .Q(in19[34]));
  FDCE \kernel_reg[4][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][3]_i_1_n_0 ),
        .Q(in19[35]));
  FDCE \kernel_reg[4][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][4]_i_1_n_0 ),
        .Q(in19[36]));
  FDCE \kernel_reg[4][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][5]_i_1_n_0 ),
        .Q(in19[37]));
  FDCE \kernel_reg[4][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][6]_i_1_n_0 ),
        .Q(in19[38]));
  FDCE \kernel_reg[4][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[4][7]_i_1_n_0 ),
        .Q(in19[39]));
  FDCE \kernel_reg[5][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][0]_i_1_n_0 ),
        .Q(in19[40]));
  FDCE \kernel_reg[5][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][1]_i_1_n_0 ),
        .Q(in19[41]));
  FDCE \kernel_reg[5][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][2]_i_1_n_0 ),
        .Q(in19[42]));
  FDCE \kernel_reg[5][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][3]_i_1_n_0 ),
        .Q(in19[43]));
  FDCE \kernel_reg[5][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][4]_i_1_n_0 ),
        .Q(in19[44]));
  FDCE \kernel_reg[5][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][5]_i_1_n_0 ),
        .Q(in19[45]));
  FDCE \kernel_reg[5][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][6]_i_1_n_0 ),
        .Q(in19[46]));
  FDCE \kernel_reg[5][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[5][7]_i_1_n_0 ),
        .Q(in19[47]));
  FDCE \kernel_reg[6][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][0]_i_1_n_0 ),
        .Q(in19[48]));
  FDCE \kernel_reg[6][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][1]_i_1_n_0 ),
        .Q(in19[49]));
  FDCE \kernel_reg[6][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][2]_i_1_n_0 ),
        .Q(in19[50]));
  FDCE \kernel_reg[6][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][3]_i_1_n_0 ),
        .Q(in19[51]));
  FDCE \kernel_reg[6][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][4]_i_1_n_0 ),
        .Q(in19[52]));
  FDCE \kernel_reg[6][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][5]_i_1_n_0 ),
        .Q(in19[53]));
  FDCE \kernel_reg[6][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][6]_i_1_n_0 ),
        .Q(in19[54]));
  FDCE \kernel_reg[6][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[6]_0 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[6][7]_i_1_n_0 ),
        .Q(in19[55]));
  FDCE \kernel_reg[7][0] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][0]_i_1_n_0 ),
        .Q(in19[56]));
  FDCE \kernel_reg[7][1] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][1]_i_1_n_0 ),
        .Q(in19[57]));
  FDCE \kernel_reg[7][2] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][2]_i_1_n_0 ),
        .Q(in19[58]));
  FDCE \kernel_reg[7][3] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][3]_i_1_n_0 ),
        .Q(in19[59]));
  FDCE \kernel_reg[7][4] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][4]_i_1_n_0 ),
        .Q(in19[60]));
  FDCE \kernel_reg[7][5] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][5]_i_1_n_0 ),
        .Q(in19[61]));
  FDCE \kernel_reg[7][6] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][6]_i_1_n_0 ),
        .Q(in19[62]));
  FDCE \kernel_reg[7][7] 
       (.C(lvds_clk_div),
        .CE(\kernel[7]_1 ),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\kernel[7][7]_i_1_n_0 ),
        .Q(in19[63]));
  LUT5 #(
    .INIT(32'h007FF080)) 
    \nb_kernel[0]_i_1 
       (.I0(pixel_polarity),
        .I1(\fifo_din[63]_i_3_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .I3(\nb_kernel[0]_i_2_n_0 ),
        .I4(\nb_kernel_reg_n_0_[0] ),
        .O(\nb_kernel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \nb_kernel[0]_i_2 
       (.I0(\FSM_onehot_DState[8]_i_6_n_0 ),
        .I1(lvds_deserialized[4]),
        .I2(\FSM_onehot_DState_reg_n_0_[4] ),
        .I3(lvds_deserialized[5]),
        .I4(lvds_deserialized[6]),
        .I5(\FSM_onehot_DState_reg_n_0_[7] ),
        .O(\nb_kernel[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \nb_kernel_reg[0] 
       (.C(lvds_clk_div),
        .CE(1'b1),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\nb_kernel[0]_i_1_n_0 ),
        .Q(\nb_kernel_reg_n_0_[0] ));
  main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS noip_lvds_stream_slave_stream_v1_0_S00_AXIS_inst
       (.s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  LUT4 #(
    .INIT(16'h07A8)) 
    \pixel_polarity[0]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(\fifo_din[63]_i_3_n_0 ),
        .I2(\FSM_onehot_DState_reg_n_0_[7] ),
        .I3(pixel_polarity),
        .O(\pixel_polarity[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_polarity_reg[0] 
       (.C(lvds_clk_div),
        .CE(1'b1),
        .CLR(\bitslip[3]_i_3_n_0 ),
        .D(\pixel_polarity[0]_i_1_n_0 ),
        .Q(pixel_polarity));
endmodule

module main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS
   (s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_tlast,
    s00_axis_aresetn);
  output s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input s00_axis_aresetn;

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
