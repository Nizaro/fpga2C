// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Jul  9 11:22:00 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top main_design_lvds_data_0_inverter_0 -prefix
//               main_design_lvds_data_0_inverter_0_ main_design_lvds_data_0_inverter_0_stub.v
// Design      : main_design_lvds_data_0_inverter_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1" *)
module main_design_lvds_data_0_inverter_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[3:0],Res[3:0]" */;
  input [3:0]Op1;
  output [3:0]Res;
endmodule
