// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jul 31 16:35:47 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_3/main_design_xbar_3_stub.v
// Design      : main_design_xbar_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_31_axis_switch,Vivado 2024.1" *)
module main_design_xbar_3(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tdest, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tdest, s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axis_tvalid[0:0],s_axis_tready[0:0],s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tlast[0:0],s_axis_tdest[0:0],m_axis_tvalid[1:0],m_axis_tready[1:0],m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast[1:0],m_axis_tdest[1:0],s_decode_err[0:0]" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input [0:0]s_axis_tvalid;
  output [0:0]s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input [0:0]s_axis_tlast;
  input [0:0]s_axis_tdest;
  output [1:0]m_axis_tvalid;
  input [1:0]m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output [1:0]m_axis_tlast;
  output [1:0]m_axis_tdest;
  output [0:0]s_decode_err;
endmodule
