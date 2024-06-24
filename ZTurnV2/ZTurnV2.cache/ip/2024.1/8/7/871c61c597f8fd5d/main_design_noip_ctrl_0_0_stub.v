// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Jun 24 11:22:28 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ main_design_noip_ctrl_0_0_stub.v
// Design      : main_design_noip_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "noip_ctrl,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_72M_pll, clk_pll_out, noip_reset_n, 
  vdd18_toggle, vdd33_toggle, vddpix_toggle, sw_enable_n, clk_spi_in, miso, mosi, sck, ss_n, 
  s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="clk_72M_pll,clk_pll_out[0:1],noip_reset_n[0:1],vdd18_toggle[0:1],vdd33_toggle[0:1],vddpix_toggle[0:1],sw_enable_n[0:1],miso,mosi,sck,ss_n[0:1],s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */
/* synthesis syn_force_seq_prim="clk_spi_in" */
/* synthesis syn_force_seq_prim="s00_axi_aclk" */
/* synthesis syn_force_seq_prim="s00_axi_aresetn" */;
  input clk_72M_pll;
  output [0:1]clk_pll_out;
  output [0:1]noip_reset_n;
  output [0:1]vdd18_toggle;
  output [0:1]vdd33_toggle;
  output [0:1]vddpix_toggle;
  output [0:1]sw_enable_n;
  input clk_spi_in /* synthesis syn_isclock = 1 */;
  input miso;
  output mosi;
  output sck;
  output [0:1]ss_n;
  input s00_axi_aclk /* synthesis syn_isclock = 1 */;
  input s00_axi_aresetn /* synthesis syn_isclock = 1 */;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
