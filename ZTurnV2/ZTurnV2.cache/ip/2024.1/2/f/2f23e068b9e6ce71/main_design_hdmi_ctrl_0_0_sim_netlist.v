// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Jul 18 15:34:58 2024
// Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ main_design_hdmi_ctrl_0_0_sim_netlist.v
// Design      : main_design_hdmi_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl
   (hdmi_data,
    s00_axis_tready,
    s01_axis_tready,
    s00_axis_aresetn,
    s00_axis_tvalid,
    s00_axis_tlast,
    s01_axis_tvalid,
    s01_axis_aresetn,
    s01_axis_tlast,
    s00_axis_aclk,
    s01_axis_aclk);
  output [0:0]hdmi_data;
  output s00_axis_tready;
  output s01_axis_tready;
  input s00_axis_aresetn;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input s01_axis_tvalid;
  input s01_axis_aresetn;
  input s01_axis_tlast;
  input s00_axis_aclk;
  input s01_axis_aclk;

  wire [0:0]hdmi_data;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s01_axis_aclk;
  wire s01_axis_aresetn;
  wire s01_axis_tlast;
  wire s01_axis_tready;
  wire s01_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S00_AXIS hdmi_ctrl_slave_stream_v1_0_S00_AXIS_inst
       (.s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S01_AXIS hdmi_ctrl_slave_stream_v1_0_S01_AXIS_inst
       (.s01_axis_aclk(s01_axis_aclk),
        .s01_axis_aresetn(s01_axis_aresetn),
        .s01_axis_tlast(s01_axis_tlast),
        .s01_axis_tready(s01_axis_tready),
        .s01_axis_tvalid(s01_axis_tvalid));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \red_reg[4] 
       (.CLR(1'b0),
        .D(s00_axis_aresetn),
        .G(s00_axis_aresetn),
        .GE(1'b1),
        .Q(hdmi_data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S00_AXIS
   (s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_tlast);
  output s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input s00_axis_tlast;

  wire mst_exec_state_i_1_n_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire writes_done;
  wire writes_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(s00_axis_tready),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(s00_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(s00_axis_tvalid),
        .I2(s00_axis_tready),
        .I3(s00_axis_tlast),
        .I4(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S01_AXIS
   (s01_axis_tready,
    s01_axis_aclk,
    s01_axis_tvalid,
    s01_axis_aresetn,
    s01_axis_tlast);
  output s01_axis_tready;
  input s01_axis_aclk;
  input s01_axis_tvalid;
  input s01_axis_aresetn;
  input s01_axis_tlast;

  wire mst_exec_state_i_1__0_n_0;
  wire s01_axis_aclk;
  wire s01_axis_aresetn;
  wire s01_axis_tlast;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire writes_done_i_1__0_n_0;
  wire writes_done_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1__0
       (.I0(s01_axis_tvalid),
        .I1(s01_axis_tready),
        .I2(writes_done_reg_n_0),
        .I3(s01_axis_aresetn),
        .O(mst_exec_state_i_1__0_n_0));
  FDRE mst_exec_state_reg
       (.C(s01_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1__0_n_0),
        .Q(s01_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    writes_done_i_1__0
       (.I0(writes_done_reg_n_0),
        .I1(s01_axis_tvalid),
        .I2(s01_axis_tready),
        .I3(s01_axis_tlast),
        .I4(s01_axis_aresetn),
        .O(writes_done_i_1__0_n_0));
  FDRE writes_done_reg
       (.C(s01_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1__0_n_0),
        .Q(writes_done_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "main_design_hdmi_ctrl_0_0,hdmi_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "hdmi_ctrl,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (hdmi_pclk,
    hdmi_data,
    hdmi_vsync,
    hdmi_hsync,
    hdmi_de,
    hdmi_int,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    s01_axis_aclk,
    s01_axis_aresetn,
    s01_axis_tready,
    s01_axis_tdata,
    s01_axis_tstrb,
    s01_axis_tlast,
    s01_axis_tvalid);
  (* x_interface_info = "xilinx.com:interface:hdmi:1.0 HDMI CLK" *) output hdmi_pclk;
  (* x_interface_info = "xilinx.com:interface:hdmi:1.0 HDMI DATA" *) output [15:0]hdmi_data;
  (* x_interface_info = "xilinx.com:interface:hdmi:1.0 HDMI VSYNC" *) output hdmi_vsync;
  (* x_interface_info = "xilinx.com:interface:hdmi:1.0 HDMI HSYNC" *) output hdmi_hsync;
  (* x_interface_info = "xilinx.com:interface:hdmi:1.0 HDMI DE" *) output hdmi_de;
  inout hdmi_int;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S01_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S01_AXIS_CLK, ASSOCIATED_BUSIF S01_AXIS, ASSOCIATED_RESET s01_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s01_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S01_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S01_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s01_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S01_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s01_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXIS TDATA" *) input [31:0]s01_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXIS TSTRB" *) input [3:0]s01_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXIS TLAST" *) input s01_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S01_AXIS TVALID" *) input s01_axis_tvalid;

  wire \<const0> ;
  wire [14:14]\^hdmi_data ;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s01_axis_aclk;
  wire s01_axis_aresetn;
  wire s01_axis_tlast;
  wire s01_axis_tready;
  wire s01_axis_tvalid;

  assign hdmi_data[15] = \^hdmi_data [14];
  assign hdmi_data[14] = \^hdmi_data [14];
  assign hdmi_data[13] = \^hdmi_data [14];
  assign hdmi_data[12] = \^hdmi_data [14];
  assign hdmi_data[11] = \^hdmi_data [14];
  assign hdmi_data[10] = \^hdmi_data [14];
  assign hdmi_data[9] = \^hdmi_data [14];
  assign hdmi_data[8] = \^hdmi_data [14];
  assign hdmi_data[7] = \^hdmi_data [14];
  assign hdmi_data[6] = \^hdmi_data [14];
  assign hdmi_data[5] = \^hdmi_data [14];
  assign hdmi_data[4] = \^hdmi_data [14];
  assign hdmi_data[3] = \^hdmi_data [14];
  assign hdmi_data[2] = \^hdmi_data [14];
  assign hdmi_data[1] = \^hdmi_data [14];
  assign hdmi_data[0] = \^hdmi_data [14];
  assign hdmi_de = \<const0> ;
  assign hdmi_hsync = \<const0> ;
  assign hdmi_pclk = s00_axis_aclk;
  assign hdmi_vsync = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl U0
       (.hdmi_data(\^hdmi_data ),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s01_axis_aclk(s01_axis_aclk),
        .s01_axis_aresetn(s01_axis_aresetn),
        .s01_axis_tlast(s01_axis_tlast),
        .s01_axis_tready(s01_axis_tready),
        .s01_axis_tvalid(s01_axis_tvalid));
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
