// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Aug  1 13:37:39 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_noip_lvds_stream_0_0/main_design_noip_lvds_stream_0_0_sim_netlist.v
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
  wire lvds_clk_div;
  wire [39:0]lvds_deserialized;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [30:30]\^m00_axis_tdata ;
  wire m00_axis_tlast;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tdata[31] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[30] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[29] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[28] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[27] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[26] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[25] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[24] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[23] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[22] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[21] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[20] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[19] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[18] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[17] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[16] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[15] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[14] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[13] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[12] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[11] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[10] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[9] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[8] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[7] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[6] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[5] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[4] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[3] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[2] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[1] = \^m00_axis_tdata [30];
  assign m00_axis_tdata[0] = \^m00_axis_tdata [30];
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign m00_axis_tvalid = m00_axis_tlast;
  assign trigger0 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  main_design_noip_lvds_stream_0_0_noip_lvds_stream U0
       (.bitslip(bitslip),
        .lvds_clk_div(lvds_clk_div),
        .lvds_deserialized(lvds_deserialized[7:0]),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tlast(m00_axis_tlast),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "noip_lvds_stream" *) 
module main_design_noip_lvds_stream_0_0_noip_lvds_stream
   (m00_axis_tlast,
    m00_axis_tdata,
    bitslip,
    s00_axis_tready,
    lvds_clk_div,
    m00_axis_aclk,
    m00_axis_aresetn,
    lvds_deserialized,
    s00_axis_tvalid,
    s00_axis_tlast,
    s00_axis_aresetn,
    s00_axis_aclk);
  output m00_axis_tlast;
  output [0:0]m00_axis_tdata;
  output [3:0]bitslip;
  output s00_axis_tready;
  input lvds_clk_div;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input [7:0]lvds_deserialized;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input s00_axis_aresetn;
  input s00_axis_aclk;

  wire \FSM_onehot_DState[1]_i_1_n_0 ;
  wire \FSM_onehot_DState[5]_i_1_n_0 ;
  wire \FSM_onehot_DState[7]_i_1_n_0 ;
  wire \FSM_onehot_DState[8]_i_10_n_0 ;
  wire \FSM_onehot_DState[8]_i_11_n_0 ;
  wire \FSM_onehot_DState[8]_i_12_n_0 ;
  wire \FSM_onehot_DState[8]_i_13_n_0 ;
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
  wire [3:0]bitslip;
  wire \bitslip[0]_i_1_n_0 ;
  wire \bitslip[0]_i_2_n_0 ;
  wire \bitslip[1]_i_1_n_0 ;
  wire \bitslip[1]_i_2_n_0 ;
  wire \bitslip[1]_i_3_n_0 ;
  wire \bitslip[2]_i_1_n_0 ;
  wire \bitslip[2]_i_2_n_0 ;
  wire \bitslip[3]_i_10_n_0 ;
  wire \bitslip[3]_i_11_n_0 ;
  wire \bitslip[3]_i_12_n_0 ;
  wire \bitslip[3]_i_13_n_0 ;
  wire \bitslip[3]_i_14_n_0 ;
  wire \bitslip[3]_i_15_n_0 ;
  wire \bitslip[3]_i_1_n_0 ;
  wire \bitslip[3]_i_3_n_0 ;
  wire \bitslip[3]_i_4_n_0 ;
  wire \bitslip[3]_i_5_n_0 ;
  wire \bitslip[3]_i_6_n_0 ;
  wire \bitslip[3]_i_7_n_0 ;
  wire \bitslip[3]_i_8_n_0 ;
  wire \bitslip[3]_i_9_n_0 ;
  wire findbitslip1;
  wire lvds_clk_div;
  wire [7:0]lvds_deserialized;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tlast;
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_DState[5]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[4] ),
        .I1(\FSM_onehot_DState_reg_n_0_[7] ),
        .O(\FSM_onehot_DState[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_DState[7]_i_1 
       (.I0(\FSM_onehot_DState_reg_n_0_[6] ),
        .I1(\FSM_onehot_DState[8]_i_5_n_0 ),
        .O(\FSM_onehot_DState[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \FSM_onehot_DState[8]_i_1 
       (.I0(\FSM_onehot_DState[8]_i_3_n_0 ),
        .I1(\FSM_onehot_DState[8]_i_4_n_0 ),
        .I2(\FSM_onehot_DState[8]_i_5_n_0 ),
        .I3(\FSM_onehot_DState_reg_n_0_[3] ),
        .I4(\FSM_onehot_DState[8]_i_6_n_0 ),
        .I5(\FSM_onehot_DState[8]_i_7_n_0 ),
        .O(\FSM_onehot_DState[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_DState[8]_i_10 
       (.I0(lvds_deserialized[3]),
        .I1(lvds_deserialized[2]),
        .I2(lvds_deserialized[1]),
        .O(\FSM_onehot_DState[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \FSM_onehot_DState[8]_i_11 
       (.I0(\FSM_onehot_DState_reg_n_0_[7] ),
        .I1(\FSM_onehot_DState_reg_n_0_[1] ),
        .I2(lvds_deserialized[7]),
        .I3(lvds_deserialized[6]),
        .O(\FSM_onehot_DState[8]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_DState[8]_i_12 
       (.I0(lvds_deserialized[7]),
        .I1(\FSM_onehot_DState_reg_n_0_[4] ),
        .I2(lvds_deserialized[6]),
        .I3(lvds_deserialized[0]),
        .O(\FSM_onehot_DState[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \FSM_onehot_DState[8]_i_13 
       (.I0(lvds_deserialized[0]),
        .I1(lvds_deserialized[3]),
        .I2(lvds_deserialized[2]),
        .I3(lvds_deserialized[1]),
        .I4(lvds_deserialized[7]),
        .I5(lvds_deserialized[4]),
        .O(\FSM_onehot_DState[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_DState[8]_i_2 
       (.I0(\FSM_onehot_DState[8]_i_5_n_0 ),
        .I1(\FSM_onehot_DState_reg_n_0_[6] ),
        .O(\FSM_onehot_DState[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_onehot_DState[8]_i_3 
       (.I0(\FSM_onehot_DState[8]_i_8_n_0 ),
        .I1(lvds_deserialized[0]),
        .I2(lvds_deserialized[6]),
        .I3(lvds_deserialized[7]),
        .I4(lvds_deserialized[4]),
        .I5(lvds_deserialized[5]),
        .O(\FSM_onehot_DState[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \FSM_onehot_DState[8]_i_4 
       (.I0(\FSM_onehot_DState[8]_i_9_n_0 ),
        .I1(\bitslip[3]_i_10_n_0 ),
        .I2(lvds_deserialized[5]),
        .I3(lvds_deserialized[6]),
        .I4(\FSM_onehot_DState_reg_n_0_[0] ),
        .I5(\FSM_onehot_DState_reg_n_0_[5] ),
        .O(\FSM_onehot_DState[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_onehot_DState[8]_i_5 
       (.I0(lvds_deserialized[4]),
        .I1(lvds_deserialized[7]),
        .I2(\FSM_onehot_DState[8]_i_10_n_0 ),
        .I3(lvds_deserialized[0]),
        .I4(lvds_deserialized[5]),
        .I5(lvds_deserialized[6]),
        .O(\FSM_onehot_DState[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000444400000040)) 
    \FSM_onehot_DState[8]_i_6 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[4]),
        .I2(\FSM_onehot_DState[8]_i_11_n_0 ),
        .I3(lvds_deserialized[0]),
        .I4(\FSM_onehot_DState[8]_i_10_n_0 ),
        .I5(\FSM_onehot_DState[8]_i_12_n_0 ),
        .O(\FSM_onehot_DState[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \FSM_onehot_DState[8]_i_7 
       (.I0(\FSM_onehot_DState[8]_i_13_n_0 ),
        .I1(lvds_deserialized[5]),
        .I2(\FSM_onehot_DState_reg_n_0_[6] ),
        .I3(\FSM_onehot_DState_reg_n_0_[8] ),
        .O(\FSM_onehot_DState[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_DState[8]_i_8 
       (.I0(lvds_deserialized[1]),
        .I1(lvds_deserialized[2]),
        .I2(lvds_deserialized[3]),
        .I3(\FSM_onehot_DState_reg_n_0_[2] ),
        .O(\FSM_onehot_DState[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_onehot_DState[8]_i_9 
       (.I0(lvds_deserialized[7]),
        .I1(lvds_deserialized[0]),
        .I2(lvds_deserialized[4]),
        .I3(lvds_deserialized[1]),
        .O(\FSM_onehot_DState[8]_i_9_n_0 ));
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
    .INIT(64'hFFFFFFFFD999FFFF)) 
    \bitslip[0]_i_1 
       (.I0(lvds_deserialized[0]),
        .I1(lvds_deserialized[3]),
        .I2(lvds_deserialized[5]),
        .I3(lvds_deserialized[2]),
        .I4(lvds_deserialized[1]),
        .I5(\bitslip[0]_i_2_n_0 ),
        .O(\bitslip[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6F7FF7FFFFFF)) 
    \bitslip[0]_i_2 
       (.I0(lvds_deserialized[4]),
        .I1(lvds_deserialized[3]),
        .I2(lvds_deserialized[2]),
        .I3(lvds_deserialized[5]),
        .I4(lvds_deserialized[6]),
        .I5(lvds_deserialized[7]),
        .O(\bitslip[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEFFFFFEF)) 
    \bitslip[1]_i_1 
       (.I0(\bitslip[1]_i_2_n_0 ),
        .I1(\bitslip[1]_i_3_n_0 ),
        .I2(lvds_deserialized[2]),
        .I3(lvds_deserialized[1]),
        .I4(lvds_deserialized[3]),
        .O(\bitslip[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF5FEF55FFFF)) 
    \bitslip[1]_i_2 
       (.I0(lvds_deserialized[4]),
        .I1(lvds_deserialized[7]),
        .I2(lvds_deserialized[6]),
        .I3(lvds_deserialized[0]),
        .I4(lvds_deserialized[3]),
        .I5(lvds_deserialized[5]),
        .O(\bitslip[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h008F)) 
    \bitslip[1]_i_3 
       (.I0(lvds_deserialized[6]),
        .I1(lvds_deserialized[3]),
        .I2(lvds_deserialized[7]),
        .I3(lvds_deserialized[0]),
        .O(\bitslip[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFD3FF)) 
    \bitslip[2]_i_1 
       (.I0(lvds_deserialized[3]),
        .I1(lvds_deserialized[2]),
        .I2(lvds_deserialized[1]),
        .I3(lvds_deserialized[4]),
        .I4(\bitslip[2]_i_2_n_0 ),
        .O(\bitslip[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF3FFE7FFFFFF)) 
    \bitslip[2]_i_2 
       (.I0(lvds_deserialized[1]),
        .I1(lvds_deserialized[6]),
        .I2(lvds_deserialized[0]),
        .I3(lvds_deserialized[5]),
        .I4(lvds_deserialized[3]),
        .I5(lvds_deserialized[7]),
        .O(\bitslip[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bitslip[3]_i_1 
       (.I0(\bitslip[3]_i_4_n_0 ),
        .I1(\FSM_onehot_DState_reg_n_0_[0] ),
        .O(\bitslip[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bitslip[3]_i_10 
       (.I0(lvds_deserialized[2]),
        .I1(lvds_deserialized[3]),
        .O(\bitslip[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bitslip[3]_i_11 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[6]),
        .O(\bitslip[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \bitslip[3]_i_12 
       (.I0(lvds_deserialized[7]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[6]),
        .O(\bitslip[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h08080800)) 
    \bitslip[3]_i_13 
       (.I0(lvds_deserialized[1]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[5]),
        .I4(lvds_deserialized[2]),
        .O(\bitslip[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bitslip[3]_i_14 
       (.I0(lvds_deserialized[0]),
        .I1(lvds_deserialized[6]),
        .O(\bitslip[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bitslip[3]_i_15 
       (.I0(lvds_deserialized[4]),
        .I1(lvds_deserialized[7]),
        .O(\bitslip[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bitslip[3]_i_2 
       (.I0(\bitslip[3]_i_5_n_0 ),
        .I1(\bitslip[3]_i_6_n_0 ),
        .I2(\bitslip[3]_i_7_n_0 ),
        .I3(\bitslip[3]_i_8_n_0 ),
        .I4(\bitslip[3]_i_9_n_0 ),
        .O(findbitslip1));
  LUT1 #(
    .INIT(2'h1)) 
    \bitslip[3]_i_3 
       (.I0(s00_axis_aresetn),
        .O(\bitslip[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \bitslip[3]_i_4 
       (.I0(lvds_deserialized[1]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[0]),
        .I3(lvds_deserialized[7]),
        .I4(\bitslip[3]_i_10_n_0 ),
        .I5(\bitslip[3]_i_11_n_0 ),
        .O(\bitslip[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0F03300AF0F3300)) 
    \bitslip[3]_i_5 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[4]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[2]),
        .I4(lvds_deserialized[1]),
        .I5(lvds_deserialized[0]),
        .O(\bitslip[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h303F300F0F0F050F)) 
    \bitslip[3]_i_6 
       (.I0(lvds_deserialized[5]),
        .I1(lvds_deserialized[1]),
        .I2(lvds_deserialized[3]),
        .I3(lvds_deserialized[7]),
        .I4(lvds_deserialized[6]),
        .I5(lvds_deserialized[4]),
        .O(\bitslip[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FF00FF80FFFF)) 
    \bitslip[3]_i_7 
       (.I0(lvds_deserialized[1]),
        .I1(lvds_deserialized[3]),
        .I2(\bitslip[3]_i_12_n_0 ),
        .I3(\bitslip[3]_i_13_n_0 ),
        .I4(lvds_deserialized[0]),
        .I5(lvds_deserialized[4]),
        .O(\bitslip[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF113310331133)) 
    \bitslip[3]_i_8 
       (.I0(lvds_deserialized[3]),
        .I1(lvds_deserialized[1]),
        .I2(\bitslip[3]_i_14_n_0 ),
        .I3(\bitslip[3]_i_15_n_0 ),
        .I4(lvds_deserialized[2]),
        .I5(\bitslip[1]_i_3_n_0 ),
        .O(\bitslip[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000BF330F0F3F3F)) 
    \bitslip[3]_i_9 
       (.I0(lvds_deserialized[7]),
        .I1(lvds_deserialized[6]),
        .I2(lvds_deserialized[5]),
        .I3(lvds_deserialized[3]),
        .I4(lvds_deserialized[2]),
        .I5(lvds_deserialized[1]),
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
  main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS noip_lvds_stream_master_stream_v1_0_M00_AXIS_inst
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast));
  main_design_noip_lvds_stream_0_0_noip_lvds_stream_slave_stream_v1_0_S00_AXIS noip_lvds_stream_slave_stream_v1_0_S00_AXIS_inst
       (.s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "noip_lvds_stream_master_stream_v1_0_M00_AXIS" *) 
module main_design_noip_lvds_stream_0_0_noip_lvds_stream_master_stream_v1_0_M00_AXIS
   (m00_axis_tlast,
    m00_axis_tdata,
    m00_axis_aclk,
    m00_axis_aresetn);
  output m00_axis_tlast;
  output [0:0]m00_axis_tdata;
  input m00_axis_aclk;
  input m00_axis_aresetn;

  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tlast;

  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(m00_axis_tdata),
        .Q(m00_axis_tlast),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \stream_data_out_reg[31] 
       (.CLR(1'b0),
        .D(m00_axis_aresetn),
        .G(m00_axis_aresetn),
        .GE(1'b1),
        .Q(m00_axis_tdata));
endmodule

(* ORIG_REF_NAME = "noip_lvds_stream_slave_stream_v1_0_S00_AXIS" *) 
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
