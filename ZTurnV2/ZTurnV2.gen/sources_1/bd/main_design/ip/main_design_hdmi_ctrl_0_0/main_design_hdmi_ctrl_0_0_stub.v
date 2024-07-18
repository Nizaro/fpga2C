// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Jul 18 15:34:58 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_hdmi_ctrl_0_0/main_design_hdmi_ctrl_0_0_stub.v
// Design      : main_design_hdmi_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "hdmi_ctrl,Vivado 2024.1" *)
module main_design_hdmi_ctrl_0_0(hdmi_pclk, hdmi_data, hdmi_vsync, hdmi_hsync, 
  hdmi_de, hdmi_int, s00_axis_aclk, s00_axis_aresetn, s00_axis_tready, s00_axis_tdata, 
  s00_axis_tstrb, s00_axis_tlast, s00_axis_tvalid, s01_axis_aclk, s01_axis_aresetn, 
  s01_axis_tready, s01_axis_tdata, s01_axis_tstrb, s01_axis_tlast, s01_axis_tvalid)
/* synthesis syn_black_box black_box_pad_pin="hdmi_data[15:0],hdmi_vsync,hdmi_hsync,hdmi_de,hdmi_int,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,s01_axis_aresetn,s01_axis_tready,s01_axis_tdata[31:0],s01_axis_tstrb[3:0],s01_axis_tlast,s01_axis_tvalid" */
/* synthesis syn_force_seq_prim="hdmi_pclk" */
/* synthesis syn_force_seq_prim="s00_axis_aclk" */
/* synthesis syn_force_seq_prim="s00_axis_aresetn" */
/* synthesis syn_force_seq_prim="s01_axis_aclk" */;
  output hdmi_pclk /* synthesis syn_isclock = 1 */;
  output [15:0]hdmi_data;
  output hdmi_vsync;
  output hdmi_hsync;
  output hdmi_de;
  inout hdmi_int;
  input s00_axis_aclk /* synthesis syn_isclock = 1 */;
  input s00_axis_aresetn /* synthesis syn_isclock = 1 */;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input s01_axis_aclk /* synthesis syn_isclock = 1 */;
  input s01_axis_aresetn;
  output s01_axis_tready;
  input [31:0]s01_axis_tdata;
  input [3:0]s01_axis_tstrb;
  input s01_axis_tlast;
  input s01_axis_tvalid;
endmodule
