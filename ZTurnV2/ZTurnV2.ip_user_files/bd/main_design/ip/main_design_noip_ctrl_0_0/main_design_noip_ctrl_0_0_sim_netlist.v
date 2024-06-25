// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Jun 25 10:10:34 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_noip_ctrl_0_0/main_design_noip_ctrl_0_0_sim_netlist.v
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
  wire mosi;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [3:0]\^s00_axi_rdata ;
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

  assign noip_reset_n[0] = \<const0> ;
  assign noip_reset_n[1] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \<const0> ;
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10] = \<const0> ;
  assign s00_axi_rdata[9] = \<const0> ;
  assign s00_axi_rdata[8] = \<const0> ;
  assign s00_axi_rdata[7] = \<const0> ;
  assign s00_axi_rdata[6] = \<const0> ;
  assign s00_axi_rdata[5] = \<const0> ;
  assign s00_axi_rdata[4] = \<const0> ;
  assign s00_axi_rdata[3:0] = \^s00_axi_rdata [3:0];
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
        .mosi(mosi),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(\^s00_axi_rdata ),
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

(* ORIG_REF_NAME = "noip_ctrl" *) 
module main_design_noip_ctrl_0_0_noip_ctrl
   (sw_enable_n,
    axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    axi_bvalid_reg,
    clk_pll_out,
    s00_axi_rdata,
    vdd18_toggle,
    vdd33_toggle,
    vddpix_toggle,
    ss_n,
    sck,
    mosi,
    s00_axi_wready,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    clk_72M_pll,
    clk_spi_in,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_wstrb);
  output [0:1]sw_enable_n;
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output axi_bvalid_reg;
  output [0:1]clk_pll_out;
  output [3:0]s00_axi_rdata;
  output [0:1]vdd18_toggle;
  output [0:1]vdd33_toggle;
  output [0:1]vddpix_toggle;
  output [0:1]ss_n;
  output sck;
  output mosi;
  output s00_axi_wready;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input clk_72M_pll;
  input clk_spi_in;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input s00_axi_bready;
  input [3:0]s00_axi_wstrb;

  wire \FSM_onehot_SPIState[0]_i_1_n_0 ;
  wire \FSM_onehot_SPIState[2]_i_1_n_0 ;
  wire \FSM_onehot_SPIState[3]_i_1_n_0 ;
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
  wire \FSM_onehot_SPIState[4]_i_2_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_3_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_5_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_6_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_7_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_8_n_0 ;
  wire \FSM_onehot_SPIState[4]_i_9_n_0 ;
  wire \FSM_onehot_SPIState_reg_n_0_[0] ;
  wire \FSM_onehot_SPIState_reg_n_0_[1] ;
  wire \FSM_onehot_SPIState_reg_n_0_[3] ;
  wire \FSM_sequential_StartupState[1]_i_1_n_0 ;
  wire \FSM_sequential_StartupState[2]_i_1_n_0 ;
  wire [2:0]StartupState;
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
  wire [31:1]in10;
  wire [31:1]in9;
  wire mosi;
  wire mosi_i_11_n_0;
  wire mosi_i_12_n_0;
  wire mosi_i_13_n_0;
  wire mosi_i_14_n_0;
  wire mosi_i_25_n_0;
  wire mosi_i_26_n_0;
  wire mosi_i_27_n_0;
  wire mosi_i_28_n_0;
  wire mosi_i_29_n_0;
  wire mosi_i_30_n_0;
  wire mosi_i_31_n_0;
  wire mosi_i_32_n_0;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9;
  wire \pll_clk_en[0]_i_1_n_0 ;
  wire \pll_clk_en[1]_i_1_n_0 ;
  wire \pll_clk_en_reg_n_0_[0] ;
  wire \pll_clk_en_reg_n_0_[1] ;
  wire powerdownflag;
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
  wire readyflag_i_1_n_0;
  wire readyflag_reg_n_0;
  wire \rising_spi_process.mode_reg_n_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [3:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sck;
  wire sck_en_i_1_n_0;
  wire sck_en_reg_n_0;
  wire \send_data_inferred__0/i__n_0 ;
  wire \send_data_reg[0]_i_1_n_0 ;
  wire [1:0]sensor_id;
  wire spiflag;
  wire spiflag_i_1_n_0;
  wire spiflag_reg_n_0;
  wire [0:1]ss_n;
  wire \ss_n[0]_i_1_n_0 ;
  wire \ss_n[1]_i_1_n_0 ;
  wire \startup_process.id_reg_n_0_[0] ;
  wire [0:1]sw_enable_n;
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
       (.I0(read_data_ctr),
        .I1(spiflag),
        .O(\FSM_onehot_SPIState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_SPIState[2]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\rising_spi_process.mode_reg_n_0 ),
        .O(\FSM_onehot_SPIState[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_SPIState[3]_i_1 
       (.I0(\rising_spi_process.mode_reg_n_0 ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .O(\FSM_onehot_SPIState[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_SPIState[4]_i_10 
       (.I0(write_data_ctr[26]),
        .I1(write_data_ctr[11]),
        .I2(write_data_ctr[7]),
        .I3(\FSM_onehot_SPIState[4]_i_24_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_25_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_11 
       (.I0(\addr_ctr_reg_n_0_[25] ),
        .I1(\addr_ctr_reg_n_0_[20] ),
        .I2(\addr_ctr_reg_n_0_[27] ),
        .I3(\addr_ctr_reg_n_0_[8] ),
        .I4(mosi_i_31_n_0),
        .O(\FSM_onehot_SPIState[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_onehot_SPIState[4]_i_12 
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .I1(\addr_ctr_reg_n_0_[1] ),
        .I2(\addr_ctr_reg_n_0_[3] ),
        .I3(\addr_ctr_reg_n_0_[2] ),
        .I4(mosi_i_29_n_0),
        .O(\FSM_onehot_SPIState[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_13 
       (.I0(\addr_ctr_reg_n_0_[21] ),
        .I1(\addr_ctr_reg_n_0_[13] ),
        .I2(\addr_ctr_reg_n_0_[29] ),
        .I3(\addr_ctr_reg_n_0_[28] ),
        .I4(mosi_i_27_n_0),
        .O(\FSM_onehot_SPIState[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_SPIState[4]_i_14 
       (.I0(\addr_ctr_reg_n_0_[12] ),
        .I1(\addr_ctr_reg_n_0_[10] ),
        .I2(\addr_ctr_reg_n_0_[19] ),
        .I3(\addr_ctr_reg_n_0_[16] ),
        .I4(mosi_i_25_n_0),
        .O(\FSM_onehot_SPIState[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_15 
       (.I0(read_data_ctr_reg[29]),
        .I1(read_data_ctr_reg[11]),
        .I2(read_data_ctr_reg[16]),
        .I3(read_data_ctr_reg[26]),
        .O(\FSM_onehot_SPIState[4]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_16 
       (.I0(read_data_ctr_reg[30]),
        .I1(read_data_ctr_reg[6]),
        .I2(read_data_ctr_reg[21]),
        .I3(read_data_ctr_reg[2]),
        .O(\FSM_onehot_SPIState[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_17 
       (.I0(read_data_ctr_reg[3]),
        .I1(read_data_ctr_reg[0]),
        .I2(read_data_ctr_reg[28]),
        .I3(read_data_ctr_reg[24]),
        .O(\FSM_onehot_SPIState[4]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_18 
       (.I0(read_data_ctr_reg[25]),
        .I1(read_data_ctr_reg[13]),
        .I2(read_data_ctr_reg[10]),
        .I3(read_data_ctr_reg[18]),
        .O(\FSM_onehot_SPIState[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_onehot_SPIState[4]_i_19 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(write_data_ctr[0]),
        .I2(write_data_ctr[9]),
        .I3(write_data_ctr[6]),
        .I4(write_data_ctr[12]),
        .I5(write_data_ctr[28]),
        .O(\FSM_onehot_SPIState[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \FSM_onehot_SPIState[4]_i_2 
       (.I0(\FSM_onehot_SPIState[4]_i_5_n_0 ),
        .I1(\FSM_onehot_SPIState[4]_i_6_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_7_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_8_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_9_n_0 ),
        .I5(\FSM_onehot_SPIState[4]_i_10_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_20 
       (.I0(write_data_ctr[19]),
        .I1(write_data_ctr[20]),
        .I2(write_data_ctr[10]),
        .I3(write_data_ctr[17]),
        .O(\FSM_onehot_SPIState[4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_21 
       (.I0(write_data_ctr[8]),
        .I1(write_data_ctr[21]),
        .I2(write_data_ctr[30]),
        .I3(write_data_ctr[18]),
        .O(\FSM_onehot_SPIState[4]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_22 
       (.I0(write_data_ctr[27]),
        .I1(write_data_ctr[3]),
        .I2(write_data_ctr[1]),
        .I3(write_data_ctr[15]),
        .O(\FSM_onehot_SPIState[4]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_23 
       (.I0(write_data_ctr[25]),
        .I1(write_data_ctr[14]),
        .I2(write_data_ctr[13]),
        .I3(write_data_ctr[24]),
        .O(\FSM_onehot_SPIState[4]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_24 
       (.I0(write_data_ctr[5]),
        .I1(write_data_ctr[29]),
        .I2(write_data_ctr[31]),
        .I3(write_data_ctr[23]),
        .O(\FSM_onehot_SPIState[4]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_SPIState[4]_i_25 
       (.I0(write_data_ctr[22]),
        .I1(write_data_ctr[2]),
        .I2(write_data_ctr[16]),
        .I3(write_data_ctr[4]),
        .O(\FSM_onehot_SPIState[4]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_SPIState[4]_i_3 
       (.I0(\FSM_onehot_SPIState[4]_i_11_n_0 ),
        .I1(\FSM_onehot_SPIState[4]_i_12_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_13_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_14_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_onehot_SPIState[4]_i_5 
       (.I0(read_data_ctr),
        .I1(read_data_ctr_reg[22]),
        .I2(read_data_ctr_reg[19]),
        .I3(read_data_ctr_reg[31]),
        .I4(read_data_ctr_reg[14]),
        .I5(read_data_ctr_reg[15]),
        .O(\FSM_onehot_SPIState[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_6 
       (.I0(read_data_ctr_reg[12]),
        .I1(read_data_ctr_reg[1]),
        .I2(read_data_ctr_reg[20]),
        .I3(read_data_ctr_reg[23]),
        .I4(\FSM_onehot_SPIState[4]_i_15_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_7 
       (.I0(read_data_ctr_reg[9]),
        .I1(read_data_ctr_reg[7]),
        .I2(read_data_ctr_reg[5]),
        .I3(read_data_ctr_reg[27]),
        .I4(\FSM_onehot_SPIState[4]_i_16_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_SPIState[4]_i_8 
       (.I0(read_data_ctr_reg[17]),
        .I1(read_data_ctr_reg[4]),
        .I2(read_data_ctr_reg[8]),
        .I3(\FSM_onehot_SPIState[4]_i_17_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_18_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_SPIState[4]_i_9 
       (.I0(\FSM_onehot_SPIState[4]_i_19_n_0 ),
        .I1(\FSM_onehot_SPIState[4]_i_20_n_0 ),
        .I2(\FSM_onehot_SPIState[4]_i_21_n_0 ),
        .I3(\FSM_onehot_SPIState[4]_i_22_n_0 ),
        .I4(\FSM_onehot_SPIState[4]_i_23_n_0 ),
        .O(\FSM_onehot_SPIState[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_SPIState_reg[0] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .D(\FSM_onehot_SPIState[0]_i_1_n_0 ),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(\FSM_onehot_SPIState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[1] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .Q(\FSM_onehot_SPIState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[2] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState[2]_i_1_n_0 ),
        .Q(read_data_ctr));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[3] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState[3]_i_1_n_0 ),
        .Q(\FSM_onehot_SPIState_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SPIState_reg[4] 
       (.C(clk_spi_in),
        .CE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .Q(spiflag));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE6)) 
    \FSM_sequential_StartupState[1]_i_1 
       (.I0(StartupState[0]),
        .I1(StartupState[1]),
        .I2(StartupState[2]),
        .O(\FSM_sequential_StartupState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_sequential_StartupState[2]_i_1 
       (.I0(StartupState[0]),
        .I1(StartupState[1]),
        .I2(StartupState[2]),
        .O(\FSM_sequential_StartupState[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_StartupState_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12),
        .Q(StartupState[0]));
  (* FSM_ENCODED_STATES = "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_StartupState_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_sequential_StartupState[1]_i_1_n_0 ),
        .Q(StartupState[1]));
  (* FSM_ENCODED_STATES = "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_StartupState_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(\FSM_sequential_StartupState[2]_i_1_n_0 ),
        .Q(StartupState[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry
       (.CI(1'b0),
        .CO({addr_ctr0_carry_n_0,addr_ctr0_carry_n_1,addr_ctr0_carry_n_2,addr_ctr0_carry_n_3}),
        .CYINIT(\addr_ctr_reg_n_0_[0] ),
        .DI({\addr_ctr_reg_n_0_[4] ,\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] }),
        .O(in10[4:1]),
        .S({addr_ctr0_carry_i_1_n_0,addr_ctr0_carry_i_2_n_0,addr_ctr0_carry_i_3_n_0,addr_ctr0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 addr_ctr0_carry__0
       (.CI(addr_ctr0_carry_n_0),
        .CO({addr_ctr0_carry__0_n_0,addr_ctr0_carry__0_n_1,addr_ctr0_carry__0_n_2,addr_ctr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[8] ,\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] }),
        .O(in10[8:5]),
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
        .O(in10[12:9]),
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
        .O(in10[16:13]),
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
        .O(in10[20:17]),
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
        .O(in10[24:21]),
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
        .O(in10[28:25]),
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
        .O({NLW_addr_ctr0_carry__6_O_UNCONNECTED[3],in10[31:29]}),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_ctr[0]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\addr_ctr_reg_n_0_[0] ),
        .O(\addr_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[10]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[10]),
        .O(\addr_ctr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[11]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[11]),
        .O(\addr_ctr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[12]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[12]),
        .O(\addr_ctr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[13]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[13]),
        .O(\addr_ctr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[14]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[14]),
        .O(\addr_ctr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[15]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[15]),
        .O(\addr_ctr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[16]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[16]),
        .O(\addr_ctr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[17]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[17]),
        .O(\addr_ctr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[18]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[18]),
        .O(\addr_ctr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[19]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[19]),
        .O(\addr_ctr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[1]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[1]),
        .O(\addr_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[20]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[20]),
        .O(\addr_ctr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[21]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[21]),
        .O(\addr_ctr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[22]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[22]),
        .O(\addr_ctr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[23]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[23]),
        .O(\addr_ctr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[24]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[24]),
        .O(\addr_ctr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[25]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[25]),
        .O(\addr_ctr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[26]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[26]),
        .O(\addr_ctr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[27]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[27]),
        .O(\addr_ctr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[28]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[28]),
        .O(\addr_ctr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[29]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[29]),
        .O(\addr_ctr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[2]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[2]),
        .O(\addr_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[30]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[30]),
        .O(\addr_ctr[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_ctr[31]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .O(addr_ctr));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[31]_i_2 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[31]),
        .O(\addr_ctr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \addr_ctr[3]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in10[3]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .O(\addr_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[4]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[4]),
        .O(\addr_ctr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[5]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[5]),
        .O(\addr_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[6]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[6]),
        .O(\addr_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[7]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[7]),
        .O(\addr_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[8]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[8]),
        .O(\addr_ctr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_ctr[9]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(in10[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_pll_out[0]_INST_0 
       (.I0(\pll_clk_en_reg_n_0_[0] ),
        .I1(clk_72M_pll),
        .O(clk_pll_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_pll_out[1]_INST_0 
       (.I0(\pll_clk_en_reg_n_0_[1] ),
        .I1(clk_72M_pll),
        .O(clk_pll_out[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mosi_i_11
       (.I0(mosi_i_25_n_0),
        .I1(mosi_i_26_n_0),
        .I2(mosi_i_27_n_0),
        .I3(mosi_i_28_n_0),
        .O(mosi_i_11_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    mosi_i_12
       (.I0(mosi_i_29_n_0),
        .I1(mosi_i_30_n_0),
        .I2(mosi_i_31_n_0),
        .I3(mosi_i_32_n_0),
        .O(mosi_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    mosi_i_13
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\rising_spi_process.mode_reg_n_0 ),
        .O(mosi_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mosi_i_14
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(read_data_ctr),
        .O(mosi_i_14_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_25
       (.I0(\addr_ctr_reg_n_0_[7] ),
        .I1(\addr_ctr_reg_n_0_[30] ),
        .I2(\addr_ctr_reg_n_0_[22] ),
        .I3(\addr_ctr_reg_n_0_[26] ),
        .O(mosi_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_26
       (.I0(\addr_ctr_reg_n_0_[16] ),
        .I1(\addr_ctr_reg_n_0_[19] ),
        .I2(\addr_ctr_reg_n_0_[10] ),
        .I3(\addr_ctr_reg_n_0_[12] ),
        .O(mosi_i_26_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_27
       (.I0(\addr_ctr_reg_n_0_[17] ),
        .I1(\addr_ctr_reg_n_0_[18] ),
        .I2(\addr_ctr_reg_n_0_[31] ),
        .I3(\addr_ctr_reg_n_0_[6] ),
        .O(mosi_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_28
       (.I0(\addr_ctr_reg_n_0_[28] ),
        .I1(\addr_ctr_reg_n_0_[29] ),
        .I2(\addr_ctr_reg_n_0_[13] ),
        .I3(\addr_ctr_reg_n_0_[21] ),
        .O(mosi_i_28_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_29
       (.I0(\addr_ctr_reg_n_0_[14] ),
        .I1(\addr_ctr_reg_n_0_[15] ),
        .I2(\addr_ctr_reg_n_0_[23] ),
        .I3(\addr_ctr_reg_n_0_[24] ),
        .O(mosi_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mosi_i_30
       (.I0(\addr_ctr_reg_n_0_[2] ),
        .I1(\addr_ctr_reg_n_0_[3] ),
        .I2(\addr_ctr_reg_n_0_[1] ),
        .I3(\addr_ctr_reg_n_0_[9] ),
        .O(mosi_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_31
       (.I0(\addr_ctr_reg_n_0_[4] ),
        .I1(\addr_ctr_reg_n_0_[5] ),
        .I2(\addr_ctr_reg_n_0_[0] ),
        .I3(\addr_ctr_reg_n_0_[11] ),
        .O(mosi_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mosi_i_32
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .I1(\addr_ctr_reg_n_0_[27] ),
        .I2(\addr_ctr_reg_n_0_[20] ),
        .I3(\addr_ctr_reg_n_0_[25] ),
        .O(mosi_i_32_n_0));
  FDCE mosi_reg
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17),
        .Q(mosi));
  main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI noip_ctrl_slave_lite_v1_0_S00_AXI_inst
       (.E(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14),
        .\FSM_onehot_SPIState_reg[0] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16),
        .\FSM_onehot_SPIState_reg[0]_0 ({spiflag,\FSM_onehot_SPIState_reg_n_0_[3] ,\FSM_onehot_SPIState_reg_n_0_[1] ,\FSM_onehot_SPIState_reg_n_0_[0] }),
        .\FSM_onehot_SPIState_reg[0]_1 (\FSM_onehot_SPIState[4]_i_2_n_0 ),
        .\FSM_onehot_SPIState_reg[0]_2 (\FSM_onehot_SPIState[4]_i_3_n_0 ),
        .\FSM_onehot_SPIState_reg[3] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17),
        .\FSM_sequential_StartupState_reg[2] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12),
        .Q({sensor_id,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10}),
        .StartupState(StartupState),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_bvalid_reg_0(axi_bvalid_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .mosi(mosi),
        .mosi_i_4_0({\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .mosi_reg(write_data_ctr[4:0]),
        .mosi_reg_0(mosi_i_11_n_0),
        .mosi_reg_1(mosi_i_12_n_0),
        .mosi_reg_2(mosi_i_13_n_0),
        .mosi_reg_3(mosi_i_14_n_0),
        .\rising_spi_process.mode_reg (\rising_spi_process.mode_reg_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[2]_0 (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15),
        .\slv_reg0_reg[3]_0 (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .\startup_process.id_reg[0] (\startup_process.id_reg_n_0_[0] ),
        .sw_enable_n(sw_enable_n),
        .\sw_enable_n_reg[0] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6),
        .\sw_enable_n_reg[1] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \pll_clk_en[0]_i_1 
       (.I0(StartupState[2]),
        .I1(StartupState[1]),
        .I2(\startup_process.id_reg_n_0_[0] ),
        .I3(StartupState[0]),
        .I4(\pll_clk_en_reg_n_0_[0] ),
        .O(\pll_clk_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \pll_clk_en[1]_i_1 
       (.I0(StartupState[0]),
        .I1(\startup_process.id_reg_n_0_[0] ),
        .I2(StartupState[2]),
        .I3(StartupState[1]),
        .I4(\pll_clk_en_reg_n_0_[1] ),
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
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    powerdownflag_reg
       (.CLR(1'b0),
        .D(s00_axi_aresetn),
        .G(s00_axi_aresetn),
        .GE(1'b1),
        .Q(powerdownflag));
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    readyflag_i_1
       (.I0(StartupState[1]),
        .I1(StartupState[0]),
        .I2(StartupState[2]),
        .I3(readyflag_reg_n_0),
        .O(readyflag_i_1_n_0));
  FDCE readyflag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(readyflag_i_1_n_0),
        .Q(readyflag_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \rising_spi_process.mode_reg 
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16),
        .Q(\rising_spi_process.mode_reg_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    sck_INST_0
       (.I0(clk_spi_in),
        .I1(sck_en_reg_n_0),
        .O(sck));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    sck_en_i_1
       (.I0(\FSM_onehot_SPIState_reg_n_0_[1] ),
        .I1(\FSM_onehot_SPIState[4]_i_2_n_0 ),
        .I2(sck_en_reg_n_0),
        .O(sck_en_i_1_n_0));
  FDCE sck_en_reg
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(sck_en_i_1_n_0),
        .Q(sck_en_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \send_data_inferred__0/i_ 
       (.I0(readyflag_reg_n_0),
        .I1(spiflag_reg_n_0),
        .I2(powerdownflag),
        .O(\send_data_inferred__0/i__n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[0] 
       (.CLR(s00_axi_aresetn),
        .D(\send_data_reg[0]_i_1_n_0 ),
        .G(\send_data_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \send_data_reg[0]_i_1 
       (.I0(readyflag_reg_n_0),
        .I1(powerdownflag),
        .O(\send_data_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[1] 
       (.CLR(s00_axi_aresetn),
        .D(readyflag_reg_n_0),
        .G(\send_data_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(s00_axi_rdata[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[2] 
       (.CLR(s00_axi_aresetn),
        .D(sensor_id[0]),
        .G(\send_data_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(s00_axi_rdata[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[3] 
       (.CLR(s00_axi_aresetn),
        .D(sensor_id[1]),
        .G(\send_data_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spiflag_i_1
       (.I0(spiflag),
        .I1(spiflag_reg_n_0),
        .O(spiflag_i_1_n_0));
  FDCE spiflag_reg
       (.C(clk_spi_in),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(spiflag_i_1_n_0),
        .Q(spiflag_reg_n_0));
  LUT6 #(
    .INIT(64'hEBFFFFFFEBFF0000)) 
    \ss_n[0]_i_1 
       (.I0(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .I1(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9),
        .I2(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10),
        .I3(axi_bvalid_reg),
        .I4(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I5(ss_n[0]),
        .O(\ss_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FFFFFFF9FFF0000)) 
    \ss_n[1]_i_1 
       (.I0(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9),
        .I1(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10),
        .I2(axi_bvalid_reg),
        .I3(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
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
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15),
        .Q(\startup_process.id_reg_n_0_[0] ));
  FDPE \sw_enable_n_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(sw_enable_n[0]));
  FDPE \sw_enable_n_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(sw_enable_n[1]));
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \vdd18_toggle[0]_i_1 
       (.I0(StartupState[0]),
        .I1(\startup_process.id_reg_n_0_[0] ),
        .I2(StartupState[1]),
        .I3(StartupState[2]),
        .I4(vdd18_toggle[0]),
        .O(\vdd18_toggle[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \vdd18_toggle[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(StartupState[0]),
        .I2(StartupState[1]),
        .I3(StartupState[2]),
        .I4(vdd18_toggle[1]),
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
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \vdd33_toggle[0]_i_1 
       (.I0(StartupState[2]),
        .I1(StartupState[1]),
        .I2(\startup_process.id_reg_n_0_[0] ),
        .I3(StartupState[0]),
        .I4(vdd33_toggle[0]),
        .O(\vdd33_toggle[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \vdd33_toggle[1]_i_1 
       (.I0(StartupState[2]),
        .I1(\startup_process.id_reg_n_0_[0] ),
        .I2(StartupState[1]),
        .I3(StartupState[0]),
        .I4(vdd33_toggle[1]),
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
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \vddpix_toggle[0]_i_1 
       (.I0(StartupState[2]),
        .I1(StartupState[1]),
        .I2(StartupState[0]),
        .I3(\startup_process.id_reg_n_0_[0] ),
        .I4(vddpix_toggle[0]),
        .O(\vddpix_toggle[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \vddpix_toggle[1]_i_1 
       (.I0(StartupState[2]),
        .I1(\startup_process.id_reg_n_0_[0] ),
        .I2(StartupState[0]),
        .I3(StartupState[1]),
        .I4(vddpix_toggle[1]),
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
        .O(in9[4:1]),
        .S({write_data_ctr0_carry_i_1_n_0,write_data_ctr0_carry_i_2_n_0,write_data_ctr0_carry_i_3_n_0,write_data_ctr0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 write_data_ctr0_carry__0
       (.CI(write_data_ctr0_carry_n_0),
        .CO({write_data_ctr0_carry__0_n_0,write_data_ctr0_carry__0_n_1,write_data_ctr0_carry__0_n_2,write_data_ctr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(write_data_ctr[8:5]),
        .O(in9[8:5]),
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
        .O(in9[12:9]),
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
        .O(in9[16:13]),
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
        .O(in9[20:17]),
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
        .O(in9[24:21]),
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
        .O(in9[28:25]),
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
        .O({NLW_write_data_ctr0_carry__6_O_UNCONNECTED[3],in9[31:29]}),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \write_data_ctr[0]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I2(write_data_ctr[0]),
        .O(\write_data_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[10]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[10]),
        .O(\write_data_ctr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[11]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[11]),
        .O(\write_data_ctr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[12]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[12]),
        .O(\write_data_ctr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[13]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[13]),
        .O(\write_data_ctr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[14]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[14]),
        .O(\write_data_ctr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[15]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[15]),
        .O(\write_data_ctr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[16]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[16]),
        .O(\write_data_ctr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[17]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[17]),
        .O(\write_data_ctr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[18]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[18]),
        .O(\write_data_ctr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[19]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[19]),
        .O(\write_data_ctr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \write_data_ctr[1]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in9[1]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .O(\write_data_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[20]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[20]),
        .O(\write_data_ctr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[21]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[21]),
        .O(\write_data_ctr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[22]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[22]),
        .O(\write_data_ctr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[23]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[23]),
        .O(\write_data_ctr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[24]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[24]),
        .O(\write_data_ctr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[25]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[25]),
        .O(\write_data_ctr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[26]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[26]),
        .O(\write_data_ctr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[27]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[27]),
        .O(\write_data_ctr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[28]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[28]),
        .O(\write_data_ctr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[29]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[29]),
        .O(\write_data_ctr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \write_data_ctr[2]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in9[2]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .O(\write_data_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[30]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[30]),
        .O(\write_data_ctr[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \write_data_ctr[31]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .O(write_data_ctr_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[31]_i_2 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[31]),
        .O(\write_data_ctr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \write_data_ctr[3]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[0] ),
        .I1(in9[3]),
        .I2(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .O(\write_data_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[4]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[4]),
        .O(\write_data_ctr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[5]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[5]),
        .O(\write_data_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[6]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[6]),
        .O(\write_data_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[7]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[7]),
        .O(\write_data_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[8]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[8]),
        .O(\write_data_ctr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_data_ctr[9]_i_1 
       (.I0(\FSM_onehot_SPIState_reg_n_0_[3] ),
        .I1(in9[9]),
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

(* ORIG_REF_NAME = "noip_ctrl_slave_lite_v1_0_S00_AXI" *) 
module main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    s00_axi_aresetn_0,
    axi_bvalid_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \sw_enable_n_reg[0] ,
    Q,
    \sw_enable_n_reg[1] ,
    \FSM_sequential_StartupState_reg[2] ,
    \slv_reg0_reg[3]_0 ,
    E,
    \slv_reg0_reg[2]_0 ,
    \FSM_onehot_SPIState_reg[0] ,
    \FSM_onehot_SPIState_reg[3] ,
    s00_axi_aclk,
    sw_enable_n,
    mosi_i_4_0,
    \FSM_onehot_SPIState_reg[0]_0 ,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    StartupState,
    \FSM_onehot_SPIState_reg[0]_1 ,
    \FSM_onehot_SPIState_reg[0]_2 ,
    s00_axi_bready,
    mosi_reg,
    mosi_reg_0,
    mosi_reg_1,
    mosi_reg_2,
    mosi_reg_3,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_rready,
    \startup_process.id_reg[0] ,
    \rising_spi_process.mode_reg ,
    mosi,
    s00_axi_aresetn,
    s00_axi_wdata);
  output axi_awready_reg_0;
  output s00_axi_aresetn_0;
  output axi_bvalid_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \sw_enable_n_reg[0] ;
  output [3:0]Q;
  output \sw_enable_n_reg[1] ;
  output \FSM_sequential_StartupState_reg[2] ;
  output \slv_reg0_reg[3]_0 ;
  output [0:0]E;
  output \slv_reg0_reg[2]_0 ;
  output \FSM_onehot_SPIState_reg[0] ;
  output \FSM_onehot_SPIState_reg[3] ;
  input s00_axi_aclk;
  input [0:1]sw_enable_n;
  input [3:0]mosi_i_4_0;
  input [3:0]\FSM_onehot_SPIState_reg[0]_0 ;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [2:0]StartupState;
  input \FSM_onehot_SPIState_reg[0]_1 ;
  input \FSM_onehot_SPIState_reg[0]_2 ;
  input s00_axi_bready;
  input [4:0]mosi_reg;
  input mosi_reg_0;
  input mosi_reg_1;
  input mosi_reg_2;
  input mosi_reg_3;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input \startup_process.id_reg[0] ;
  input \rising_spi_process.mode_reg ;
  input mosi;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;

  wire [0:0]E;
  wire \FSM_onehot_SPIState[4]_i_4_n_0 ;
  wire \FSM_onehot_SPIState_reg[0] ;
  wire [3:0]\FSM_onehot_SPIState_reg[0]_0 ;
  wire \FSM_onehot_SPIState_reg[0]_1 ;
  wire \FSM_onehot_SPIState_reg[0]_2 ;
  wire \FSM_onehot_SPIState_reg[3] ;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_StartupState_reg[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [3:0]Q;
  wire [2:0]StartupState;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire id;
  wire mosi;
  wire mosi_i_10_n_0;
  wire mosi_i_15_n_0;
  wire mosi_i_16_n_0;
  wire mosi_i_17_n_0;
  wire mosi_i_18_n_0;
  wire mosi_i_19_n_0;
  wire mosi_i_20_n_0;
  wire mosi_i_21_n_0;
  wire mosi_i_22_n_0;
  wire mosi_i_23_n_0;
  wire mosi_i_24_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire [3:0]mosi_i_4_0;
  wire mosi_i_4_n_0;
  wire mosi_i_9_n_0;
  wire [4:0]mosi_reg;
  wire mosi_reg_0;
  wire mosi_reg_1;
  wire mosi_reg_2;
  wire mosi_reg_3;
  wire mosi_reg_i_5_n_0;
  wire mosi_reg_i_6_n_0;
  wire mosi_reg_i_7_n_0;
  wire mosi_reg_i_8_n_0;
  wire [24:3]p_1_in;
  wire \rising_spi_process.mode_reg ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0_reg[2]_0 ;
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
  wire [8:0]spi_addr;
  wire \startup_process.id_reg[0] ;
  wire [1:0]state_read;
  wire [0:1]sw_enable_n;
  wire \sw_enable_n_reg[0] ;
  wire \sw_enable_n_reg[1] ;

  LUT6 #(
    .INIT(64'hFFEAFFFFFFEAFFEA)) 
    \FSM_onehot_SPIState[4]_i_1 
       (.I0(\FSM_onehot_SPIState_reg[0]_1 ),
        .I1(\FSM_onehot_SPIState_reg[0]_2 ),
        .I2(\FSM_onehot_SPIState_reg[0]_0 [1]),
        .I3(\FSM_onehot_SPIState_reg[0]_0 [3]),
        .I4(\FSM_onehot_SPIState[4]_i_4_n_0 ),
        .I5(\FSM_onehot_SPIState_reg[0]_0 [0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \FSM_onehot_SPIState[4]_i_4 
       (.I0(axi_bvalid_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_onehot_SPIState[4]_i_4_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
    .INIT(64'h88888888FEEEEEEE)) 
    \FSM_sequential_StartupState[0]_i_1 
       (.I0(StartupState[2]),
        .I1(StartupState[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(axi_bvalid_reg_0),
        .I5(StartupState[0]),
        .O(\FSM_sequential_StartupState_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
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
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
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
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_aresetn),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
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
    .INIT(64'hFCECFFFFFCECF000)) 
    axi_bvalid_i_1
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(axi_wready),
        .I2(s00_axi_wvalid),
        .I3(axi_bvalid_i_2_n_0),
        .I4(axi_bvalid_i_3_n_0),
        .I5(axi_bvalid_reg_0),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .O(axi_bvalid_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8F88800)) 
    axi_bvalid_i_3
       (.I0(axi_bvalid_reg_0),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_3_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
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
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    mosi_i_1
       (.I0(mosi_i_2_n_0),
        .I1(mosi_i_3_n_0),
        .I2(mosi_i_4_n_0),
        .I3(\FSM_onehot_SPIState_reg[0]_0 [2]),
        .I4(\FSM_onehot_SPIState_reg[0]_0 [1]),
        .I5(mosi),
        .O(\FSM_onehot_SPIState_reg[3] ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    mosi_i_10
       (.I0(mosi_i_4_0[3]),
        .I1(mosi_i_23_n_0),
        .I2(mosi_i_4_0[2]),
        .I3(mosi_i_24_n_0),
        .O(mosi_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_15
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(mosi_reg[1]),
        .I3(\slv_reg0_reg_n_0_[17] ),
        .I4(mosi_reg[0]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(mosi_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_16
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(mosi_reg[1]),
        .I3(\slv_reg0_reg_n_0_[21] ),
        .I4(mosi_reg[0]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(mosi_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_17
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(mosi_reg[1]),
        .I3(\slv_reg0_reg_n_0_[25] ),
        .I4(mosi_reg[0]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(mosi_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_18
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(mosi_reg[1]),
        .I3(\slv_reg0_reg_n_0_[29] ),
        .I4(mosi_reg[0]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(mosi_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_19
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(mosi_reg[1]),
        .I3(Q[1]),
        .I4(mosi_reg[0]),
        .I5(Q[0]),
        .O(mosi_i_19_n_0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    mosi_i_2
       (.I0(mosi_reg_i_5_n_0),
        .I1(mosi_reg[3]),
        .I2(mosi_reg_i_6_n_0),
        .I3(\FSM_onehot_SPIState_reg[0]_0 [2]),
        .I4(mosi_reg[4]),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_20
       (.I0(spi_addr[3]),
        .I1(spi_addr[2]),
        .I2(mosi_reg[1]),
        .I3(spi_addr[1]),
        .I4(mosi_reg[0]),
        .I5(spi_addr[0]),
        .O(mosi_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_21
       (.I0(spi_addr[7]),
        .I1(spi_addr[6]),
        .I2(mosi_reg[1]),
        .I3(spi_addr[5]),
        .I4(mosi_reg[0]),
        .I5(spi_addr[4]),
        .O(mosi_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_22
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(mosi_reg[1]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(mosi_reg[0]),
        .I5(spi_addr[8]),
        .O(mosi_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_23
       (.I0(spi_addr[3]),
        .I1(spi_addr[2]),
        .I2(mosi_i_4_0[1]),
        .I3(spi_addr[1]),
        .I4(mosi_i_4_0[0]),
        .I5(spi_addr[0]),
        .O(mosi_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_24
       (.I0(spi_addr[7]),
        .I1(spi_addr[6]),
        .I2(mosi_i_4_0[1]),
        .I3(spi_addr[5]),
        .I4(mosi_i_4_0[0]),
        .I5(spi_addr[4]),
        .O(mosi_i_24_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    mosi_i_3
       (.I0(mosi_reg_i_7_n_0),
        .I1(mosi_reg[3]),
        .I2(mosi_reg_i_8_n_0),
        .I3(mosi_reg[4]),
        .I4(\FSM_onehot_SPIState_reg[0]_0 [2]),
        .O(mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444F44)) 
    mosi_i_4
       (.I0(mosi_i_9_n_0),
        .I1(mosi_i_10_n_0),
        .I2(mosi_reg_0),
        .I3(mosi_reg_1),
        .I4(mosi_reg_2),
        .I5(mosi_reg_3),
        .O(mosi_i_4_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    mosi_i_9
       (.I0(spi_addr[8]),
        .I1(mosi_i_4_0[3]),
        .I2(\FSM_onehot_SPIState_reg[0]_0 [1]),
        .O(mosi_i_9_n_0));
  MUXF7 mosi_reg_i_5
       (.I0(mosi_i_15_n_0),
        .I1(mosi_i_16_n_0),
        .O(mosi_reg_i_5_n_0),
        .S(mosi_reg[2]));
  MUXF7 mosi_reg_i_6
       (.I0(mosi_i_17_n_0),
        .I1(mosi_i_18_n_0),
        .O(mosi_reg_i_6_n_0),
        .S(mosi_reg[2]));
  MUXF7 mosi_reg_i_7
       (.I0(mosi_i_19_n_0),
        .I1(mosi_i_20_n_0),
        .O(mosi_reg_i_7_n_0),
        .S(mosi_reg[2]));
  MUXF7 mosi_reg_i_8
       (.I0(mosi_i_21_n_0),
        .I1(mosi_i_22_n_0),
        .O(mosi_reg_i_8_n_0),
        .S(mosi_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFF0800)) 
    \rising_spi_process.mode_i_1 
       (.I0(\FSM_onehot_SPIState_reg[0]_0 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(axi_bvalid_reg_0),
        .I4(\rising_spi_process.mode_reg ),
        .O(\FSM_onehot_SPIState_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[16]));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(axi_awaddr[2]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[3]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[10]),
        .Q(spi_addr[6]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[11]),
        .Q(spi_addr[7]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[12]),
        .Q(spi_addr[8]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[16]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[24]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[4]),
        .Q(spi_addr[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[5]),
        .Q(spi_addr[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[6]),
        .Q(spi_addr[2]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[3]),
        .D(s00_axi_wdata[7]),
        .Q(spi_addr[3]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[8]),
        .Q(spi_addr[4]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[9]),
        .Q(spi_addr[5]),
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ss_n[0]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\slv_reg0_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \startup_process.id[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(id),
        .I3(\startup_process.id_reg[0] ),
        .O(\slv_reg0_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \sw_enable_n[0]_i_1 
       (.I0(sw_enable_n[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(id),
        .O(\sw_enable_n_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \sw_enable_n[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(axi_bvalid_reg_0),
        .I3(StartupState[1]),
        .I4(StartupState[2]),
        .I5(StartupState[0]),
        .O(id));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \sw_enable_n[1]_i_1 
       (.I0(sw_enable_n[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(id),
        .O(\sw_enable_n_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \vdd18_toggle[0]_i_2 
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
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
