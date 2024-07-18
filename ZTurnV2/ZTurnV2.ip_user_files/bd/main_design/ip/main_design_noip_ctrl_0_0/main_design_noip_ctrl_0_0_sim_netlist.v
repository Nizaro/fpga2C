// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jul 17 09:39:31 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top main_design_noip_ctrl_0_0 -prefix
//               main_design_noip_ctrl_0_0_ main_design_noip_ctrl_0_0_sim_netlist.v
// Design      : main_design_noip_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_design_noip_ctrl_0_0,noip_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "noip_ctrl,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_design_noip_ctrl_0_0
   (clk_72M_pll,
    clk_pll_out,
    noip_reset_n,
    vdd18_toggle,
    vdd33_toggle,
    vddpix_toggle,
    sw_enable_n,
    clk_spi_in,
    miso,
    mosi,
    sck,
    ss_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input clk_72M_pll;
  output [0:1]clk_pll_out;
  output [0:1]noip_reset_n;
  output [0:1]vdd18_toggle;
  output [0:1]vdd33_toggle;
  output [0:1]vddpix_toggle;
  output [0:1]sw_enable_n;
  input clk_spi_in;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 noip_spi IO1_I" *) input miso;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 noip_spi IO1_O" *) output mosi;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 noip_spi SCK_O" *) output sck;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 noip_spi SS_O" *) output [0:1]ss_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire clk_72M_pll;
  wire [0:1]clk_pll_out;
  wire clk_spi_in;
  wire miso;
  wire mosi;
  wire [0:1]noip_reset_n;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sck;
  wire [0:1]ss_n;
  wire [0:1]sw_enable_n;
  wire [0:1]vdd18_toggle;
  wire [0:1]vdd33_toggle;
  wire [0:1]vddpix_toggle;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  main_design_noip_ctrl_0_0_noip_ctrl U0
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_bvalid_reg(s00_axi_bvalid),
        .axi_rvalid_reg(s00_axi_rvalid),
        .clk_72M_pll(clk_72M_pll),
        .clk_pll_out(clk_pll_out),
        .clk_spi_in(clk_spi_in),
        .miso(miso),
        .mosi(mosi),
        .noip_reset_n(noip_reset_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sck(sck),
        .ss_n(ss_n),
        .sw_enable_n(sw_enable_n),
        .vdd18_toggle(vdd18_toggle),
        .vdd33_toggle(vdd33_toggle),
        .vddpix_toggle(vddpix_toggle));
endmodule

