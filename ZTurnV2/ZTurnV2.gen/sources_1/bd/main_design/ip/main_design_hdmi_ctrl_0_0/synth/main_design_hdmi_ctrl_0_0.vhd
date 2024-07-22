-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:hdmi_ctrl:1.0
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_design_hdmi_ctrl_0_0 IS
  PORT (
    hdmi_pclk : OUT STD_LOGIC;
    hdmi_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    hdmi_vsync : OUT STD_LOGIC;
    hdmi_hsync : OUT STD_LOGIC;
    hdmi_de : OUT STD_LOGIC;
    hdmi_int : INOUT STD_LOGIC;
    s00_axis_aclk : IN STD_LOGIC;
    s00_axis_aresetn : IN STD_LOGIC;
    s00_axis_tready : OUT STD_LOGIC;
    s00_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axis_tlast : IN STD_LOGIC;
    s00_axis_tvalid : IN STD_LOGIC;
    s01_axis_aclk : IN STD_LOGIC;
    s01_axis_aresetn : IN STD_LOGIC;
    s01_axis_tready : OUT STD_LOGIC;
    s01_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s01_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axis_tlast : IN STD_LOGIC;
    s01_axis_tvalid : IN STD_LOGIC
  );
END main_design_hdmi_ctrl_0_0;

ARCHITECTURE main_design_hdmi_ctrl_0_0_arch OF main_design_hdmi_ctrl_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_design_hdmi_ctrl_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT hdmi_ctrl IS
    GENERIC (
      C_S01_AXIS_TDATA_WIDTH : INTEGER;
      C_S00_AXIS_TDATA_WIDTH : INTEGER
    );
    PORT (
      hdmi_pclk : OUT STD_LOGIC;
      hdmi_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      hdmi_vsync : OUT STD_LOGIC;
      hdmi_hsync : OUT STD_LOGIC;
      hdmi_de : OUT STD_LOGIC;
      hdmi_int : INOUT STD_LOGIC;
      s00_axis_aclk : IN STD_LOGIC;
      s00_axis_aresetn : IN STD_LOGIC;
      s00_axis_tready : OUT STD_LOGIC;
      s00_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axis_tlast : IN STD_LOGIC;
      s00_axis_tvalid : IN STD_LOGIC;
      s01_axis_aclk : IN STD_LOGIC;
      s01_axis_aresetn : IN STD_LOGIC;
      s01_axis_tready : OUT STD_LOGIC;
      s01_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s01_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axis_tlast : IN STD_LOGIC;
      s01_axis_tvalid : IN STD_LOGIC
    );
  END COMPONENT hdmi_ctrl;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_design_hdmi_ctrl_0_0_arch: ARCHITECTURE IS "hdmi_ctrl,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_design_hdmi_ctrl_0_0_arch : ARCHITECTURE IS "main_design_hdmi_ctrl_0_0,hdmi_ctrl,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF hdmi_data: SIGNAL IS "xilinx.com:interface:hdmi:1.0 HDMI DATA";
  ATTRIBUTE X_INTERFACE_INFO OF hdmi_de: SIGNAL IS "xilinx.com:interface:hdmi:1.0 HDMI DE";
  ATTRIBUTE X_INTERFACE_INFO OF hdmi_hsync: SIGNAL IS "xilinx.com:interface:hdmi:1.0 HDMI HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF hdmi_pclk: SIGNAL IS "xilinx.com:interface:hdmi:1.0 HDMI CLK";
  ATTRIBUTE X_INTERFACE_INFO OF hdmi_vsync: SIGNAL IS "xilinx.com:interface:hdmi:1.0 HDMI VSYNC";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_tready: SIGNAL IS "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axis_aclk: SIGNAL IS "XIL_INTERFACENAME S01_AXIS_CLK, ASSOCIATED_BUSIF S01_AXIS, ASSOCIATED_RESET s01_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S01_AXIS_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME S01_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S01_AXIS_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axis_tready: SIGNAL IS "XIL_INTERFACENAME S01_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S01_AXIS TVALID";
BEGIN
  U0 : hdmi_ctrl
    GENERIC MAP (
      C_S01_AXIS_TDATA_WIDTH => 32,
      C_S00_AXIS_TDATA_WIDTH => 32
    )
    PORT MAP (
      hdmi_pclk => hdmi_pclk,
      hdmi_data => hdmi_data,
      hdmi_vsync => hdmi_vsync,
      hdmi_hsync => hdmi_hsync,
      hdmi_de => hdmi_de,
      hdmi_int => hdmi_int,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tdata => s00_axis_tdata,
      s00_axis_tstrb => s00_axis_tstrb,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      s01_axis_aclk => s01_axis_aclk,
      s01_axis_aresetn => s01_axis_aresetn,
      s01_axis_tready => s01_axis_tready,
      s01_axis_tdata => s01_axis_tdata,
      s01_axis_tstrb => s01_axis_tstrb,
      s01_axis_tlast => s01_axis_tlast,
      s01_axis_tvalid => s01_axis_tvalid
    );
END main_design_hdmi_ctrl_0_0_arch;
