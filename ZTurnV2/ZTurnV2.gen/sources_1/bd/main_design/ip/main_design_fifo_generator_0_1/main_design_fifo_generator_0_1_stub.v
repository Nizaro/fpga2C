// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Jul 26 13:00:20 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top main_design_fifo_generator_0_1 -prefix
//               main_design_fifo_generator_0_1_ main_design_fifo_generator_0_0_stub.v
// Design      : main_design_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *)
module main_design_fifo_generator_0_1(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="srst,din[63:0],wr_en,rd_en,dout[31:0],full,empty" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input srst;
  input [63:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output empty;
endmodule
