--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Fri Jul 26 15:24:15 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target main_design_wrapper.bd
--Design      : main_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    I2C0_SCL : inout STD_LOGIC;
    I2C0_SDA : inout STD_LOGIC;
    clk_test_port : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_de : out STD_LOGIC;
    hdmi_hsync : out STD_LOGIC;
    hdmi_int : inout STD_LOGIC;
    hdmi_pclk : out STD_LOGIC;
    hdmi_vsync : out STD_LOGIC;
    lvds_clk_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_clk_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_clk_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_clk_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    noip_clk_pll : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_miso : in STD_LOGIC;
    noip_monitor0 : in STD_LOGIC_VECTOR ( 0 to 1 );
    noip_monitor1 : in STD_LOGIC_VECTOR ( 0 to 1 );
    noip_mosi : out STD_LOGIC;
    noip_mosi1 : out STD_LOGIC;
    noip_rst_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_sck : out STD_LOGIC;
    noip_sck1 : out STD_LOGIC;
    noip_ss : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_trigger : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 )
  );
end main_design_wrapper;

architecture STRUCTURE of main_design_wrapper is
  component main_design is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    noip_mosi : out STD_LOGIC;
    noip_miso : in STD_LOGIC;
    noip_sck : out STD_LOGIC;
    lvds_clk_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_clk_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    noip_ss : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_clk_pll : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_trigger : out STD_LOGIC_VECTOR ( 1 downto 0 );
    noip_monitor0 : in STD_LOGIC_VECTOR ( 0 to 1 );
    noip_monitor1 : in STD_LOGIC_VECTOR ( 0 to 1 );
    noip_rst_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    lvds_sync_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_0_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_0_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_clk_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_clk_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout0_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout1_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout2_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_dout3_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_1_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    lvds_sync_1_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_test_port : out STD_LOGIC;
    noip_mosi1 : out STD_LOGIC;
    noip_sck1 : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_vsync : out STD_LOGIC;
    hdmi_hsync : out STD_LOGIC;
    hdmi_de : out STD_LOGIC;
    hdmi_pclk : out STD_LOGIC;
    hdmi_int : inout STD_LOGIC;
    I2C0_SDA : inout STD_LOGIC;
    I2C0_SCL : inout STD_LOGIC
  );
  end component main_design;
begin
main_design_i: component main_design
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      I2C0_SCL => I2C0_SCL,
      I2C0_SDA => I2C0_SDA,
      clk_test_port => clk_test_port,
      hdmi_data(15 downto 0) => hdmi_data(15 downto 0),
      hdmi_de => hdmi_de,
      hdmi_hsync => hdmi_hsync,
      hdmi_int => hdmi_int,
      hdmi_pclk => hdmi_pclk,
      hdmi_vsync => hdmi_vsync,
      lvds_clk_0_n(0) => lvds_clk_0_n(0),
      lvds_clk_0_p(0) => lvds_clk_0_p(0),
      lvds_clk_1_n(0) => lvds_clk_1_n(0),
      lvds_clk_1_p(0) => lvds_clk_1_p(0),
      lvds_dout0_0_n(0) => lvds_dout0_0_n(0),
      lvds_dout0_0_p(0) => lvds_dout0_0_p(0),
      lvds_dout0_1_n(0) => lvds_dout0_1_n(0),
      lvds_dout0_1_p(0) => lvds_dout0_1_p(0),
      lvds_dout1_0_n(0) => lvds_dout1_0_n(0),
      lvds_dout1_0_p(0) => lvds_dout1_0_p(0),
      lvds_dout1_1_n(0) => lvds_dout1_1_n(0),
      lvds_dout1_1_p(0) => lvds_dout1_1_p(0),
      lvds_dout2_0_n(0) => lvds_dout2_0_n(0),
      lvds_dout2_0_p(0) => lvds_dout2_0_p(0),
      lvds_dout2_1_n(0) => lvds_dout2_1_n(0),
      lvds_dout2_1_p(0) => lvds_dout2_1_p(0),
      lvds_dout3_0_n(0) => lvds_dout3_0_n(0),
      lvds_dout3_0_p(0) => lvds_dout3_0_p(0),
      lvds_dout3_1_n(0) => lvds_dout3_1_n(0),
      lvds_dout3_1_p(0) => lvds_dout3_1_p(0),
      lvds_sync_0_n(0) => lvds_sync_0_n(0),
      lvds_sync_0_p(0) => lvds_sync_0_p(0),
      lvds_sync_1_n(0) => lvds_sync_1_n(0),
      lvds_sync_1_p(0) => lvds_sync_1_p(0),
      noip_clk_pll(0 to 1) => noip_clk_pll(0 to 1),
      noip_miso => noip_miso,
      noip_monitor0(0 to 1) => noip_monitor0(0 to 1),
      noip_monitor1(0 to 1) => noip_monitor1(0 to 1),
      noip_mosi => noip_mosi,
      noip_mosi1 => noip_mosi1,
      noip_rst_n(0 to 1) => noip_rst_n(0 to 1),
      noip_sck => noip_sck,
      noip_sck1 => noip_sck1,
      noip_ss(0 to 1) => noip_ss(0 to 1),
      noip_trigger(1 downto 0) => noip_trigger(1 downto 0),
      sw_enable_n(0 to 1) => sw_enable_n(0 to 1),
      vdd18_toggle(0 to 1) => vdd18_toggle(0 to 1),
      vdd33_toggle(0 to 1) => vdd33_toggle(0 to 1),
      vddpix_toggle(0 to 1) => vddpix_toggle(0 to 1)
    );
end STRUCTURE;
