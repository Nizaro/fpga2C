// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Jun 20 19:39:27 2024
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
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
  wire [0:1]ss_n;
  wire [0:1]sw_enable_n;
  wire [0:1]vdd18_toggle;
  wire [0:1]vdd33_toggle;
  wire [0:1]vddpix_toggle;

  assign mosi = \<const0> ;
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
  assign sck = \<const0> ;
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
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata[3:0]),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb[0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .ss_n(ss_n),
        .sw_enable_n(sw_enable_n),
        .vdd18_toggle(vdd18_toggle),
        .vdd33_toggle(vdd33_toggle),
        .vddpix_toggle(vddpix_toggle));
endmodule

(* ORIG_REF_NAME = "noip_ctrl" *) 
module main_design_noip_ctrl_0_0_noip_ctrl
   (sw_enable_n,
    axi_bvalid_reg,
    axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    clk_pll_out,
    s00_axi_rdata,
    vdd18_toggle,
    vdd33_toggle,
    vddpix_toggle,
    ss_n,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    clk_72M_pll,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    clk_spi_in,
    s00_axi_bready,
    s00_axi_wstrb);
  output [0:1]sw_enable_n;
  output axi_bvalid_reg;
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [0:1]clk_pll_out;
  output [3:0]s00_axi_rdata;
  output [0:1]vdd18_toggle;
  output [0:1]vdd33_toggle;
  output [0:1]vddpix_toggle;
  output [0:1]ss_n;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input clk_72M_pll;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input [3:0]s00_axi_wdata;
  input clk_spi_in;
  input s00_axi_bready;
  input [0:0]s00_axi_wstrb;

  wire \FSM_sequential_StartupState[1]_i_1_n_0 ;
  wire \FSM_sequential_StartupState[2]_i_1_n_0 ;
  wire [2:0]StartupState;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_bvalid_reg;
  wire axi_rvalid_reg;
  wire clk_72M_pll;
  wire [0:1]clk_pll_out;
  wire clk_spi_in;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6;
  wire noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_7;
  wire \pll_clk_en[0]_i_1_n_0 ;
  wire \pll_clk_en[1]_i_1_n_0 ;
  wire \pll_clk_en_reg_n_0_[0] ;
  wire \pll_clk_en_reg_n_0_[1] ;
  wire powerdownflag;
  wire readyflag;
  wire readyflag_i_1_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [3:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [3:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [0:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \send_data_reg[0]_i_1_n_0 ;
  wire \send_data_reg[1]_i_1_n_0 ;
  wire [1:0]sensor_id;
  wire [0:1]ss_n;
  wire \startup_process.id[0]_i_2_n_0 ;
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

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE6)) 
    \FSM_sequential_StartupState[1]_i_1 
       (.I0(StartupState[0]),
        .I1(StartupState[1]),
        .I2(StartupState[2]),
        .O(\FSM_sequential_StartupState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_pll_out[0]_INST_0 
       (.I0(\pll_clk_en_reg_n_0_[0] ),
        .I1(clk_72M_pll),
        .O(clk_pll_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_pll_out[1]_INST_0 
       (.I0(\pll_clk_en_reg_n_0_[1] ),
        .I1(clk_72M_pll),
        .O(clk_pll_out[1]));
  main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI noip_ctrl_slave_lite_v1_0_S00_AXI_inst
       (.\FSM_sequential_StartupState_reg[2] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11),
        .Q(sensor_id),
        .SR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .StartupState(StartupState),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_bvalid_reg_0(axi_bvalid_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[0]_0 (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .\slv_reg0_reg[2]_0 (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12),
        .\slv_reg0_reg[3]_0 (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_7),
        .\startup_process.id_reg[0] (\startup_process.id[0]_i_2_n_0 ),
        .\startup_process.id_reg[0]_0 (\startup_process.id_reg_n_0_[0] ),
        .sw_enable_n(sw_enable_n),
        .\sw_enable_n_reg[0] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6),
        .\sw_enable_n_reg[1] (noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \pll_clk_en[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(StartupState[2]),
        .I2(StartupState[1]),
        .I3(StartupState[0]),
        .I4(\pll_clk_en_reg_n_0_[0] ),
        .O(\pll_clk_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \pll_clk_en[1]_i_1 
       (.I0(StartupState[2]),
        .I1(\startup_process.id_reg_n_0_[0] ),
        .I2(StartupState[1]),
        .I3(StartupState[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    readyflag_i_1
       (.I0(StartupState[1]),
        .I1(StartupState[2]),
        .I2(StartupState[0]),
        .I3(readyflag),
        .O(readyflag_i_1_n_0));
  FDCE readyflag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(readyflag_i_1_n_0),
        .Q(readyflag));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[0] 
       (.CLR(s00_axi_aresetn),
        .D(\send_data_reg[0]_i_1_n_0 ),
        .G(\send_data_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s00_axi_rdata[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \send_data_reg[0]_i_1 
       (.I0(readyflag),
        .I1(powerdownflag),
        .O(\send_data_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[1] 
       (.CLR(s00_axi_aresetn),
        .D(readyflag),
        .G(\send_data_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \send_data_reg[1]_i_1 
       (.I0(powerdownflag),
        .I1(readyflag),
        .O(\send_data_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[2] 
       (.CLR(s00_axi_aresetn),
        .D(sensor_id[0]),
        .G(1'b1),
        .GE(1'b1),
        .Q(s00_axi_rdata[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send_data_reg[3] 
       (.CLR(s00_axi_aresetn),
        .D(sensor_id[1]),
        .G(1'b1),
        .GE(1'b1),
        .Q(s00_axi_rdata[3]));
  FDPE \ss_n_reg[0] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(ss_n[0]));
  FDPE \ss_n_reg[1] 
       (.C(clk_spi_in),
        .CE(1'b1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_7),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(ss_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \startup_process.id[0]_i_2 
       (.I0(StartupState[2]),
        .I1(StartupState[0]),
        .O(\startup_process.id[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \startup_process.id_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12),
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
        .D(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10),
        .PRE(noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .Q(sw_enable_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \vdd18_toggle[0]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(StartupState[0]),
        .I2(StartupState[2]),
        .I3(StartupState[1]),
        .I4(vdd18_toggle[0]),
        .O(\vdd18_toggle[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \vdd18_toggle[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(StartupState[0]),
        .I2(StartupState[2]),
        .I3(StartupState[1]),
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
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(StartupState[1]),
        .I2(StartupState[2]),
        .I3(StartupState[0]),
        .I4(vdd33_toggle[0]),
        .O(\vdd33_toggle[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \vdd33_toggle[1]_i_1 
       (.I0(\startup_process.id_reg_n_0_[0] ),
        .I1(StartupState[1]),
        .I2(StartupState[2]),
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
    .INIT(32'hFFFF0008)) 
    \vddpix_toggle[0]_i_1 
       (.I0(StartupState[1]),
        .I1(StartupState[0]),
        .I2(StartupState[2]),
        .I3(\startup_process.id_reg_n_0_[0] ),
        .I4(vddpix_toggle[0]),
        .O(\vddpix_toggle[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \vddpix_toggle[1]_i_1 
       (.I0(StartupState[1]),
        .I1(StartupState[0]),
        .I2(StartupState[2]),
        .I3(\startup_process.id_reg_n_0_[0] ),
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
endmodule

(* ORIG_REF_NAME = "noip_ctrl_slave_lite_v1_0_S00_AXI" *) 
module main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    axi_bvalid_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \sw_enable_n_reg[0] ,
    \slv_reg0_reg[3]_0 ,
    Q,
    \sw_enable_n_reg[1] ,
    \FSM_sequential_StartupState_reg[2] ,
    \slv_reg0_reg[2]_0 ,
    \slv_reg0_reg[0]_0 ,
    s00_axi_aclk,
    sw_enable_n,
    StartupState,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    \startup_process.id_reg[0] ,
    \startup_process.id_reg[0]_0 ,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output [0:0]SR;
  output axi_bvalid_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \sw_enable_n_reg[0] ;
  output \slv_reg0_reg[3]_0 ;
  output [1:0]Q;
  output \sw_enable_n_reg[1] ;
  output \FSM_sequential_StartupState_reg[2] ;
  output \slv_reg0_reg[2]_0 ;
  output \slv_reg0_reg[0]_0 ;
  input s00_axi_aclk;
  input [0:1]sw_enable_n;
  input [2:0]StartupState;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input \startup_process.id_reg[0] ;
  input \startup_process.id_reg[0]_0 ;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input [3:0]s00_axi_wdata;
  input [0:0]s00_axi_wstrb;

  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_StartupState_reg[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
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
  wire id0__1;
  wire [3:3]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_rready;
  wire [3:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [0:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[3]_i_2_n_0 ;
  wire \slv_reg0_reg[0]_0 ;
  wire \slv_reg0_reg[2]_0 ;
  wire \slv_reg0_reg[3]_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \startup_process.id_reg[0] ;
  wire \startup_process.id_reg[0]_0 ;
  wire [1:0]state_read;
  wire [0:1]sw_enable_n;
  wire \sw_enable_n[0]_i_2_n_0 ;
  wire \sw_enable_n_reg[0] ;
  wire \sw_enable_n_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFBF00)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_wready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
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
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h88888888FEEEEEEE)) 
    \FSM_sequential_StartupState[0]_i_1 
       (.I0(StartupState[2]),
        .I1(StartupState[1]),
        .I2(\slv_reg0_reg_n_0_[0] ),
        .I3(\slv_reg0_reg_n_0_[1] ),
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
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(SR));
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
        .R(SR));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
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
    .INIT(64'hFAFFEAEAFFFFEAEA)) 
    axi_awready_i_1
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_awready_reg_0),
        .I5(s00_axi_awvalid),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAA8ABA8BB88BB88)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(axi_bvalid_i_3_n_0),
        .I2(s00_axi_wvalid),
        .I3(axi_bvalid_reg_0),
        .I4(s00_axi_bready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAEAEAEAEAEAEAEA)) 
    axi_bvalid_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_awvalid),
        .I5(axi_awready_reg_0),
        .O(axi_bvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA80808080808080)) 
    axi_bvalid_i_3
       (.I0(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I1(axi_bvalid_reg_0),
        .I2(s00_axi_bready),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_3_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(SR));
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
        .R(SR));
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
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[3]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[3]_i_2_n_0 ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \slv_reg0[3]_i_2 
       (.I0(s00_axi_wstrb),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_awaddr[1]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg0[3]_i_2_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[3]),
        .Q(Q[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h9F9F9FFF)) 
    \ss_n[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(axi_bvalid_reg_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\slv_reg0_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEEFFFFF)) 
    \ss_n[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\slv_reg0_reg_n_0_[0] ),
        .I3(\slv_reg0_reg_n_0_[1] ),
        .I4(axi_bvalid_reg_0),
        .O(\slv_reg0_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000E00)) 
    \startup_process.id[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\startup_process.id_reg[0] ),
        .I3(id0__1),
        .I4(StartupState[1]),
        .I5(\startup_process.id_reg[0]_0 ),
        .O(\slv_reg0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \sw_enable_n[0]_i_1 
       (.I0(sw_enable_n[0]),
        .I1(StartupState[1]),
        .I2(\sw_enable_n[0]_i_2_n_0 ),
        .I3(id0__1),
        .I4(StartupState[2]),
        .I5(StartupState[0]),
        .O(\sw_enable_n_reg[0] ));
  LUT2 #(
    .INIT(4'hE)) 
    \sw_enable_n[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\sw_enable_n[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sw_enable_n[0]_i_3 
       (.I0(axi_bvalid_reg_0),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(\slv_reg0_reg_n_0_[0] ),
        .O(id0__1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \sw_enable_n[1]_i_1 
       (.I0(sw_enable_n[1]),
        .I1(StartupState[1]),
        .I2(\sw_enable_n[0]_i_2_n_0 ),
        .I3(id0__1),
        .I4(StartupState[2]),
        .I5(StartupState[0]),
        .O(\sw_enable_n_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \vdd18_toggle[0]_i_2 
       (.I0(s00_axi_aresetn),
        .O(SR));
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
