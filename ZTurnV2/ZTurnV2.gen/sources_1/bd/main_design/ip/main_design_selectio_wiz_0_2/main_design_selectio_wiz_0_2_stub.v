// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Aug  1 13:37:38 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_selectio_wiz_0_2/main_design_selectio_wiz_0_2_stub.v
// Design      : main_design_selectio_wiz_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module main_design_selectio_wiz_0_2(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, bitslip, clk_in_p, clk_in_n, clk_div_out, clk_reset, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[4:0],data_in_from_pins_n[4:0],data_in_to_device[39:0],bitslip[4:0],clk_in_p,clk_in_n,clk_reset,io_reset" */
/* synthesis syn_force_seq_prim="clk_div_out" */;
  input [4:0]data_in_from_pins_p;
  input [4:0]data_in_from_pins_n;
  output [39:0]data_in_to_device;
  input [4:0]bitslip;
  input clk_in_p;
  input clk_in_n;
  output clk_div_out /* synthesis syn_isclock = 1 */;
  input clk_reset;
  input io_reset;
endmodule
