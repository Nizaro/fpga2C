// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Aug  1 13:37:39 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_noip_lvds_stream_0_0/main_design_noip_lvds_stream_0_0_stub.v
// Design      : main_design_noip_lvds_stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "noip_lvds_stream,Vivado 2024.1" *)
module main_design_noip_lvds_stream_0_0(lvds_clk_div, lvds_deserialized, trigger0, 
  monitor0, monitor1, bitslip, s00_axis_aclk, s00_axis_aresetn, s00_axis_tready, 
  s00_axis_tdata, s00_axis_tstrb, s00_axis_tlast, s00_axis_tvalid, m00_axis_aclk, 
  m00_axis_aresetn, m00_axis_tvalid, m00_axis_tdata, m00_axis_tstrb, m00_axis_tlast, 
  m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="lvds_deserialized[39:0],trigger0,monitor0,monitor1,bitslip[3:0],s00_axis_aresetn,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready" */
/* synthesis syn_force_seq_prim="lvds_clk_div" */
/* synthesis syn_force_seq_prim="s00_axis_aclk" */
/* synthesis syn_force_seq_prim="m00_axis_aclk" */
/* synthesis syn_force_seq_prim="m00_axis_aresetn" */;
  input lvds_clk_div /* synthesis syn_isclock = 1 */;
  input [39:0]lvds_deserialized;
  output trigger0;
  input monitor0;
  input monitor1;
  output [3:0]bitslip;
  input s00_axis_aclk /* synthesis syn_isclock = 1 */;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input m00_axis_aclk /* synthesis syn_isclock = 1 */;
  input m00_axis_aresetn /* synthesis syn_isclock = 1 */;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
endmodule