module main_design_noip_ctrl_0_0_noip_ctrl
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    clk_pll_out,
    noip_reset_n,
    vdd18_toggle,
    vdd33_toggle,
    vddpix_toggle,
    sw_enable_n,
    axi_bvalid_reg,
    ss_n,
    sck,
    s00_axi_rdata,
    mosi,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    clk_72M_pll,
    clk_spi_in,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_araddr,
    miso,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [0:1]clk_pll_out;
  output [0:1]noip_reset_n;
  output [0:1]vdd18_toggle;
  output [0:1]vdd33_toggle;
  output [0:1]vddpix_toggle;
  output [0:1]sw_enable_n;
  output axi_bvalid_reg;
  output [0:1]ss_n;
  output sck;
  output [31:0]s00_axi_rdata;
  output mosi;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input clk_72M_pll;
  input clk_spi_in;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input miso;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire \FSM_onehot_SPIState[0]_i_1_n_0 ;
  wire \FSM_onehot_SPIState[2]_i_1_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_10_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_11_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_12_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_13_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_14_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_15_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_16_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_17_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_18_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_19_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_20_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_21_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_22_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_23_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_24_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_25_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_26_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_2_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_3_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_4_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_5_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_7_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_8_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_9_n_0 ;
  wire \FSM_onehot_SPIState_reg_n_0_[0] ;
  wire \FSM_onehot_SPIState_reg_n_0_[1] ;
  wire \FSM_onehot_SPIState_reg_n_0_[3] ;
  wire \FSM_onehot_SPIState_reg_n_0_[4] ;
  wire \FSM_onehot_StartupState[0]_i_1_n_0 ;
  wire \FSM_onehot_StartupState[10]_i_2_n_0 ;
  wire \FSM_onehot_StartupState[10]_i_3_n_0 ;
  wire \FSM_onehot_StartupState_reg_n_0_[0] ;
  wire \FSM_onehot_StartupState_reg_n_0_[10] ;
  wire \FSM_onehot_StartupState_reg_n_0_[1] ;
  wire \FSM_onehot_StartupState_reg_n_0_[2] ;
  wire \FSM_onehot_StartupState_reg_n_0_[3] ;
  wire \FSM_onehot_StartupState_reg_n_0_[4] ;
  wire \FSM_onehot_StartupState_reg_n_0_[5] ;
  wire \FSM_onehot_StartupState_reg_n_0_[6] ;
  wire \FSM_onehot_StartupState_reg_n_0_[7] ;
  wire \FSM_onehot_StartupState_reg_n_0_[8] ;
  wire \FSM_onehot_StartupState_reg_n_0_[9] ;
  wire addr_ctr;
  wire addr_ctr0_carry__0_i_1_n_0;
  wire addr_ctr0_carry__0_i_2_n_0;
  wire addr_ctr0_carry__0_i_3_n_0;
  wire addr_ctr0_carry__0_i_4_n_0;
  wire addr_ctr0_carry__0_n_0;
  wire addr_ctr0_carry__0_n_1;
  wire addr_ctr0_carry__0_n_2;
  wire addr_ctr0_carry__0_n_3;
  wire addr_ctr0_carry__1_i_1_n_0;
  wire addr_ctr0_carry__1_i_2_n_0;
  wire addr_ctr0_carry__1_i_3_n_0;
  wire addr_ctr0_carry__1_i_4_n_0;
  wire addr_ctr0_carry__1_n_0;
  wire addr_ctr0_carry__1_n_1;
  wire addr_ctr0_carry__1_n_2;
  wire addr_ctr0_carry__1_n_3;
  wire addr_ctr0_carry__2_i_1_n_0;
  wire addr_ctr0_carry__2_i_2_n_0;
  wire addr_ctr0_carry__2_i_3_n_0;
  wire addr_ctr0_carry__2_i_4_n_0;
  wire addr_ctr0_carry__2_n_0;
  wire addr_ctr0_carry__2_n_1;
  wire addr_ctr0_carry__2_n_2;
  wire addr_ctr0_carry__2_n_3;
  wire addr_ctr0_carry__3_i_1_n_0;
  wire addr_ctr0_carry__3_i_2_n_0;
  wire addr_ctr0_carry__3_i_3_n_0;
  wire addr_ctr0_carry__3_i_4_n_0;
  wire addr_ctr0_carry__3_n_0;
  wire addr_ctr0_carry__3_n_1;
  wire addr_ctr0_carry__3_n_2;
  wire addr_ctr0_carry__3_n_3;
  wire addr_ctr0_carry__4_i_1_n_0;
  wire addr_ctr0_carry__4_i_2_n_0;
  wire addr_ctr0_carry__4_i_3_n_0;
  wire addr_ctr0_carry__4_i_4_n_0;
  wire addr_ctr0_carry__4_n_0;
  wire addr_ctr0_carry__4_n_1;
  wire addr_ctr0_carry__4_n_2;
  wire addr_ctr0_carry__4_n_3;
  wire addr_ctr0_carry__5_i_1_n_0;
  wire addr_ctr0_carry__5_i_2_n_0;
  wire addr_ctr0_carry__5_i_3_n_0;
  wire addr_ctr0_carry__5_i_4_n_0;
  wire addr_ctr0_carry__5_n_0;
  wire addr_ctr0_carry__5_n_1;
  wire addr_ctr0_carry__5_n_2;
  wire addr_ctr0_carry__5_n_3;
  wire addr_ctr0_carry__6_i_1_n_0;
  wire addr_ctr0_carry__6_i_2_n_0;
  wire addr_ctr0_carry__6_i_3_n_0;
  wire addr_ctr0_carry__6_n_2;
  wire addr_ctr0_carry__6_n_3;
  wire addr_ctr0_carry_i_1_n_0;
  wire addr_ctr0_carry_i_2_n_0;
  wire addr_ctr0_carry_i_3_n_0;
  wire addr_ctr0_carry_i_4_n_0;
  wire addr_ctr0_carry_n_0;
  wire addr_ctr0_carry_n_1;
  wire addr_ctr0_carry_n_2;
  wire addr_ctr0_carry_n_3;
  wire \addr_ctr[0]_i_1_n_0 ;
  wire \addr_ctr[10]_i_1_n_0 ;
  wire \addr_ctr[11]_i_1_n_0 ;
  wire \addr_ctr[12]_i_1_n_0 ;
  wire \addr_ctr[13]_i_1_n_0 ;
  wire \addr_ctr[14]_i_1_n_0 ;
  wire \addr_ctr[15]_i_1_n_0 ;
  wire \addr_ctr[16]_i_1_n_0 ;
  wire \addr_ctr[17]_i_1_n_0 ;
  wire \addr_ctr[18]_i_1_n_0 ;
  wire \addr_ctr[19]_i_1_n_0 ;
  wire \addr_ctr[1]_i_1_n_0 ;
  wire \addr_ctr[20]_i_1_n_0 ;
  wire \addr_ctr[21]_i_1_n_0 ;
  wire \addr_ctr[22]_i_1_n_0 ;
  wire \addr_ctr[23]_i_1_n_0 ;
  wire \addr_ctr[24]_i_1_n_0 ;
  wire \addr_ctr[25]_i_1_n_0 ;
  wire \addr_ctr[26]_i_1_n_0 ;
  wire \addr_ctr[27]_i_1_n_0 ;
  wire \addr_ctr[28]_i_1_n_0 ;
  wire \addr_ctr[29]_i_1_n_0 ;
  wire \addr_ctr[2]_i_1_n_0 ;
  wire \addr_ctr[30]_i_1_n_0 ;
  wire \addr_ctr[31]_i_2_n_0 ;
  wire \addr_ctr[3]_i_1_n_0 ;
  wire \addr_ctr[4]_i_1_n_0 ;
  wire \addr_ctr[5]_i_1_n_0 ;
  wire \addr_ctr[6]_i_1_n_0 ;
  wire \addr_ctr[7]_i_1_n_0 ;
  wire \addr_ctr[8]_i_1_n_0 ;
  wire \addr_ctr[9]_i_1_n_0 ;
  wire \addr_ctr_reg_n_0_[0] ;
  wire \addr_ctr_reg_n_0_[10] ;
  wire \addr_ctr_reg_n_0_[11] ;
  wire \addr_ctr_reg_n_0_[12] ;
  wire \addr_ctr_reg_n_0_[13] ;
  wire \addr_ctr_reg_n_0_[14] ;
  wire \addr_ctr_reg_n_0_[15] ;
  wire \addr_ctr_reg_n_0_[16] ;
  wire \addr_ctr_reg_n_0_[17] ;
  wire \addr_ctr_reg_n_0_[18] ;
  wire \addr_ctr_reg_n_0_[19] ;
  wire \addr_ctr_reg_n_0_[1] ;
  wire \addr_ctr_reg_n_0_[20] ;
  wire \addr_ctr_reg_n_0_[21] ;
  wire \addr_ctr_reg_n_0_[22] ;
  wire \addr_ctr_reg_n_0_[23] ;
  wire \addr_ctr_reg_n_0_[24] ;
  wire \addr_ctr_reg_n_0_[25] ;
  wire \addr_ctr_reg_n_0_[26] ;
  wire \addr_ctr_reg_n_0_[27] ;
  wire \addr_ctr_reg_n_0_[28] ;
  wire \addr_ctr_reg_n_0_[29] ;
  wire \addr_ctr_reg_n_0_[2] ;
  wire \addr_ctr_reg_n_0_[30] ;
  wire \addr_ctr_reg_n_0_[31] ;
  wire \addr_ctr_reg_n_0_[3] ;
  wire \addr_ctr_reg_n_0_[4] ;
  wire \addr_ctr_reg_n_0_[5] ;
  wire \addr_ctr_reg_n_0_[6] ;
  wire \addr_ctr_reg_n_0_[7] ;
  wire \addr_ctr_reg_n_0_[8] ;
  wire \addr_ctr_reg_n_0_[9] ;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_bvalid_reg;
  wire axi_rvalid_reg;
  wire clk_72M_pll;
  wire [0:1]clk_pll_out;
  wire clk_spi_in;
  wire id;
  wire [31:1]in10;
  wire [31:1]in11;
  wire miso;
  wire mosi;
  wire mosi_i_11_n_0;
  wire mosi_i_12_n_0;
  wire mosi_i_23_n_0;
  wire mosi_i_24_n_0;
  wire mosi_i_25_n_0;
  wire mosi_i_26_n_0;
  wire mosi_i_27_n_0;
  wire mosi_i_28_n_0;
  wire mosi_i_29_n_0;
  wire mosi_i_30_n_0;
  wire mosi_i_3_n_0;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_47;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_48;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_49;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_50;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_51;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_52;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_53;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_54;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_55;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_56;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_57;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_58;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_59;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_60;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9;
  wire [0:1]noip_reset_n;
  wire \noip_reset_n[0]_i_1_n_0 ;
  wire \noip_reset_n[1]_i_1_n_0 ;
  wire \pll_clk_en[0]_i_1_n_0 ;
  wire \pll_clk_en[1]_i_1_n_0 ;
  wire \pll_clk_en_reg_n_0_[0] ;
  wire \pll_clk_en_reg_n_0_[1] ;
  wire read_data_ctr;
  wire \read_data_ctr[0]_i_2_n_0 ;
  wire \read_data_ctr[0]_i_3_n_0 ;
  wire \read_data_ctr[0]_i_4_n_0 ;
  wire \read_data_ctr[0]_i_5_n_0 ;
  wire \read_data_ctr[12]_i_2_n_0 ;
  wire \read_data_ctr[12]_i_3_n_0 ;
  wire \read_data_ctr[12]_i_4_n_0 ;
  wire \read_data_ctr[12]_i_5_n_0 ;
  wire \read_data_ctr[16]_i_2_n_0 ;
  wire \read_data_ctr[16]_i_3_n_0 ;
  wire \read_data_ctr[16]_i_4_n_0 ;
  wire \read_data_ctr[16]_i_5_n_0 ;
  wire \read_data_ctr[20]_i_2_n_0 ;
  wire \read_data_ctr[20]_i_3_n_0 ;
  wire \read_data_ctr[20]_i_4_n_0 ;
  wire \read_data_ctr[20]_i_5_n_0 ;
  wire \read_data_ctr[24]_i_2_n_0 ;
  wire \read_data_ctr[24]_i_3_n_0 ;
  wire \read_data_ctr[24]_i_4_n_0 ;
  wire \read_data_ctr[24]_i_5_n_0 ;
  wire \read_data_ctr[28]_i_2_n_0 ;
  wire \read_data_ctr[28]_i_3_n_0 ;
  wire \read_data_ctr[28]_i_4_n_0 ;
  wire \read_data_ctr[28]_i_5_n_0 ;
  wire \read_data_ctr[4]_i_2_n_0 ;
  wire \read_data_ctr[4]_i_3_n_0 ;
  wire \read_data_ctr[4]_i_4_n_0 ;
  wire \read_data_ctr[4]_i_5_n_0 ;
  wire \read_data_ctr[8]_i_2_n_0 ;
  wire \read_data_ctr[8]_i_3_n_0 ;
  wire \read_data_ctr[8]_i_4_n_0 ;
  wire \read_data_ctr[8]_i_5_n_0 ;
  wire [31:0]read_data_ctr_reg;
  wire \read_data_ctr_reg[0]_i_1_n_0 ;
  wire \read_data_ctr_reg[0]_i_1_n_1 ;
  wire \read_data_ctr_reg[0]_i_1_n_2 ;
  wire \read_data_ctr_reg[0]_i_1_n_3 ;
  wire \read_data_ctr_reg[0]_i_1_n_4 ;
  wire \read_data_ctr_reg[0]_i_1_n_5 ;
  wire \read_data_ctr_reg[0]_i_1_n_6 ;
  wire \read_data_ctr_reg[0]_i_1_n_7 ;
  wire \read_data_ctr_reg[12]_i_1_n_0 ;
  wire \read_data_ctr_reg[12]_i_1_n_1 ;
  wire \read_data_ctr_reg[12]_i_1_n_2 ;
  wire \read_data_ctr_reg[12]_i_1_n_3 ;
  wire \read_data_ctr_reg[12]_i_1_n_4 ;
  wire \read_data_ctr_reg[12]_i_1_n_5 ;
  wire \read_data_ctr_reg[12]_i_1_n_6 ;
  wire \read_data_ctr_reg[12]_i_1_n_7 ;
  wire \read_data_ctr_reg[16]_i_1_n_0 ;
  wire \read_data_ctr_reg[16]_i_1_n_1 ;
  wire \read_data_ctr_reg[16]_i_1_n_2 ;
  wire \read_data_ctr_reg[16]_i_1_n_3 ;
  wire \read_data_ctr_reg[16]_i_1_n_4 ;
  wire \read_data_ctr_reg[16]_i_1_n_5 ;
  wire \read_data_ctr_reg[16]_i_1_n_6 ;
  wire \read_data_ctr_reg[16]_i_1_n_7 ;
  wire \read_data_ctr_reg[20]_i_1_n_0 ;
  wire \read_data_ctr_reg[20]_i_1_n_1 ;
  wire \read_data_ctr_reg[20]_i_1_n_2 ;
  wire \read_data_ctr_reg[20]_i_1_n_3 ;
  wire \read_data_ctr_reg[20]_i_1_n_4 ;
  wire \read_data_ctr_reg[20]_i_1_n_5 ;
  wire \read_data_ctr_reg[20]_i_1_n_6 ;
  wire \read_data_ctr_reg[20]_i_1_n_7 ;
  wire \read_data_ctr_reg[24]_i_1_n_0 ;
  wire \read_data_ctr_reg[24]_i_1_n_1 ;
  wire \read_data_ctr_reg[24]_i_1_n_2 ;
  wire \read_data_ctr_reg[24]_i_1_n_3 ;
  wire \read_data_ctr_reg[24]_i_1_n_4 ;
  wire \read_data_ctr_reg[24]_i_1_n_5 ;
  wire \read_data_ctr_reg[24]_i_1_n_6 ;
  wire \read_data_ctr_reg[24]_i_1_n_7 ;
  wire \read_data_ctr_reg[28]_i_1_n_1 ;
  wire \read_data_ctr_reg[28]_i_1_n_2 ;
  wire \read_data_ctr_reg[28]_i_1_n_3 ;
  wire \read_data_ctr_reg[28]_i_1_n_4 ;
  wire \read_data_ctr_reg[28]_i_1_n_5 ;
  wire \read_data_ctr_reg[28]_i_1_n_6 ;
  wire \read_data_ctr_reg[28]_i_1_n_7 ;
  wire \read_data_ctr_reg[4]_i_1_n_0 ;
  wire \read_data_ctr_reg[4]_i_1_n_1 ;
  wire \read_data_ctr_reg[4]_i_1_n_2 ;
  wire \read_data_ctr_reg[4]_i_1_n_3 ;
  wire \read_data_ctr_reg[4]_i_1_n_4 ;
  wire \read_data_ctr_reg[4]_i_1_n_5 ;
  wire \read_data_ctr_reg[4]_i_1_n_6 ;
  wire \read_data_ctr_reg[4]_i_1_n_7 ;
  wire \read_data_ctr_reg[8]_i_1_n_0 ;
  wire \read_data_ctr_reg[8]_i_1_n_1 ;
  wire \read_data_ctr_reg[8]_i_1_n_2 ;
  wire \read_data_ctr_reg[8]_i_1_n_3 ;
  wire \read_data_ctr_reg[8]_i_1_n_4 ;
  wire \read_data_ctr_reg[8]_i_1_n_5 ;
  wire \read_data_ctr_reg[8]_i_1_n_6 ;
  wire \read_data_ctr_reg[8]_i_1_n_7 ;
  wire [15:0]read_spi_data;
  wire \read_spi_data[0]_i_1_n_0 ;
  wire \read_spi_data[10]_i_1_n_0 ;
  wire \read_spi_data[11]_i_1_n_0 ;
  wire \read_spi_data[11]_i_2_n_0 ;
  wire \read_spi_data[12]_i_1_n_0 ;
  wire \read_spi_data[13]_i_1_n_0 ;
  wire \read_spi_data[14]_i_1_n_0 ;
  wire \read_spi_data[15]_i_1_n_0 ;
  wire \read_spi_data[15]_i_2_n_0 ;
  wire \read_spi_data[1]_i_1_n_0 ;
  wire \read_spi_data[2]_i_1_n_0 ;
  wire \read_spi_data[3]_i_1_n_0 ;
  wire \read_spi_data[4]_i_1_n_0 ;
  wire \read_spi_data[5]_i_1_n_0 ;
  wire \read_spi_data[6]_i_1_n_0 ;
  wire \read_spi_data[7]_i_1_n_0 ;
  wire \read_spi_data[7]_i_2_n_0 ;
  wire \read_spi_data[8]_i_1_n_0 ;
  wire \read_spi_data[9]_i_1_n_0 ;
  wire [31:0]reg1;
  wire \reg1_reg[0]_i_1_n_0 ;
  wire \reg1_reg[16]_i_1_n_0 ;
  wire \reg1_reg[17]_i_1_n_0 ;
  wire \reg1_reg[18]_i_1_n_0 ;
  wire \reg1_reg[19]_i_1_n_0 ;
  wire \reg1_reg[1]_i_1_n_0 ;
  wire \reg1_reg[20]_i_1_n_0 ;
  wire \reg1_reg[21]_i_1_n_0 ;
  wire \reg1_reg[22]_i_1_n_0 ;
  wire \reg1_reg[23]_i_1_n_0 ;
  wire \reg1_reg[24]_i_1_n_0 ;
  wire \reg1_reg[25]_i_1_n_0 ;
  wire \reg1_reg[26]_i_1_n_0 ;
  wire \reg1_reg[27]_i_1_n_0 ;
  wire \reg1_reg[28]_i_1_n_0 ;
  wire \reg1_reg[29]_i_1_n_0 ;
  wire \reg1_reg[30]_i_1_n_0 ;
  wire \reg1_reg[31]_i_1_n_0 ;
  wire \rising_spi_process.mode_reg_n_0 ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sck;
  wire sck_en_i_1_n_0;
  wire sck_en_reg_n_0;
  wire [1:0]sensor_id;
  wire spiflag;
  wire spiflag_i_1_n_0;
  wire [0:1]ss_n;
  wire \ss_n[0]_i_1_n_0 ;
  wire \ss_n[1]_i_1_n_0 ;
  wire \startup_process.id_reg_n_0_[0] ;
  wire [0:1]sw_enable_n;
  wire \sw_enable_n[0]_i_1_n_0 ;
  wire \sw_enable_n[1]_i_1_n_0 ;
  wire [0:1]vdd18_toggle;
  wire \vdd18_toggle[0]_i_1_n_0 ;
  wire \vdd18_toggle[1]_i_1_n_0 ;
  wire [0:1]vdd33_toggle;
  wire \vdd33_toggle[0]_i_1_n_0 ;
  wire \vdd33_toggle[1]_i_1_n_0 ;
  wire [0:1]vddpix_toggle;
  wire \vddpix_toggle[0]_i_1_n_0 ;
  wire \vddpix_toggle[1]_i_1_n_0 ;
  wire [31:0]write_data_ctr;
  wire write_data_ctr0_carry__0_i_1_n_0;
  wire write_data_ctr0_carry__0_i_2_n_0;
  wire write_data_ctr0_carry__0_i_3_n_0;
  wire write_data_ctr0_carry__0_i_4_n_0;
  wire write_data_ctr0_carry__0_n_0;
  wire write_data_ctr0_carry__0_n_1;
  wire write_data_ctr0_carry__0_n_2;
  wire write_data_ctr0_carry__0_n_3;
  wire write_data_ctr0_carry__1_i_1_n_0;
  wire write_data_ctr0_carry__1_i_2_n_0;
  wire write_data_ctr0_carry__1_i_3_n_0;
  wire write_data_ctr0_carry__1_i_4_n_0;
  wire write_data_ctr0_carry__1_n_0;
  wire write_data_ctr0_carry__1_n_1;
  wire write_data_ctr0_carry__1_n_2;
  wire write_data_ctr0_carry__1_n_3;
  wire write_data_ctr0_carry__2_i_1_n_0;
  wire write_data_ctr0_carry__2_i_2_n_0;
  wire write_data_ctr0_carry__2_i_3_n_0;
  wire write_data_ctr0_carry__2_i_4_n_0;
  wire write_data_ctr0_carry__2_n_0;
  wire write_data_ctr0_carry__2_n_1;
  wire write_data_ctr0_carry__2_n_2;
  wire write_data_ctr0_carry__2_n_3;
  wire write_data_ctr0_carry__3_i_1_n_0;
  wire write_data_ctr0_carry__3_i_2_n_0;
  wire write_data_ctr0_carry__3_i_3_n_0;
  wire write_data_ctr0_carry__3_i_4_n_0;
  wire write_data_ctr0_carry__3_n_0;
  wire write_data_ctr0_carry__3_n_1;
  wire write_data_ctr0_carry__3_n_2;
  wire write_data_ctr0_carry__3_n_3;
  wire write_data_ctr0_carry__4_i_1_n_0;
  wire write_data_ctr0_carry__4_i_2_n_0;
  wire write_data_ctr0_carry__4_i_3_n_0;
  wire write_data_ctr0_carry__4_i_4_n_0;
  wire write_data_ctr0_carry__4_n_0;
  wire write_data_ctr0_carry__4_n_1;
  wire write_data_ctr0_carry__4_n_2;
  wire write_data_ctr0_carry__4_n_3;
  wire write_data_ctr0_carry__5_i_1_n_0;
  wire write_data_ctr0_carry__5_i_2_n_0;
  wire write_data_ctr0_carry__5_i_3_n_0;
  wire write_data_ctr0_carry__5_i_4_n_0;
  wire write_data_ctr0_carry__5_n_0;
  wire write_data_ctr0_carry__5_n_1;
  wire write_data_ctr0_carry__5_n_2;
  wire write_data_ctr0_carry__5_n_3;
  wire write_data_ctr0_carry__6_i_1_n_0;
  wire write_data_ctr0_carry__6_i_2_n_0;
  wire write_data_ctr0_carry__6_i_3_n_0;
  wire write_data_ctr0_carry__6_n_2;
  wire write_data_ctr0_carry__6_n_3;
  wire write_data_ctr0_carry_i_1_n_0;
  wire write_data_ctr0_carry_i_2_n_0;
  wire write_data_ctr0_carry_i_3_n_0;
  wire write_data_ctr0_carry_i_4_n_0;
  wire write_data_ctr0_carry_n_0;
  wire write_data_ctr0_carry_n_1;
  wire write_data_ctr0_carry_n_2;
  wire write_data_ctr0_carry_n_3;
  wire \write_data_ctr[0]_i_1_n_0 ;
  wire \write_data_ctr[10]_i_1_n_0 ;
  wire \write_data_ctr[11]_i_1_n_0 ;
  wire \write_data_ctr[12]_i_1_n_0 ;
  wire \write_data_ctr[13]_i_1_n_0 ;
  wire \write_data_ctr[14]_i_1_n_0 ;
  wire \write_data_ctr[15]_i_1_n_0 ;
  wire \write_data_ctr[16]_i_1_n_0 ;
  wire \write_data_ctr[17]_i_1_n_0 ;
  wire \write_data_ctr[18]_i_1_n_0 ;
  wire \write_data_ctr[19]_i_1_n_0 ;
  wire \write_data_ctr[1]_i_1_n_0 ;
  wire \write_data_ctr[20]_i_1_n_0 ;
  wire \write_data_ctr[21]_i_1_n_0 ;
  wire \write_data_ctr[22]_i_1_n_0 ;
  wire \write_data_ctr[23]_i_1_n_0 ;
  wire \write_data_ctr[24]_i_1_n_0 ;
  wire \write_data_ctr[25]_i_1_n_0 ;
  wire \write_data_ctr[26]_i_1_n_0 ;
  wire \write_data_ctr[27]_i_1_n_0 ;
  wire \write_data_ctr[28]_i_1_n_0 ;
  wire \write_data_ctr[29]_i_1_n_0 ;
  wire \write_data_ctr[2]_i_1_n_0 ;
  wire \write_data_ctr[30]_i_1_n_0 ;
  wire \write_data_ctr[31]_i_2_n_0 ;
  wire \write_data_ctr[3]_i_1_n_0 ;
  wire \write_data_ctr[4]_i_1_n_0 ;
  wire \write_data_ctr[5]_i_1_n_0 ;
  wire \write_data_ctr[6]_i_1_n_0 ;
  wire \write_data_ctr[7]_i_1_n_0 ;
  wire \write_data_ctr[8]_i_1_n_0 ;
  wire \write_data_ctr[9]_i_1_n_0 ;
  wire write_data_ctr_0;
  wire [3:2]NLW_addr_ctr0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_addr_ctr0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_read_data_ctr_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_write_data_ctr0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_write_data_ctr0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_SPIState[0]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .O(\FSM_onehot_SPIState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_SPIState[2]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\rising_spi_process.mode_reg_n_0 ),
        .O(\FSM_onehot_SPIState[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_onehot_SPIState[4]_i_10 
       (.I0(write_data_ctr[4]),
        .I1(write_data_ctr[30]),
        .I2(write_data_ctr[31]),
        .I3(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I4(\FSM_onehot_SPIState[4]_i_22_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_11 
       (.I0(write_data_ctr[16]),
        .I1(write_data_ctr[0]),
        .I2(write_data_ctr[15]),
        .I3(write_data_ctr[8]),
        .I4(write_data_ctr[20]),
        .I5(write_data_ctr[1]),
        .O(\FSM_onehot_SPIState[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_12 
       (.I0(read_data_ctr_reg[20]),
        .I1(read_data_ctr_reg[21]),
        .I2(read_data_ctr_reg[23]),
        .I3(read_data_ctr_reg[22]),
        .I4(\FSM_onehot_SPIState[4]_i_23_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_13 
       (.I0(read_data_ctr_reg[30]),
        .I1(read_data_ctr_reg[31]),
        .I2(read_data_ctr_reg[29]),
        .I3(read_data_ctr_reg[28]),
        .I4(\FSM_onehot_SPIState[4]_i_24_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_14 
       (.I0(read_data_ctr_reg[5]),
        .I1(read_data_ctr_reg[6]),
        .I2(read_data_ctr_reg[4]),
        .I3(read_data_ctr_reg[7]),
        .I4(\FSM_onehot_SPIState[4]_i_25_n_0 ),
        .I5(\FSM_onehot_SPIState[4]_i_26_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_15 
       (.I0(\addr_ctr_reg_n_0_[26] ),
        .I1(\addr_ctr_reg_n_0_[22] ),
        .I2(\addr_ctr_reg_n_0_[15] ),
        .I3(\addr_ctr_reg_n_0_[13] ),
        .I4(mosi_i_29_n_0),
        .O(\FSM_onehot_SPIState[4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_16 
       (.I0(\addr_ctr_reg_n_0_[29] ),
        .I1(\addr_ctr_reg_n_0_[1] ),
        .I2(\addr_ctr_reg_n_0_[28] ),
        .I3(\addr_ctr_reg_n_0_[18] ),
        .I4(mosi_i_27_n_0),
        .O(\FSM_onehot_SPIState[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_17 
       (.I0(\addr_ctr_reg_n_0_[23] ),
        .I1(\addr_ctr_reg_n_0_[19] ),
        .I2(\addr_ctr_reg_n_0_[16] ),
        .I3(\addr_ctr_reg_n_0_[9] ),
        .I4(mosi_i_25_n_0),
        .O(\FSM_onehot_SPIState[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_18 
       (.I0(\addr_ctr_reg_n_0_[14] ),
        .I1(\addr_ctr_reg_n_0_[11] ),
        .I2(\addr_ctr_reg_n_0_[27] ),
        .I3(\addr_ctr_reg_n_0_[5] ),
        .I4(mosi_i_23_n_0),
        .O(\FSM_onehot_SPIState[4]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_19 
       (.I0(write_data_ctr[28]),
        .I1(write_data_ctr[23]),
        .I2(write_data_ctr[10]),
        .I3(write_data_ctr[29]),
        .O(\FSM_onehot_SPIState[4]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_SPIState[4]_i_2 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\rising_spi_process.mode_reg_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_20 
       (.I0(write_data_ctr[14]),
        .I1(write_data_ctr[2]),
        .I2(write_data_ctr[13]),
        .I3(write_data_ctr[3]),
        .O(\FSM_onehot_SPIState[4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_21 
       (.I0(write_data_ctr[17]),
        .I1(write_data_ctr[24]),
        .I2(write_data_ctr[9]),
        .I3(write_data_ctr[26]),
        .O(\FSM_onehot_SPIState[4]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_22 
       (.I0(write_data_ctr[5]),
        .I1(write_data_ctr[21]),
        .I2(write_data_ctr[6]),
        .I3(write_data_ctr[12]),
        .O(\FSM_onehot_SPIState[4]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_23 
       (.I0(read_data_ctr_reg[16]),
        .I1(read_data_ctr_reg[17]),
        .I2(read_data_ctr_reg[19]),
        .I3(read_data_ctr_reg[18]),
        .O(\FSM_onehot_SPIState[4]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_24 
       (.I0(read_data_ctr_reg[27]),
        .I1(read_data_ctr_reg[26]),
        .I2(read_data_ctr_reg[25]),
        .I3(read_data_ctr_reg[24]),
        .O(\FSM_onehot_SPIState[4]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_25 
       (.I0(read_data_ctr_reg[10]),
        .I1(read_data_ctr_reg[11]),
        .I2(read_data_ctr_reg[9]),
        .I3(read_data_ctr_reg[8]),
        .O(\FSM_onehot_SPIState[4]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_26 
       (.I0(read_data_ctr_reg[15]),
        .I1(read_data_ctr_reg[14]),
        .I2(read_data_ctr_reg[13]),
        .I3(read_data_ctr_reg[12]),
        .O(\FSM_onehot_SPIState[4]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_SPIState[4]_i_3 
       (.I0(\FSM_onehot_SPIState[4]_i_8_n_0 ),
        .I1(\FSM_onehot_SPIState[4]_i_9_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_10_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_11_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_SPIState[4]_i_4 
       (.I0(read_data_ctr_reg[0]),
        .I1(read_data_ctr),
        .I2(read_data_ctr_reg[1]),
        .O(\FSM_onehot_SPIState[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_SPIState[4]_i_5 
       (.I0(read_data_ctr_reg[2]),
        .I1(\FSM_onehot_SPIState[4]_i_12_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_13_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_14_n_0 ),
        .I4(read_data_ctr_reg[3]),
        .O(\FSM_onehot_SPIState[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_7 
       (.I0(\FSM_onehot_SPIState[4]_i_15_n_0 ),
        .I1(\FSM_onehot_SPIState[4]_i_16_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_17_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_18_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_SPIState[4]_i_8 
       (.I0(write_data_ctr[18]),
        .I1(write_data_ctr[22]),
        .I2(write_data_ctr[19]),
        .I3(\FSM_onehot_SPIState[4]_i_19_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_20_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_9 
       (.I0(write_data_ctr[11]),
        .I1(write_data_ctr[25]),
        .I2(write_data_ctr[27]),
        .I3(write_data_ctr[7]),
        .I4(\FSM_onehot_SPIState[4]_i_21_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_SPIState_reg[0] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .D(\FSM_onehot_SPIState[0]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(\FSM_onehot_SPIState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[1] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .Q(\FSM_onehot_SPIState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[2] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState[2]_i_1_n_0 ),
        .Q(read_data_ctr));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[3] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(read_data_ctr),
        .Q(\FSM_onehot_SPIState_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[4] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState[4]_i_2_n_0 ),
        .Q(\FSM_onehot_SPIState_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_StartupState[0]_i_1 
       (.I0(\FSM_onehot_StartupState_reg_n_0_[5] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[10] ),
        .O(\FSM_onehot_StartupState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_StartupState[10]_i_2 
       (.I0(\FSM_onehot_StartupState_reg_n_0_[2] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[9] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[10] ),
        .I3(\FSM_onehot_StartupState_reg_n_0_[1] ),
        .I4(\FSM_onehot_StartupState_reg_n_0_[7] ),
        .I5(\FSM_onehot_StartupState_reg_n_0_[4] ),
        .O(\FSM_onehot_StartupState[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_StartupState[10]_i_3 
       (.I0(\FSM_onehot_StartupState_reg_n_0_[5] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[6] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[3] ),
        .I3(\FSM_onehot_StartupState_reg_n_0_[8] ),
        .O(\FSM_onehot_StartupState[10]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_StartupState_reg[0] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .D(\FSM_onehot_StartupState[0]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(\FSM_onehot_StartupState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[10] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[9] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[1] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(id),
        .Q(\FSM_onehot_StartupState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[2] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[1] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[3] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[2] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[4] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[3] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[5] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[4] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[6] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11),
        .Q(\FSM_onehot_StartupState_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[7] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[6] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[8] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[7] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_StartupState_reg[9] 
       (.C(s00_axi_aclk),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_StartupState_reg_n_0_[8] ),
        .Q(\FSM_onehot_StartupState_reg_n_0_[9] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry
       (.CI(1'b0),
        .CO({addr_ctr0_carry_n_0,addr_ctr0_carry_n_1,addr_ctr0_carry_n_2,addr_ctr0_carry_n_3}),
        .CYINIT(\addr_ctr_reg_n_0_[0] ),
        .DI({\addr_ctr_reg_n_0_[4] ,\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] }),
        .O(in11[4:1]),
        .S({addr_ctr0_carry_i_1_n_0,addr_ctr0_carry_i_2_n_0,addr_ctr0_carry_i_3_n_0,addr_ctr0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__0
       (.CI(addr_ctr0_carry_n_0),
        .CO({addr_ctr0_carry__0_n_0,addr_ctr0_carry__0_n_1,addr_ctr0_carry__0_n_2,addr_ctr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[8] ,\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] }),
        .O(in11[8:5]),
        .S({addr_ctr0_carry__0_i_1_n_0,addr_ctr0_carry__0_i_2_n_0,addr_ctr0_carry__0_i_3_n_0,addr_ctr0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__0_i_1
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .O(addr_ctr0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__0_i_2
       (.I0(\addr_ctr_reg_n_0_[7] ),
        .O(addr_ctr0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__0_i_3
       (.I0(\addr_ctr_reg_n_0_[6] ),
        .O(addr_ctr0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__0_i_4
       (.I0(\addr_ctr_reg_n_0_[5] ),
        .O(addr_ctr0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__1
       (.CI(addr_ctr0_carry__0_n_0),
        .CO({addr_ctr0_carry__1_n_0,addr_ctr0_carry__1_n_1,addr_ctr0_carry__1_n_2,addr_ctr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[12] ,\addr_ctr_reg_n_0_[11] ,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] }),
        .O(in11[12:9]),
        .S({addr_ctr0_carry__1_i_1_n_0,addr_ctr0_carry__1_i_2_n_0,addr_ctr0_carry__1_i_3_n_0,addr_ctr0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__1_i_1
       (.I0(\addr_ctr_reg_n_0_[12] ),
        .O(addr_ctr0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__1_i_2
       (.I0(\addr_ctr_reg_n_0_[11] ),
        .O(addr_ctr0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__1_i_3
       (.I0(\addr_ctr_reg_n_0_[10] ),
        .O(addr_ctr0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__1_i_4
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .O(addr_ctr0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__2
       (.CI(addr_ctr0_carry__1_n_0),
        .CO({addr_ctr0_carry__2_n_0,addr_ctr0_carry__2_n_1,addr_ctr0_carry__2_n_2,addr_ctr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[16] ,\addr_ctr_reg_n_0_[15] ,\addr_ctr_reg_n_0_[14] ,\addr_ctr_reg_n_0_[13] }),
        .O(in11[16:13]),
        .S({addr_ctr0_carry__2_i_1_n_0,addr_ctr0_carry__2_i_2_n_0,addr_ctr0_carry__2_i_3_n_0,addr_ctr0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__2_i_1
       (.I0(\addr_ctr_reg_n_0_[16] ),
        .O(addr_ctr0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__2_i_2
       (.I0(\addr_ctr_reg_n_0_[15] ),
        .O(addr_ctr0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__2_i_3
       (.I0(\addr_ctr_reg_n_0_[14] ),
        .O(addr_ctr0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__2_i_4
       (.I0(\addr_ctr_reg_n_0_[13] ),
        .O(addr_ctr0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__3
       (.CI(addr_ctr0_carry__2_n_0),
        .CO({addr_ctr0_carry__3_n_0,addr_ctr0_carry__3_n_1,addr_ctr0_carry__3_n_2,addr_ctr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[20] ,\addr_ctr_reg_n_0_[19] ,\addr_ctr_reg_n_0_[18] ,\addr_ctr_reg_n_0_[17] }),
        .O(in11[20:17]),
        .S({addr_ctr0_carry__3_i_1_n_0,addr_ctr0_carry__3_i_2_n_0,addr_ctr0_carry__3_i_3_n_0,addr_ctr0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__3_i_1
       (.I0(\addr_ctr_reg_n_0_[20] ),
        .O(addr_ctr0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__3_i_2
       (.I0(\addr_ctr_reg_n_0_[19] ),
        .O(addr_ctr0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__3_i_3
       (.I0(\addr_ctr_reg_n_0_[18] ),
        .O(addr_ctr0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__3_i_4
       (.I0(\addr_ctr_reg_n_0_[17] ),
        .O(addr_ctr0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__4
       (.CI(addr_ctr0_carry__3_n_0),
        .CO({addr_ctr0_carry__4_n_0,addr_ctr0_carry__4_n_1,addr_ctr0_carry__4_n_2,addr_ctr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[24] ,\addr_ctr_reg_n_0_[23] ,\addr_ctr_reg_n_0_[22] ,\addr_ctr_reg_n_0_[21] }),
        .O(in11[24:21]),
        .S({addr_ctr0_carry__4_i_1_n_0,addr_ctr0_carry__4_i_2_n_0,addr_ctr0_carry__4_i_3_n_0,addr_ctr0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__4_i_1
       (.I0(\addr_ctr_reg_n_0_[24] ),
        .O(addr_ctr0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__4_i_2
       (.I0(\addr_ctr_reg_n_0_[23] ),
        .O(addr_ctr0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__4_i_3
       (.I0(\addr_ctr_reg_n_0_[22] ),
        .O(addr_ctr0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__4_i_4
       (.I0(\addr_ctr_reg_n_0_[21] ),
        .O(addr_ctr0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__5
       (.CI(addr_ctr0_carry__4_n_0),
        .CO({addr_ctr0_carry__5_n_0,addr_ctr0_carry__5_n_1,addr_ctr0_carry__5_n_2,addr_ctr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[28] ,\addr_ctr_reg_n_0_[27] ,\addr_ctr_reg_n_0_[26] ,\addr_ctr_reg_n_0_[25] }),
        .O(in11[28:25]),
        .S({addr_ctr0_carry__5_i_1_n_0,addr_ctr0_carry__5_i_2_n_0,addr_ctr0_carry__5_i_3_n_0,addr_ctr0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__5_i_1
       (.I0(\addr_ctr_reg_n_0_[28] ),
        .O(addr_ctr0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__5_i_2
       (.I0(\addr_ctr_reg_n_0_[27] ),
        .O(addr_ctr0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__5_i_3
       (.I0(\addr_ctr_reg_n_0_[26] ),
        .O(addr_ctr0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__5_i_4
       (.I0(\addr_ctr_reg_n_0_[25] ),
        .O(addr_ctr0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__6
       (.CI(addr_ctr0_carry__5_n_0),
        .CO({NLW_addr_ctr0_carry__6_CO_UNCONNECTED[3:2],addr_ctr0_carry__6_n_2,addr_ctr0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\addr_ctr_reg_n_0_[30] ,\addr_ctr_reg_n_0_[29] }),
        .O({NLW_addr_ctr0_carry__6_O_UNCONNECTED[3],in11[31:29]}),
        .S({1'b0,addr_ctr0_carry__6_i_1_n_0,addr_ctr0_carry__6_i_2_n_0,addr_ctr0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__6_i_1
       (.I0(\addr_ctr_reg_n_0_[31] ),
        .O(addr_ctr0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__6_i_2
       (.I0(\addr_ctr_reg_n_0_[30] ),
        .O(addr_ctr0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry__6_i_3
       (.I0(\addr_ctr_reg_n_0_[29] ),
        .O(addr_ctr0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry_i_1
       (.I0(\addr_ctr_reg_n_0_[4] ),
        .O(addr_ctr0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry_i_2
       (.I0(\addr_ctr_reg_n_0_[3] ),
        .O(addr_ctr0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry_i_3
       (.I0(\addr_ctr_reg_n_0_[2] ),
        .O(addr_ctr0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_ctr0_carry_i_4
       (.I0(\addr_ctr_reg_n_0_[1] ),
        .O(addr_ctr0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_ctr[0]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\addr_ctr_reg_n_0_[0] ),
        .O(\addr_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[10]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[10]),
        .O(\addr_ctr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[11]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[11]),
        .O(\addr_ctr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[12]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[12]),
        .O(\addr_ctr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[13]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[13]),
        .O(\addr_ctr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[14]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[14]),
        .O(\addr_ctr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[15]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[15]),
        .O(\addr_ctr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[16]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[16]),
        .O(\addr_ctr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[17]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[17]),
        .O(\addr_ctr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[18]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[18]),
        .O(\addr_ctr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[19]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[19]),
        .O(\addr_ctr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[1]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[1]),
        .O(\addr_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[20]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[20]),
        .O(\addr_ctr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[21]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[21]),
        .O(\addr_ctr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[22]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[22]),
        .O(\addr_ctr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[23]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[23]),
        .O(\addr_ctr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[24]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[24]),
        .O(\addr_ctr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[25]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[25]),
        .O(\addr_ctr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[26]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[26]),
        .O(\addr_ctr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[27]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[27]),
        .O(\addr_ctr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[28]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[28]),
        .O(\addr_ctr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[29]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[29]),
        .O(\addr_ctr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[2]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[2]),
        .O(\addr_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[30]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[30]),
        .O(\addr_ctr[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_ctr[31]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .O(addr_ctr));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[31]_i_2 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[31]),
        .O(\addr_ctr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \addr_ctr[3]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in11[3]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .O(\addr_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[4]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[4]),
        .O(\addr_ctr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[5]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[5]),
        .O(\addr_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[6]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[6]),
        .O(\addr_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[7]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[7]),
        .O(\addr_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[8]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[8]),
        .O(\addr_ctr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[9]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in11[9]),
        .O(\addr_ctr[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[0] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[0]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[10] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[10]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[11] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[11]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[12] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[12]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[13] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[13]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[14] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[14]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[15] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[15]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[16] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[16]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[17] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[17]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[18] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[18]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[19] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[19]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[1] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[1]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[20] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[20]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[21] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[21]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[22] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[22]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[23] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[23]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[24] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[24]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[25] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[25]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[26] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[26]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[27] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[27]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[28] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[28]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[29] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[29]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[2] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[2]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[30] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[30]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[31] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[31]_i_2_n_0 ),
        .Q(\addr_ctr_reg_n_0_[31] ));
  FDPE #(
    .INIT(1'b1)) 
    \addr_ctr_reg[3] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .D(\addr_ctr[3]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(\addr_ctr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[4] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[4]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[5] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[5]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[6] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[6]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[7] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[7]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[8] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[8]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[9] 
       (.C(clk_spi_in),
        .CE(addr_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\addr_ctr[9]_i_1_n_0 ),
        .Q(\addr_ctr_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_pll_out[0]_INST_0 
       (.I0(\pll_clk_en_reg_n_0_[0] ),
        .I1(clk_72M_pll),
        .O(clk_pll_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_pll_out[1]_INST_0 
       (.I0(\pll_clk_en_reg_n_0_[1] ),
        .I1(clk_72M_pll),
        .O(clk_pll_out[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mosi_i_11
       (.I0(mosi_i_23_n_0),
        .I1(mosi_i_24_n_0),
        .I2(mosi_i_25_n_0),
        .I3(mosi_i_26_n_0),
        .O(mosi_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mosi_i_12
       (.I0(mosi_i_27_n_0),
        .I1(mosi_i_28_n_0),
        .I2(mosi_i_29_n_0),
        .I3(mosi_i_30_n_0),
        .O(mosi_i_12_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_23
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .I1(\addr_ctr_reg_n_0_[20] ),
        .I2(\addr_ctr_reg_n_0_[4] ),
        .I3(\addr_ctr_reg_n_0_[25] ),
        .O(mosi_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_24
       (.I0(\addr_ctr_reg_n_0_[5] ),
        .I1(\addr_ctr_reg_n_0_[27] ),
        .I2(\addr_ctr_reg_n_0_[11] ),
        .I3(\addr_ctr_reg_n_0_[14] ),
        .O(mosi_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_25
       (.I0(\addr_ctr_reg_n_0_[0] ),
        .I1(\addr_ctr_reg_n_0_[7] ),
        .I2(\addr_ctr_reg_n_0_[3] ),
        .I3(\addr_ctr_reg_n_0_[30] ),
        .O(mosi_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_26
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .I1(\addr_ctr_reg_n_0_[16] ),
        .I2(\addr_ctr_reg_n_0_[19] ),
        .I3(\addr_ctr_reg_n_0_[23] ),
        .O(mosi_i_26_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_27
       (.I0(\addr_ctr_reg_n_0_[31] ),
        .I1(\addr_ctr_reg_n_0_[24] ),
        .I2(\addr_ctr_reg_n_0_[6] ),
        .I3(\addr_ctr_reg_n_0_[17] ),
        .O(mosi_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_28
       (.I0(\addr_ctr_reg_n_0_[18] ),
        .I1(\addr_ctr_reg_n_0_[28] ),
        .I2(\addr_ctr_reg_n_0_[1] ),
        .I3(\addr_ctr_reg_n_0_[29] ),
        .O(mosi_i_28_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_29
       (.I0(\addr_ctr_reg_n_0_[10] ),
        .I1(\addr_ctr_reg_n_0_[21] ),
        .I2(\addr_ctr_reg_n_0_[2] ),
        .I3(\addr_ctr_reg_n_0_[12] ),
        .O(mosi_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    mosi_i_3
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I2(read_data_ctr),
        .O(mosi_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_30
       (.I0(\addr_ctr_reg_n_0_[13] ),
        .I1(\addr_ctr_reg_n_0_[15] ),
        .I2(\addr_ctr_reg_n_0_[22] ),
        .I3(\addr_ctr_reg_n_0_[26] ),
        .O(mosi_i_30_n_0));
  FDCE mosi_reg
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_60),
        .Q(mosi));
  main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI noip_ctrl_slave_lite_v1_0_S00_AXI_inst
       (.D({noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11,id}),
        .E(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .\FSM_onehot_SPIState_reg[0] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_59),
        .\FSM_onehot_SPIState_reg[0]_0 (\FSM_onehot_SPIState[4]_i_3_n_0 ),
        .\FSM_onehot_SPIState_reg[0]_1 (\FSM_onehot_SPIState[4]_i_4_n_0 ),
        .\FSM_onehot_SPIState_reg[0]_2 (\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .\FSM_onehot_SPIState_reg[0]_3 (\FSM_onehot_SPIState[4]_i_7_n_0 ),
        .\FSM_onehot_SPIState_reg[1] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .\FSM_onehot_SPIState_reg[4] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_60),
        .\FSM_onehot_StartupState_reg[0] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_58),
        .\FSM_onehot_StartupState_reg[0]_0 (\FSM_onehot_StartupState[10]_i_2_n_0 ),
        .\FSM_onehot_StartupState_reg[0]_1 (\FSM_onehot_StartupState[10]_i_3_n_0 ),
        .Q({sensor_id,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10}),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_bvalid_reg_0(axi_bvalid_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .mosi(mosi),
        .mosi_i_4_0({\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .mosi_reg({\FSM_onehot_SPIState_reg_n_0_[4] ,\FSM_onehot_SPIState_reg_n_0_[3] ,\FSM_onehot_SPIState_reg_n_0_[1] ,\FSM_onehot_SPIState_reg_n_0_[0] }),
        .mosi_reg_0(mosi_i_11_n_0),
        .mosi_reg_1(mosi_i_12_n_0),
        .mosi_reg_2(write_data_ctr[4:0]),
        .mosi_reg_3(mosi_i_3_n_0),
        .\rising_spi_process.mode_reg (\rising_spi_process.mode_reg_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[31] ({reg1[31:16],reg1[12:0]}),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[12]_0 ({noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_47,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_48,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_49,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_50,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_51,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_52,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_53,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_54,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_55,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_56,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_57}),
        .\slv_reg0_reg[3]_0 (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6),
        .spiflag(spiflag),
        .\startup_process.id_reg[0] (\FSM_onehot_StartupState_reg_n_0_[0] ),
        .\startup_process.id_reg[0]_0 (\startup_process.id_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFB50)) 
    \noip_reset_n[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[5] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[6] ),
        .I3(noip_reset_n[0]),
        .O(\noip_reset_n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF7A0)) 
    \noip_reset_n[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[5] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[6] ),
        .I3(noip_reset_n[1]),
        .O(\noip_reset_n[1]_i_1_n_0 ));
  FDCE \noip_reset_n_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\noip_reset_n[0]_i_1_n_0 ),
        .Q(noip_reset_n[0]));
  FDCE \noip_reset_n_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\noip_reset_n[1]_i_1_n_0 ),
        .Q(noip_reset_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEF44)) 
    \pll_clk_en[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[4] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[7] ),
        .I3(\pll_clk_en_reg_n_0_[0] ),
        .O(\pll_clk_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDF88)) 
    \pll_clk_en[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[4] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[7] ),
        .I3(\pll_clk_en_reg_n_0_[1] ),
        .O(\pll_clk_en[1]_i_1_n_0 ));
  FDCE \pll_clk_en_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\pll_clk_en[0]_i_1_n_0 ),
        .Q(\pll_clk_en_reg_n_0_[0] ));
  FDCE \pll_clk_en_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\pll_clk_en[1]_i_1_n_0 ),
        .Q(\pll_clk_en_reg_n_0_[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[0]_i_2 
       (.I0(read_data_ctr_reg[3]),
        .O(\read_data_ctr[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[0]_i_3 
       (.I0(read_data_ctr_reg[2]),
        .O(\read_data_ctr[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[0]_i_4 
       (.I0(read_data_ctr_reg[1]),
        .O(\read_data_ctr[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[0]_i_5 
       (.I0(read_data_ctr_reg[0]),
        .O(\read_data_ctr[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[12]_i_2 
       (.I0(read_data_ctr_reg[15]),
        .O(\read_data_ctr[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[12]_i_3 
       (.I0(read_data_ctr_reg[14]),
        .O(\read_data_ctr[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[12]_i_4 
       (.I0(read_data_ctr_reg[13]),
        .O(\read_data_ctr[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[12]_i_5 
       (.I0(read_data_ctr_reg[12]),
        .O(\read_data_ctr[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[16]_i_2 
       (.I0(read_data_ctr_reg[19]),
        .O(\read_data_ctr[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[16]_i_3 
       (.I0(read_data_ctr_reg[18]),
        .O(\read_data_ctr[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[16]_i_4 
       (.I0(read_data_ctr_reg[17]),
        .O(\read_data_ctr[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[16]_i_5 
       (.I0(read_data_ctr_reg[16]),
        .O(\read_data_ctr[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[20]_i_2 
       (.I0(read_data_ctr_reg[23]),
        .O(\read_data_ctr[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[20]_i_3 
       (.I0(read_data_ctr_reg[22]),
        .O(\read_data_ctr[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[20]_i_4 
       (.I0(read_data_ctr_reg[21]),
        .O(\read_data_ctr[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[20]_i_5 
       (.I0(read_data_ctr_reg[20]),
        .O(\read_data_ctr[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[24]_i_2 
       (.I0(read_data_ctr_reg[27]),
        .O(\read_data_ctr[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[24]_i_3 
       (.I0(read_data_ctr_reg[26]),
        .O(\read_data_ctr[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[24]_i_4 
       (.I0(read_data_ctr_reg[25]),
        .O(\read_data_ctr[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[24]_i_5 
       (.I0(read_data_ctr_reg[24]),
        .O(\read_data_ctr[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[28]_i_2 
       (.I0(read_data_ctr_reg[31]),
        .O(\read_data_ctr[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[28]_i_3 
       (.I0(read_data_ctr_reg[30]),
        .O(\read_data_ctr[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[28]_i_4 
       (.I0(read_data_ctr_reg[29]),
        .O(\read_data_ctr[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[28]_i_5 
       (.I0(read_data_ctr_reg[28]),
        .O(\read_data_ctr[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[4]_i_2 
       (.I0(read_data_ctr_reg[7]),
        .O(\read_data_ctr[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[4]_i_3 
       (.I0(read_data_ctr_reg[6]),
        .O(\read_data_ctr[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[4]_i_4 
       (.I0(read_data_ctr_reg[5]),
        .O(\read_data_ctr[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[4]_i_5 
       (.I0(read_data_ctr_reg[4]),
        .O(\read_data_ctr[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[8]_i_2 
       (.I0(read_data_ctr_reg[11]),
        .O(\read_data_ctr[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[8]_i_3 
       (.I0(read_data_ctr_reg[10]),
        .O(\read_data_ctr[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[8]_i_4 
       (.I0(read_data_ctr_reg[9]),
        .O(\read_data_ctr[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data_ctr[8]_i_5 
       (.I0(read_data_ctr_reg[8]),
        .O(\read_data_ctr[8]_i_5_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[0] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .D(\read_data_ctr_reg[0]_i_1_n_7 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(read_data_ctr_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\read_data_ctr_reg[0]_i_1_n_0 ,\read_data_ctr_reg[0]_i_1_n_1 ,\read_data_ctr_reg[0]_i_1_n_2 ,\read_data_ctr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[0]_i_1_n_4 ,\read_data_ctr_reg[0]_i_1_n_5 ,\read_data_ctr_reg[0]_i_1_n_6 ,\read_data_ctr_reg[0]_i_1_n_7 }),
        .S({\read_data_ctr[0]_i_2_n_0 ,\read_data_ctr[0]_i_3_n_0 ,\read_data_ctr[0]_i_4_n_0 ,\read_data_ctr[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[10] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[8]_i_1_n_5 ),
        .Q(read_data_ctr_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[11] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[8]_i_1_n_4 ),
        .Q(read_data_ctr_reg[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[12] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[12]_i_1_n_7 ),
        .Q(read_data_ctr_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[12]_i_1 
       (.CI(\read_data_ctr_reg[8]_i_1_n_0 ),
        .CO({\read_data_ctr_reg[12]_i_1_n_0 ,\read_data_ctr_reg[12]_i_1_n_1 ,\read_data_ctr_reg[12]_i_1_n_2 ,\read_data_ctr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[12]_i_1_n_4 ,\read_data_ctr_reg[12]_i_1_n_5 ,\read_data_ctr_reg[12]_i_1_n_6 ,\read_data_ctr_reg[12]_i_1_n_7 }),
        .S({\read_data_ctr[12]_i_2_n_0 ,\read_data_ctr[12]_i_3_n_0 ,\read_data_ctr[12]_i_4_n_0 ,\read_data_ctr[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[13] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[12]_i_1_n_6 ),
        .Q(read_data_ctr_reg[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[14] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[12]_i_1_n_5 ),
        .Q(read_data_ctr_reg[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[15] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[12]_i_1_n_4 ),
        .Q(read_data_ctr_reg[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[16] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[16]_i_1_n_7 ),
        .Q(read_data_ctr_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[16]_i_1 
       (.CI(\read_data_ctr_reg[12]_i_1_n_0 ),
        .CO({\read_data_ctr_reg[16]_i_1_n_0 ,\read_data_ctr_reg[16]_i_1_n_1 ,\read_data_ctr_reg[16]_i_1_n_2 ,\read_data_ctr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[16]_i_1_n_4 ,\read_data_ctr_reg[16]_i_1_n_5 ,\read_data_ctr_reg[16]_i_1_n_6 ,\read_data_ctr_reg[16]_i_1_n_7 }),
        .S({\read_data_ctr[16]_i_2_n_0 ,\read_data_ctr[16]_i_3_n_0 ,\read_data_ctr[16]_i_4_n_0 ,\read_data_ctr[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[17] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[16]_i_1_n_6 ),
        .Q(read_data_ctr_reg[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[18] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[16]_i_1_n_5 ),
        .Q(read_data_ctr_reg[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[19] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[16]_i_1_n_4 ),
        .Q(read_data_ctr_reg[19]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[1] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .D(\read_data_ctr_reg[0]_i_1_n_6 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(read_data_ctr_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[20] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[20]_i_1_n_7 ),
        .Q(read_data_ctr_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[20]_i_1 
       (.CI(\read_data_ctr_reg[16]_i_1_n_0 ),
        .CO({\read_data_ctr_reg[20]_i_1_n_0 ,\read_data_ctr_reg[20]_i_1_n_1 ,\read_data_ctr_reg[20]_i_1_n_2 ,\read_data_ctr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[20]_i_1_n_4 ,\read_data_ctr_reg[20]_i_1_n_5 ,\read_data_ctr_reg[20]_i_1_n_6 ,\read_data_ctr_reg[20]_i_1_n_7 }),
        .S({\read_data_ctr[20]_i_2_n_0 ,\read_data_ctr[20]_i_3_n_0 ,\read_data_ctr[20]_i_4_n_0 ,\read_data_ctr[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[21] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[20]_i_1_n_6 ),
        .Q(read_data_ctr_reg[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[22] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[20]_i_1_n_5 ),
        .Q(read_data_ctr_reg[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[23] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[20]_i_1_n_4 ),
        .Q(read_data_ctr_reg[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[24] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[24]_i_1_n_7 ),
        .Q(read_data_ctr_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[24]_i_1 
       (.CI(\read_data_ctr_reg[20]_i_1_n_0 ),
        .CO({\read_data_ctr_reg[24]_i_1_n_0 ,\read_data_ctr_reg[24]_i_1_n_1 ,\read_data_ctr_reg[24]_i_1_n_2 ,\read_data_ctr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[24]_i_1_n_4 ,\read_data_ctr_reg[24]_i_1_n_5 ,\read_data_ctr_reg[24]_i_1_n_6 ,\read_data_ctr_reg[24]_i_1_n_7 }),
        .S({\read_data_ctr[24]_i_2_n_0 ,\read_data_ctr[24]_i_3_n_0 ,\read_data_ctr[24]_i_4_n_0 ,\read_data_ctr[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[25] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[24]_i_1_n_6 ),
        .Q(read_data_ctr_reg[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[26] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[24]_i_1_n_5 ),
        .Q(read_data_ctr_reg[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[27] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[24]_i_1_n_4 ),
        .Q(read_data_ctr_reg[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[28] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[28]_i_1_n_7 ),
        .Q(read_data_ctr_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[28]_i_1 
       (.CI(\read_data_ctr_reg[24]_i_1_n_0 ),
        .CO({\NLW_read_data_ctr_reg[28]_i_1_CO_UNCONNECTED [3],\read_data_ctr_reg[28]_i_1_n_1 ,\read_data_ctr_reg[28]_i_1_n_2 ,\read_data_ctr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[28]_i_1_n_4 ,\read_data_ctr_reg[28]_i_1_n_5 ,\read_data_ctr_reg[28]_i_1_n_6 ,\read_data_ctr_reg[28]_i_1_n_7 }),
        .S({\read_data_ctr[28]_i_2_n_0 ,\read_data_ctr[28]_i_3_n_0 ,\read_data_ctr[28]_i_4_n_0 ,\read_data_ctr[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[29] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[28]_i_1_n_6 ),
        .Q(read_data_ctr_reg[29]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[2] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .D(\read_data_ctr_reg[0]_i_1_n_5 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(read_data_ctr_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[30] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[28]_i_1_n_5 ),
        .Q(read_data_ctr_reg[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[31] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[28]_i_1_n_4 ),
        .Q(read_data_ctr_reg[31]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[3] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .D(\read_data_ctr_reg[0]_i_1_n_4 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(read_data_ctr_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[4] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[4]_i_1_n_7 ),
        .Q(read_data_ctr_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[4]_i_1 
       (.CI(\read_data_ctr_reg[0]_i_1_n_0 ),
        .CO({\read_data_ctr_reg[4]_i_1_n_0 ,\read_data_ctr_reg[4]_i_1_n_1 ,\read_data_ctr_reg[4]_i_1_n_2 ,\read_data_ctr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[4]_i_1_n_4 ,\read_data_ctr_reg[4]_i_1_n_5 ,\read_data_ctr_reg[4]_i_1_n_6 ,\read_data_ctr_reg[4]_i_1_n_7 }),
        .S({\read_data_ctr[4]_i_2_n_0 ,\read_data_ctr[4]_i_3_n_0 ,\read_data_ctr[4]_i_4_n_0 ,\read_data_ctr[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[5] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[4]_i_1_n_6 ),
        .Q(read_data_ctr_reg[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[6] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[4]_i_1_n_5 ),
        .Q(read_data_ctr_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[7] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[4]_i_1_n_4 ),
        .Q(read_data_ctr_reg[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[8] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[8]_i_1_n_7 ),
        .Q(read_data_ctr_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \read_data_ctr_reg[8]_i_1 
       (.CI(\read_data_ctr_reg[4]_i_1_n_0 ),
        .CO({\read_data_ctr_reg[8]_i_1_n_0 ,\read_data_ctr_reg[8]_i_1_n_1 ,\read_data_ctr_reg[8]_i_1_n_2 ,\read_data_ctr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\read_data_ctr_reg[8]_i_1_n_4 ,\read_data_ctr_reg[8]_i_1_n_5 ,\read_data_ctr_reg[8]_i_1_n_6 ,\read_data_ctr_reg[8]_i_1_n_7 }),
        .S({\read_data_ctr[8]_i_2_n_0 ,\read_data_ctr[8]_i_3_n_0 ,\read_data_ctr[8]_i_4_n_0 ,\read_data_ctr[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \read_data_ctr_reg[9] 
       (.C(clk_spi_in),
        .CE(read_data_ctr),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_data_ctr_reg[8]_i_1_n_6 ),
        .Q(read_data_ctr_reg[9]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \read_spi_data[0]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I5(read_spi_data[0]),
        .O(\read_spi_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \read_spi_data[10]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[11]_i_2_n_0 ),
        .I5(read_spi_data[10]),
        .O(\read_spi_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \read_spi_data[11]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[11]_i_2_n_0 ),
        .I5(read_spi_data[11]),
        .O(\read_spi_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \read_spi_data[11]_i_2 
       (.I0(read_data_ctr_reg[2]),
        .I1(read_data_ctr_reg[3]),
        .I2(\FSM_onehot_SPIState[4]_i_12_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_13_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_14_n_0 ),
        .O(\read_spi_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \read_spi_data[12]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[15]_i_2_n_0 ),
        .I5(read_spi_data[12]),
        .O(\read_spi_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \read_spi_data[13]_i_1 
       (.I0(miso),
        .I1(\read_spi_data[15]_i_2_n_0 ),
        .I2(read_data_ctr_reg[1]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[0]),
        .I5(read_spi_data[13]),
        .O(\read_spi_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \read_spi_data[14]_i_1 
       (.I0(miso),
        .I1(\read_spi_data[15]_i_2_n_0 ),
        .I2(read_data_ctr_reg[1]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[0]),
        .I5(read_spi_data[14]),
        .O(\read_spi_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \read_spi_data[15]_i_1 
       (.I0(miso),
        .I1(\read_spi_data[15]_i_2_n_0 ),
        .I2(read_data_ctr_reg[1]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[0]),
        .I5(read_spi_data[15]),
        .O(\read_spi_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \read_spi_data[15]_i_2 
       (.I0(read_data_ctr_reg[2]),
        .I1(read_data_ctr_reg[3]),
        .I2(\FSM_onehot_SPIState[4]_i_12_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_13_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_14_n_0 ),
        .O(\read_spi_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \read_spi_data[1]_i_1 
       (.I0(miso),
        .I1(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I2(read_data_ctr_reg[1]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[0]),
        .I5(read_spi_data[1]),
        .O(\read_spi_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \read_spi_data[2]_i_1 
       (.I0(miso),
        .I1(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I2(read_data_ctr_reg[1]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[0]),
        .I5(read_spi_data[2]),
        .O(\read_spi_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \read_spi_data[3]_i_1 
       (.I0(miso),
        .I1(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I2(read_data_ctr_reg[1]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[0]),
        .I5(read_spi_data[3]),
        .O(\read_spi_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \read_spi_data[4]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[7]_i_2_n_0 ),
        .I5(read_spi_data[4]),
        .O(\read_spi_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \read_spi_data[5]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[7]_i_2_n_0 ),
        .I5(read_spi_data[5]),
        .O(\read_spi_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \read_spi_data[6]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[7]_i_2_n_0 ),
        .I5(read_spi_data[6]),
        .O(\read_spi_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \read_spi_data[7]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[7]_i_2_n_0 ),
        .I5(read_spi_data[7]),
        .O(\read_spi_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \read_spi_data[7]_i_2 
       (.I0(\FSM_onehot_SPIState[4]_i_12_n_0 ),
        .I1(\FSM_onehot_SPIState[4]_i_13_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_14_n_0 ),
        .I3(read_data_ctr_reg[3]),
        .I4(read_data_ctr_reg[2]),
        .O(\read_spi_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \read_spi_data[8]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[11]_i_2_n_0 ),
        .I5(read_spi_data[8]),
        .O(\read_spi_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \read_spi_data[9]_i_1 
       (.I0(miso),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr),
        .I3(read_data_ctr_reg[0]),
        .I4(\read_spi_data[11]_i_2_n_0 ),
        .I5(read_spi_data[9]),
        .O(\read_spi_data[9]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[0] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[0]_i_1_n_0 ),
        .Q(read_spi_data[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[10] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[10]_i_1_n_0 ),
        .Q(read_spi_data[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[11] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[11]_i_1_n_0 ),
        .Q(read_spi_data[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[12] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[12]_i_1_n_0 ),
        .Q(read_spi_data[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[13] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[13]_i_1_n_0 ),
        .Q(read_spi_data[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[14] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[14]_i_1_n_0 ),
        .Q(read_spi_data[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[15] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[15]_i_1_n_0 ),
        .Q(read_spi_data[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[1] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[1]_i_1_n_0 ),
        .Q(read_spi_data[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[2] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[2]_i_1_n_0 ),
        .Q(read_spi_data[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[3] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[3]_i_1_n_0 ),
        .Q(read_spi_data[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[4] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[4]_i_1_n_0 ),
        .Q(read_spi_data[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[5] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[5]_i_1_n_0 ),
        .Q(read_spi_data[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[6] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[6]_i_1_n_0 ),
        .Q(read_spi_data[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[7] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[7]_i_1_n_0 ),
        .Q(read_spi_data[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[8] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[8]_i_1_n_0 ),
        .Q(read_spi_data[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \read_spi_data_reg[9] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\read_spi_data[9]_i_1_n_0 ),
        .Q(read_spi_data[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[0] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[0]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \reg1_reg[0]_i_1 
       (.I0(spiflag),
        .I1(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[0] ),
        .O(\reg1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[10] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_49),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[11] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_48),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[12] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_47),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[16] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[16]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[16]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[0]),
        .O(\reg1_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[17] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[17]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[17]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[17]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[1]),
        .O(\reg1_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[18] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[18]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[18]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[18]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[2]),
        .O(\reg1_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[19] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[19]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[19]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[19]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[3]),
        .O(\reg1_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[1] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[1]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \reg1_reg[1]_i_1 
       (.I0(spiflag),
        .I1(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[0] ),
        .O(\reg1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[20] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[20]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[20]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[20]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[4]),
        .O(\reg1_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[21] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[21]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[21]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[21]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[5]),
        .O(\reg1_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[22] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[22]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[22]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[22]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[6]),
        .O(\reg1_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[23] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[23]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[23]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[23]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[7]),
        .O(\reg1_reg[23]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[24] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[24]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[24]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[8]),
        .O(\reg1_reg[24]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[25] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[25]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[25]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[25]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[9]),
        .O(\reg1_reg[25]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[26] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[26]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[26]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[26]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[10]),
        .O(\reg1_reg[26]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[27] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[27]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[27]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[27]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[11]),
        .O(\reg1_reg[27]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[28] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[28]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[28]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[28]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[12]),
        .O(\reg1_reg[28]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[29] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[29]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[29]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[29]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[13]),
        .O(\reg1_reg[29]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[2] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_57),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[30] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[30]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[30]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[30]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[14]),
        .O(\reg1_reg[30]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[31] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\reg1_reg[31]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[31]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[31]_i_1 
       (.I0(spiflag),
        .I1(read_spi_data[15]),
        .O(\reg1_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[3] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_56),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[4] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_55),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[5] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_54),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[6] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_53),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[7] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_52),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[8] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_51),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg1_reg[9] 
       (.CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_50),
        .G(1'b1),
        .GE(1'b1),
        .Q(reg1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \rising_spi_process.mode_reg 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_59),
        .Q(\rising_spi_process.mode_reg_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    sck_INST_0
       (.I0(clk_spi_in),
        .I1(sck_en_reg_n_0),
        .O(sck));
  LUT5 #(
    .INIT(32'hABBBAAAA)) 
    sck_en_i_1
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\FSM_onehot_SPIState[4]_i_3_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_4_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I4(sck_en_reg_n_0),
        .O(sck_en_i_1_n_0));
  FDCE sck_en_reg
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(sck_en_i_1_n_0),
        .Q(sck_en_reg_n_0));
  LUT6 #(
    .INIT(64'hFF55FF55AA00AE00)) 
    spiflag_i_1
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I2(read_data_ctr_reg[0]),
        .I3(read_data_ctr),
        .I4(read_data_ctr_reg[1]),
        .I5(spiflag),
        .O(spiflag_i_1_n_0));
  FDCE spiflag_reg
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(spiflag_i_1_n_0),
        .Q(spiflag));
  LUT6 #(
    .INIT(64'hEBFFFFFFEBFF0000)) 
    \ss_n[0]_i_1 
       (.I0(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6),
        .I1(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10),
        .I2(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9),
        .I3(axi_bvalid_reg),
        .I4(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I5(ss_n[0]),
        .O(\ss_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FFFFFFF9FFF0000)) 
    \ss_n[1]_i_1 
       (.I0(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10),
        .I1(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9),
        .I2(axi_bvalid_reg),
        .I3(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6),
        .I4(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I5(ss_n[1]),
        .O(\ss_n[1]_i_1_n_0 ));
  FDPE \ss_n_reg[0] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .D(\ss_n[0]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(ss_n[0]));
  FDPE \ss_n_reg[1] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .D(\ss_n[1]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(ss_n[1]));
  FDCE #(
    .INIT(1'b0)) 
    \startup_process.id_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_58),
        .Q(\startup_process.id_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFCFFFF444C4444)) 
    \sw_enable_n[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[10] ),
        .I2(sensor_id[1]),
        .I3(sensor_id[0]),
        .I4(id),
        .I5(sw_enable_n[0]),
        .O(\sw_enable_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFFFFFAAA88888)) 
    \sw_enable_n[1]_i_1 
       (.I0(\FSM_onehot_StartupState_reg_n_0_[10] ),
        .I1(\startup_process.id_reg_n_0_[0] ),
        .I2(sensor_id[1]),
        .I3(sensor_id[0]),
        .I4(id),
        .I5(sw_enable_n[1]),
        .O(\sw_enable_n[1]_i_1_n_0 ));
  FDPE \sw_enable_n_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sw_enable_n[0]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(sw_enable_n[0]));
  FDPE \sw_enable_n_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sw_enable_n[1]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(sw_enable_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEF44)) 
    \vdd18_toggle[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[1] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[10] ),
        .I3(vdd18_toggle[0]),
        .O(\vdd18_toggle[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDF88)) 
    \vdd18_toggle[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[1] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[10] ),
        .I3(vdd18_toggle[1]),
        .O(\vdd18_toggle[1]_i_1_n_0 ));
  FDCE \vdd18_toggle_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\vdd18_toggle[0]_i_1_n_0 ),
        .Q(vdd18_toggle[0]));
  FDCE \vdd18_toggle_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\vdd18_toggle[1]_i_1_n_0 ),
        .Q(vdd18_toggle[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEF44)) 
    \vdd33_toggle[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[2] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[9] ),
        .I3(vdd33_toggle[0]),
        .O(\vdd33_toggle[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDF88)) 
    \vdd33_toggle[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[2] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[9] ),
        .I3(vdd33_toggle[1]),
        .O(\vdd33_toggle[1]_i_1_n_0 ));
  FDCE \vdd33_toggle_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\vdd33_toggle[0]_i_1_n_0 ),
        .Q(vdd33_toggle[0]));
  FDCE \vdd33_toggle_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\vdd33_toggle[1]_i_1_n_0 ),
        .Q(vdd33_toggle[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEF44)) 
    \vddpix_toggle[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[3] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[8] ),
        .I3(vddpix_toggle[0]),
        .O(\vddpix_toggle[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDF88)) 
    \vddpix_toggle[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(\FSM_onehot_StartupState_reg_n_0_[3] ),
        .I2(\FSM_onehot_StartupState_reg_n_0_[8] ),
        .I3(vddpix_toggle[1]),
        .O(\vddpix_toggle[1]_i_1_n_0 ));
  FDCE \vddpix_toggle_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\vddpix_toggle[0]_i_1_n_0 ),
        .Q(vddpix_toggle[0]));
  FDCE \vddpix_toggle_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\vddpix_toggle[1]_i_1_n_0 ),
        .Q(vddpix_toggle[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry
       (.CI(1'b0),
        .CO({write_data_ctr0_carry_n_0,write_data_ctr0_carry_n_1,write_data_ctr0_carry_n_2,write_data_ctr0_carry_n_3}),
        .CYINIT(write_data_ctr[0]),
        .DI(write_data_ctr[4:1]),
        .O(in10[4:1]),
        .S({write_data_ctr0_carry_i_1_n_0,write_data_ctr0_carry_i_2_n_0,write_data_ctr0_carry_i_3_n_0,write_data_ctr0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__0
       (.CI(write_data_ctr0_carry_n_0),
        .CO({write_data_ctr0_carry__0_n_0,write_data_ctr0_carry__0_n_1,write_data_ctr0_carry__0_n_2,write_data_ctr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[8:5]),
        .O(in10[8:5]),
        .S({write_data_ctr0_carry__0_i_1_n_0,write_data_ctr0_carry__0_i_2_n_0,write_data_ctr0_carry__0_i_3_n_0,write_data_ctr0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__0_i_1
       (.I0(write_data_ctr[8]),
        .O(write_data_ctr0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__0_i_2
       (.I0(write_data_ctr[7]),
        .O(write_data_ctr0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__0_i_3
       (.I0(write_data_ctr[6]),
        .O(write_data_ctr0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__0_i_4
       (.I0(write_data_ctr[5]),
        .O(write_data_ctr0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__1
       (.CI(write_data_ctr0_carry__0_n_0),
        .CO({write_data_ctr0_carry__1_n_0,write_data_ctr0_carry__1_n_1,write_data_ctr0_carry__1_n_2,write_data_ctr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[12:9]),
        .O(in10[12:9]),
        .S({write_data_ctr0_carry__1_i_1_n_0,write_data_ctr0_carry__1_i_2_n_0,write_data_ctr0_carry__1_i_3_n_0,write_data_ctr0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__1_i_1
       (.I0(write_data_ctr[12]),
        .O(write_data_ctr0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__1_i_2
       (.I0(write_data_ctr[11]),
        .O(write_data_ctr0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__1_i_3
       (.I0(write_data_ctr[10]),
        .O(write_data_ctr0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__1_i_4
       (.I0(write_data_ctr[9]),
        .O(write_data_ctr0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__2
       (.CI(write_data_ctr0_carry__1_n_0),
        .CO({write_data_ctr0_carry__2_n_0,write_data_ctr0_carry__2_n_1,write_data_ctr0_carry__2_n_2,write_data_ctr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[16:13]),
        .O(in10[16:13]),
        .S({write_data_ctr0_carry__2_i_1_n_0,write_data_ctr0_carry__2_i_2_n_0,write_data_ctr0_carry__2_i_3_n_0,write_data_ctr0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__2_i_1
       (.I0(write_data_ctr[16]),
        .O(write_data_ctr0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__2_i_2
       (.I0(write_data_ctr[15]),
        .O(write_data_ctr0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__2_i_3
       (.I0(write_data_ctr[14]),
        .O(write_data_ctr0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__2_i_4
       (.I0(write_data_ctr[13]),
        .O(write_data_ctr0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__3
       (.CI(write_data_ctr0_carry__2_n_0),
        .CO({write_data_ctr0_carry__3_n_0,write_data_ctr0_carry__3_n_1,write_data_ctr0_carry__3_n_2,write_data_ctr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[20:17]),
        .O(in10[20:17]),
        .S({write_data_ctr0_carry__3_i_1_n_0,write_data_ctr0_carry__3_i_2_n_0,write_data_ctr0_carry__3_i_3_n_0,write_data_ctr0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__3_i_1
       (.I0(write_data_ctr[20]),
        .O(write_data_ctr0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__3_i_2
       (.I0(write_data_ctr[19]),
        .O(write_data_ctr0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__3_i_3
       (.I0(write_data_ctr[18]),
        .O(write_data_ctr0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__3_i_4
       (.I0(write_data_ctr[17]),
        .O(write_data_ctr0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__4
       (.CI(write_data_ctr0_carry__3_n_0),
        .CO({write_data_ctr0_carry__4_n_0,write_data_ctr0_carry__4_n_1,write_data_ctr0_carry__4_n_2,write_data_ctr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[24:21]),
        .O(in10[24:21]),
        .S({write_data_ctr0_carry__4_i_1_n_0,write_data_ctr0_carry__4_i_2_n_0,write_data_ctr0_carry__4_i_3_n_0,write_data_ctr0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__4_i_1
       (.I0(write_data_ctr[24]),
        .O(write_data_ctr0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__4_i_2
       (.I0(write_data_ctr[23]),
        .O(write_data_ctr0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__4_i_3
       (.I0(write_data_ctr[22]),
        .O(write_data_ctr0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__4_i_4
       (.I0(write_data_ctr[21]),
        .O(write_data_ctr0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__5
       (.CI(write_data_ctr0_carry__4_n_0),
        .CO({write_data_ctr0_carry__5_n_0,write_data_ctr0_carry__5_n_1,write_data_ctr0_carry__5_n_2,write_data_ctr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[28:25]),
        .O(in10[28:25]),
        .S({write_data_ctr0_carry__5_i_1_n_0,write_data_ctr0_carry__5_i_2_n_0,write_data_ctr0_carry__5_i_3_n_0,write_data_ctr0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__5_i_1
       (.I0(write_data_ctr[28]),
        .O(write_data_ctr0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__5_i_2
       (.I0(write_data_ctr[27]),
        .O(write_data_ctr0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__5_i_3
       (.I0(write_data_ctr[26]),
        .O(write_data_ctr0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__5_i_4
       (.I0(write_data_ctr[25]),
        .O(write_data_ctr0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__6
       (.CI(write_data_ctr0_carry__5_n_0),
        .CO({NLW_write_data_ctr0_carry__6_CO_UNCONNECTED[3:2],write_data_ctr0_carry__6_n_2,write_data_ctr0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,write_data_ctr[30:29]}),
        .O({NLW_write_data_ctr0_carry__6_O_UNCONNECTED[3],in10[31:29]}),
        .S({1'b0,write_data_ctr0_carry__6_i_1_n_0,write_data_ctr0_carry__6_i_2_n_0,write_data_ctr0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__6_i_1
       (.I0(write_data_ctr[31]),
        .O(write_data_ctr0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__6_i_2
       (.I0(write_data_ctr[30]),
        .O(write_data_ctr0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry__6_i_3
       (.I0(write_data_ctr[29]),
        .O(write_data_ctr0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry_i_1
       (.I0(write_data_ctr[4]),
        .O(write_data_ctr0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry_i_2
       (.I0(write_data_ctr[3]),
        .O(write_data_ctr0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry_i_3
       (.I0(write_data_ctr[2]),
        .O(write_data_ctr0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_data_ctr0_carry_i_4
       (.I0(write_data_ctr[1]),
        .O(write_data_ctr0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \write_data_ctr[0]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(write_data_ctr[0]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .O(\write_data_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[10]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[10]),
        .O(\write_data_ctr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[11]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[11]),
        .O(\write_data_ctr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[12]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[12]),
        .O(\write_data_ctr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[13]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[13]),
        .O(\write_data_ctr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[14]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[14]),
        .O(\write_data_ctr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[15]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[15]),
        .O(\write_data_ctr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[16]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[16]),
        .O(\write_data_ctr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[17]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[17]),
        .O(\write_data_ctr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[18]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[18]),
        .O(\write_data_ctr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[19]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[19]),
        .O(\write_data_ctr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \write_data_ctr[1]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in10[1]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .O(\write_data_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[20]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[20]),
        .O(\write_data_ctr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[21]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[21]),
        .O(\write_data_ctr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[22]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[22]),
        .O(\write_data_ctr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[23]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[23]),
        .O(\write_data_ctr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[24]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[24]),
        .O(\write_data_ctr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[25]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[25]),
        .O(\write_data_ctr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[26]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[26]),
        .O(\write_data_ctr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[27]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[27]),
        .O(\write_data_ctr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[28]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[28]),
        .O(\write_data_ctr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[29]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[29]),
        .O(\write_data_ctr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \write_data_ctr[2]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in10[2]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .O(\write_data_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[30]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[30]),
        .O(\write_data_ctr[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \write_data_ctr[31]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .O(write_data_ctr_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[31]_i_2 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[31]),
        .O(\write_data_ctr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \write_data_ctr[3]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in10[3]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .O(\write_data_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[4]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[4]),
        .O(\write_data_ctr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[5]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[5]),
        .O(\write_data_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[6]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[6]),
        .O(\write_data_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[7]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[7]),
        .O(\write_data_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[8]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[8]),
        .O(\write_data_ctr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[9]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[4] ),
        .I1(in10[9]),
        .O(\write_data_ctr[9]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_ctr_reg[0] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .D(\write_data_ctr[0]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(write_data_ctr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[10] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[10]_i_1_n_0 ),
        .Q(write_data_ctr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[11] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[11]_i_1_n_0 ),
        .Q(write_data_ctr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[12] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[12]_i_1_n_0 ),
        .Q(write_data_ctr[12]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[13] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[13]_i_1_n_0 ),
        .Q(write_data_ctr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[14] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[14]_i_1_n_0 ),
        .Q(write_data_ctr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[15] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[15]_i_1_n_0 ),
        .Q(write_data_ctr[15]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[16] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[16]_i_1_n_0 ),
        .Q(write_data_ctr[16]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[17] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[17]_i_1_n_0 ),
        .Q(write_data_ctr[17]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[18] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[18]_i_1_n_0 ),
        .Q(write_data_ctr[18]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[19] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[19]_i_1_n_0 ),
        .Q(write_data_ctr[19]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_ctr_reg[1] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .D(\write_data_ctr[1]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(write_data_ctr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[20] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[20]_i_1_n_0 ),
        .Q(write_data_ctr[20]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[21] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[21]_i_1_n_0 ),
        .Q(write_data_ctr[21]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[22] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[22]_i_1_n_0 ),
        .Q(write_data_ctr[22]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[23] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[23]_i_1_n_0 ),
        .Q(write_data_ctr[23]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[24] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[24]_i_1_n_0 ),
        .Q(write_data_ctr[24]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[25] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[25]_i_1_n_0 ),
        .Q(write_data_ctr[25]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[26] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[26]_i_1_n_0 ),
        .Q(write_data_ctr[26]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[27] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[27]_i_1_n_0 ),
        .Q(write_data_ctr[27]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[28] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[28]_i_1_n_0 ),
        .Q(write_data_ctr[28]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[29] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[29]_i_1_n_0 ),
        .Q(write_data_ctr[29]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_ctr_reg[2] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .D(\write_data_ctr[2]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(write_data_ctr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[30] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[30]_i_1_n_0 ),
        .Q(write_data_ctr[30]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[31] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[31]_i_2_n_0 ),
        .Q(write_data_ctr[31]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_ctr_reg[3] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .D(\write_data_ctr[3]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(write_data_ctr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[4] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[4]_i_1_n_0 ),
        .Q(write_data_ctr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[5] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[5]_i_1_n_0 ),
        .Q(write_data_ctr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[6] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[6]_i_1_n_0 ),
        .Q(write_data_ctr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[7] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[7]_i_1_n_0 ),
        .Q(write_data_ctr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[8] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[8]_i_1_n_0 ),
        .Q(write_data_ctr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_ctr_reg[9] 
       (.C(clk_spi_in),
        .CE(write_data_ctr_0),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\write_data_ctr[9]_i_1_n_0 ),
        .Q(write_data_ctr[9]));
endmodule

module main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    s00_axi_aresetn_0,
    axi_bvalid_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \slv_reg0_reg[3]_0 ,
    Q,
    D,
    E,
    \FSM_onehot_SPIState_reg[1] ,
    s00_axi_rdata,
    \slv_reg0_reg[12]_0 ,
    \FSM_onehot_StartupState_reg[0] ,
    \FSM_onehot_SPIState_reg[0] ,
    \FSM_onehot_SPIState_reg[4] ,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    \startup_process.id_reg[0] ,
    \FSM_onehot_StartupState_reg[0]_0 ,
    \FSM_onehot_StartupState_reg[0]_1 ,
    \FSM_onehot_SPIState_reg[0]_0 ,
    \FSM_onehot_SPIState_reg[0]_1 ,
    \FSM_onehot_SPIState_reg[0]_2 ,
    mosi_reg,
    \FSM_onehot_SPIState_reg[0]_3 ,
    \rising_spi_process.mode_reg ,
    mosi_reg_0,
    mosi_reg_1,
    mosi_i_4_0,
    mosi_reg_2,
    s00_axi_awaddr,
    s00_axi_wstrb,
    \s00_axi_rdata[31] ,
    spiflag,
    s00_axi_bready,
    s00_axi_rready,
    \startup_process.id_reg[0]_0 ,
    mosi_reg_3,
    mosi,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output s00_axi_aresetn_0;
  output axi_bvalid_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \slv_reg0_reg[3]_0 ;
  output [3:0]Q;
  output [1:0]D;
  output [0:0]E;
  output [0:0]\FSM_onehot_SPIState_reg[1] ;
  output [31:0]s00_axi_rdata;
  output [10:0]\slv_reg0_reg[12]_0 ;
  output \FSM_onehot_StartupState_reg[0] ;
  output \FSM_onehot_SPIState_reg[0] ;
  output \FSM_onehot_SPIState_reg[4] ;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input [0:0]\startup_process.id_reg[0] ;
  input \FSM_onehot_StartupState_reg[0]_0 ;
  input \FSM_onehot_StartupState_reg[0]_1 ;
  input \FSM_onehot_SPIState_reg[0]_0 ;
  input \FSM_onehot_SPIState_reg[0]_1 ;
  input \FSM_onehot_SPIState_reg[0]_2 ;
  input [3:0]mosi_reg;
  input \FSM_onehot_SPIState_reg[0]_3 ;
  input \rising_spi_process.mode_reg ;
  input mosi_reg_0;
  input mosi_reg_1;
  input [3:0]mosi_i_4_0;
  input [4:0]mosi_reg_2;
  input [1:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input [28:0]\s00_axi_rdata[31] ;
  input spiflag;
  input s00_axi_bready;
  input s00_axi_rready;
  input \startup_process.id_reg[0]_0 ;
  input mosi_reg_3;
  input mosi;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_SPIState[4]_i_6_n_0 ;
  wire \FSM_onehot_SPIState_reg[0] ;
  wire \FSM_onehot_SPIState_reg[0]_0 ;
  wire \FSM_onehot_SPIState_reg[0]_1 ;
  wire \FSM_onehot_SPIState_reg[0]_2 ;
  wire \FSM_onehot_SPIState_reg[0]_3 ;
  wire [0:0]\FSM_onehot_SPIState_reg[1] ;
  wire \FSM_onehot_SPIState_reg[4] ;
  wire \FSM_onehot_StartupState_reg[0] ;
  wire \FSM_onehot_StartupState_reg[0]_0 ;
  wire \FSM_onehot_StartupState_reg[0]_1 ;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [3:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire mosi;
  wire mosi_i_10_n_0;
  wire mosi_i_13_n_0;
  wire mosi_i_14_n_0;
  wire mosi_i_15_n_0;
  wire mosi_i_16_n_0;
  wire mosi_i_17_n_0;
  wire mosi_i_18_n_0;
  wire mosi_i_19_n_0;
  wire mosi_i_20_n_0;
  wire mosi_i_21_n_0;
  wire mosi_i_22_n_0;
  wire mosi_i_2_n_0;
  wire [3:0]mosi_i_4_0;
  wire mosi_i_4_n_0;
  wire mosi_i_9_n_0;
  wire [3:0]mosi_reg;
  wire mosi_reg_0;
  wire mosi_reg_1;
  wire [4:0]mosi_reg_2;
  wire mosi_reg_3;
  wire mosi_reg_i_5_n_0;
  wire mosi_reg_i_6_n_0;
  wire mosi_reg_i_7_n_0;
  wire mosi_reg_i_8_n_0;
  wire [31:7]p_1_in;
  wire \rising_spi_process.mode_reg ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire [28:0]\s00_axi_rdata[31] ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [10:0]\slv_reg0_reg[12]_0 ;
  wire \slv_reg0_reg[3]_0 ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [8:0]spi_addr;
  wire spiflag;
  wire [0:0]\startup_process.id_reg[0] ;
  wire \startup_process.id_reg[0]_0 ;
  wire [1:0]state_read;

  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFEA)) 
    \FSM_onehot_SPIState[4]_i_1 
       (.I0(\FSM_onehot_SPIState_reg[0]_0 ),
        .I1(\FSM_onehot_SPIState_reg[0]_1 ),
        .I2(\FSM_onehot_SPIState_reg[0]_2 ),
        .I3(\FSM_onehot_SPIState[4]_i_6_n_0 ),
        .I4(mosi_reg[1]),
        .I5(\FSM_onehot_SPIState_reg[0]_3 ),
        .O(\FSM_onehot_SPIState_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \FSM_onehot_SPIState[4]_i_6 
       (.I0(axi_bvalid_reg_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(mosi_reg[0]),
        .I4(mosi_reg[2]),
        .I5(axi_rvalid_reg_0),
        .O(\FSM_onehot_SPIState[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF9000)) 
    \FSM_onehot_StartupState[10]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(axi_bvalid_reg_0),
        .I3(\startup_process.id_reg[0] ),
        .I4(\FSM_onehot_StartupState_reg[0]_0 ),
        .I5(\FSM_onehot_StartupState_reg[0]_1 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_StartupState[1]_i_1 
       (.I0(\startup_process.id_reg[0] ),
        .I1(axi_bvalid_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \FSM_onehot_StartupState[6]_i_1 
       (.I0(\startup_process.id_reg[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(axi_bvalid_reg_0),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFBFFFAAFFBFFF00)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(axi_wready),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55554000)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFF0FFF8888FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88880FFF0000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(s00_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[3]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[3]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .O(\axi_araddr[3]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA2A2A2A2FFAFAFAF)) 
    axi_arready_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[1]),
        .I3(axi_rvalid_reg_0),
        .I4(s00_axi_rready),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_aresetn),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_aresetn),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2AAA2A)) 
    axi_awready_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(s00_axi_wvalid),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I5(axi_wready),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hEEEFCCCCFFFFCCCC)) 
    axi_bvalid_i_1
       (.I0(axi_wready),
        .I1(axi_bvalid_i_2_n_0),
        .I2(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_bvalid_reg_0),
        .I5(s00_axi_bready),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    axi_bvalid_i_2
       (.I0(s00_axi_wvalid),
        .I1(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF000FF00FF80FF80)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[0]),
        .I3(axi_rvalid_reg_0),
        .I4(s00_axi_rready),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(s00_axi_aresetn_0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFEFCFEFFFEFCFE00)) 
    mosi_i_1
       (.I0(mosi_i_2_n_0),
        .I1(mosi_reg_3),
        .I2(mosi_i_4_n_0),
        .I3(mosi_reg[3]),
        .I4(mosi_reg[1]),
        .I5(mosi),
        .O(\FSM_onehot_SPIState_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    mosi_i_10
       (.I0(mosi_i_21_n_0),
        .I1(mosi_i_4_0[2]),
        .I2(mosi_i_22_n_0),
        .I3(mosi_i_4_0[3]),
        .O(mosi_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_13
       (.I0(spi_addr[7]),
        .I1(spi_addr[6]),
        .I2(mosi_reg_2[1]),
        .I3(spi_addr[5]),
        .I4(mosi_reg_2[0]),
        .I5(spi_addr[4]),
        .O(mosi_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_14
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(mosi_reg_2[1]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(mosi_reg_2[0]),
        .I5(spi_addr[8]),
        .O(mosi_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_15
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(mosi_reg_2[1]),
        .I3(Q[1]),
        .I4(mosi_reg_2[0]),
        .I5(Q[0]),
        .O(mosi_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_16
       (.I0(spi_addr[3]),
        .I1(spi_addr[2]),
        .I2(mosi_reg_2[1]),
        .I3(spi_addr[1]),
        .I4(mosi_reg_2[0]),
        .I5(spi_addr[0]),
        .O(mosi_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_17
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(mosi_reg_2[1]),
        .I3(\slv_reg0_reg_n_0_[25] ),
        .I4(mosi_reg_2[0]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(mosi_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_18
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(mosi_reg_2[1]),
        .I3(\slv_reg0_reg_n_0_[29] ),
        .I4(mosi_reg_2[0]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(mosi_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_19
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(mosi_reg_2[1]),
        .I3(\slv_reg0_reg_n_0_[17] ),
        .I4(mosi_reg_2[0]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(mosi_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_2
       (.I0(mosi_reg_i_5_n_0),
        .I1(mosi_reg_i_6_n_0),
        .I2(mosi_reg_2[4]),
        .I3(mosi_reg_i_7_n_0),
        .I4(mosi_reg_2[3]),
        .I5(mosi_reg_i_8_n_0),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_20
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(mosi_reg_2[1]),
        .I3(\slv_reg0_reg_n_0_[21] ),
        .I4(mosi_reg_2[0]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(mosi_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_21
       (.I0(spi_addr[3]),
        .I1(spi_addr[2]),
        .I2(mosi_i_4_0[1]),
        .I3(spi_addr[1]),
        .I4(mosi_i_4_0[0]),
        .I5(spi_addr[0]),
        .O(mosi_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_22
       (.I0(spi_addr[7]),
        .I1(spi_addr[6]),
        .I2(mosi_i_4_0[1]),
        .I3(spi_addr[5]),
        .I4(mosi_i_4_0[0]),
        .I5(spi_addr[4]),
        .O(mosi_i_22_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEF000000000)) 
    mosi_i_4
       (.I0(mosi_i_9_n_0),
        .I1(mosi_i_10_n_0),
        .I2(\rising_spi_process.mode_reg ),
        .I3(mosi_reg_0),
        .I4(mosi_reg_1),
        .I5(mosi_reg[1]),
        .O(mosi_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mosi_i_9
       (.I0(mosi_i_4_0[3]),
        .I1(spi_addr[8]),
        .O(mosi_i_9_n_0));
  MUXF7 mosi_reg_i_5
       (.I0(mosi_i_13_n_0),
        .I1(mosi_i_14_n_0),
        .O(mosi_reg_i_5_n_0),
        .S(mosi_reg_2[2]));
  MUXF7 mosi_reg_i_6
       (.I0(mosi_i_15_n_0),
        .I1(mosi_i_16_n_0),
        .O(mosi_reg_i_6_n_0),
        .S(mosi_reg_2[2]));
  MUXF7 mosi_reg_i_7
       (.I0(mosi_i_17_n_0),
        .I1(mosi_i_18_n_0),
        .O(mosi_reg_i_7_n_0),
        .S(mosi_reg_2[2]));
  MUXF7 mosi_reg_i_8
       (.I0(mosi_i_19_n_0),
        .I1(mosi_i_20_n_0),
        .O(mosi_reg_i_8_n_0),
        .S(mosi_reg_2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \noip_reset_n[0]_i_2 
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[10]_i_1 
       (.I0(spi_addr[6]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[11]_i_1 
       (.I0(spi_addr[7]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[12]_i_1 
       (.I0(spi_addr[8]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[4]_i_1 
       (.I0(spi_addr[0]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[5]_i_1 
       (.I0(spi_addr[1]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[6]_i_1 
       (.I0(spi_addr[2]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[7]_i_1 
       (.I0(spi_addr[3]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[8]_i_1 
       (.I0(spi_addr[4]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg1_reg[9]_i_1 
       (.I0(spi_addr[5]),
        .I1(spiflag),
        .O(\slv_reg0_reg[12]_0 [7]));
  LUT5 #(
    .INIT(32'hF7FF2000)) 
    \rising_spi_process.mode_i_1 
       (.I0(mosi_reg[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(axi_bvalid_reg_0),
        .I4(\rising_spi_process.mode_reg ),
        .O(\FSM_onehot_SPIState_reg[0] ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(Q[0]),
        .I1(\s00_axi_rdata[31] [0]),
        .I2(slv_reg2[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[0]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg2[10]),
        .I1(slv_reg3[10]),
        .I2(\s00_axi_rdata[31] [10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(spi_addr[6]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(spi_addr[7]),
        .I1(\s00_axi_rdata[31] [11]),
        .I2(slv_reg2[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[11]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(spi_addr[8]),
        .I1(\s00_axi_rdata[31] [12]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[12]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [13]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [14]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(\s00_axi_rdata[31] [15]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[18]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(\s00_axi_rdata[31] [16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(Q[1]),
        .I1(\s00_axi_rdata[31] [1]),
        .I2(slv_reg2[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(\s00_axi_rdata[31] [17]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[20]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg2[21]),
        .I1(slv_reg3[21]),
        .I2(\s00_axi_rdata[31] [18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(\s00_axi_rdata[31] [19]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[22]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg2[23]),
        .I1(slv_reg3[23]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [20]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(\s00_axi_rdata[31] [21]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[24]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(\s00_axi_rdata[31] [22]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[25]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg2[26]),
        .I1(slv_reg3[26]),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [23]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg2[27]),
        .I1(slv_reg3[27]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [24]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg2[28]),
        .I1(slv_reg3[28]),
        .I2(\s00_axi_rdata[31] [25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(\s00_axi_rdata[31] [26]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[29]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(slv_reg2[2]),
        .I1(slv_reg3[2]),
        .I2(\s00_axi_rdata[31] [2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(Q[2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(\s00_axi_rdata[31] [27]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[30]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg2[31]),
        .I1(slv_reg3[31]),
        .I2(\s00_axi_rdata[31] [28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(slv_reg2[3]),
        .I1(slv_reg3[3]),
        .I2(Q[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [3]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[31] [4]),
        .I1(spi_addr[0]),
        .I2(slv_reg2[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(spi_addr[1]),
        .I1(\s00_axi_rdata[31] [5]),
        .I2(slv_reg2[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[5]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg2[6]),
        .I1(slv_reg3[6]),
        .I2(spi_addr[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [6]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg2[7]),
        .I1(slv_reg3[7]),
        .I2(spi_addr[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\s00_axi_rdata[31] [7]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg2[8]),
        .I1(slv_reg3[8]),
        .I2(\s00_axi_rdata[31] [8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(spi_addr[4]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(spi_addr[5]),
        .I1(\s00_axi_rdata[31] [9]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[9]),
        .O(s00_axi_rdata[9]));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[1]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[1]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[1]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08000888)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[1]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(spi_addr[6]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(spi_addr[7]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(spi_addr[8]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(spi_addr[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(spi_addr[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(spi_addr[2]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(spi_addr[3]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(spi_addr[4]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(spi_addr[5]),
        .R(s00_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ss_n[0]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\slv_reg0_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \startup_process.id[0]_i_1 
       (.I0(\slv_reg0_reg[3]_0 ),
        .I1(\startup_process.id_reg[0] ),
        .I2(axi_bvalid_reg_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\startup_process.id_reg[0]_0 ),
        .O(\FSM_onehot_StartupState_reg[0] ));
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
