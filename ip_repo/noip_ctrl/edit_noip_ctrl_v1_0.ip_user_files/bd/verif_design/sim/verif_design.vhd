--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Mon Jul 15 10:00:34 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target verif_design.bd
--Design      : verif_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity verif_design is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_72M_pll_0 : in STD_LOGIC;
    clk_pll_out_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_spi_in_0 : in STD_LOGIC;
    noip_reset_n_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_spi_0_io1_i : in STD_LOGIC;
    noip_spi_0_io1_o : out STD_LOGIC;
    noip_spi_0_sck_o : out STD_LOGIC;
    noip_spi_0_ss_o : out STD_LOGIC_VECTOR ( 0 to 1 );
    reset_rtl_0 : in STD_LOGIC;
    sw_enable_n_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of verif_design : entity is "verif_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=verif_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=6,da_clkrst_cnt=3,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of verif_design : entity is "verif_design.hwdef";
end verif_design;

architecture STRUCTURE of verif_design is
  component verif_design_noip_ctrl_0_0 is
  port (
    clk_72M_pll : in STD_LOGIC;
    clk_pll_out : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_reset_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_spi_in : in STD_LOGIC;
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    sck : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component verif_design_noip_ctrl_0_0;
  component verif_design_axi_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component verif_design_axi_vip_0_0;
  component verif_design_clk_wiz_2 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component verif_design_clk_wiz_2;
  component verif_design_rst_clk_wiz_100M_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component verif_design_rst_clk_wiz_100M_2;
  signal Net : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_WVALID : STD_LOGIC;
  signal clk_100MHz_1 : STD_LOGIC;
  signal clk_72M_pll_0_1 : STD_LOGIC;
  signal clk_spi_in_0_1 : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal noip_ctrl_0_clk_pll_out : STD_LOGIC_VECTOR ( 0 to 1 );
  signal noip_ctrl_0_noip_reset_n : STD_LOGIC_VECTOR ( 0 to 1 );
  signal noip_ctrl_0_noip_spi_IO1_I : STD_LOGIC;
  signal noip_ctrl_0_noip_spi_IO1_O : STD_LOGIC;
  signal noip_ctrl_0_noip_spi_SCK_O : STD_LOGIC;
  signal noip_ctrl_0_noip_spi_SS_O : STD_LOGIC_VECTOR ( 0 to 1 );
  signal noip_ctrl_0_sw_enable_n : STD_LOGIC_VECTOR ( 0 to 1 );
  signal noip_ctrl_0_vdd18_toggle : STD_LOGIC_VECTOR ( 0 to 1 );
  signal noip_ctrl_0_vdd33_toggle : STD_LOGIC_VECTOR ( 0 to 1 );
  signal noip_ctrl_0_vddpix_toggle : STD_LOGIC_VECTOR ( 0 to 1 );
  signal reset_rtl_0_1 : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN verif_design_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of noip_spi_0_io1_i : signal is "xilinx.com:interface:spi:1.0 noip_spi_0 IO1_I";
  attribute X_INTERFACE_INFO of noip_spi_0_io1_o : signal is "xilinx.com:interface:spi:1.0 noip_spi_0 IO1_O";
  attribute X_INTERFACE_INFO of noip_spi_0_sck_o : signal is "xilinx.com:interface:spi:1.0 noip_spi_0 SCK_O";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of noip_spi_0_ss_o : signal is "xilinx.com:interface:spi:1.0 noip_spi_0 SS_O";
begin
  clk_100MHz_1 <= clk_100MHz;
  clk_72M_pll_0_1 <= clk_72M_pll_0;
  clk_pll_out_0(0 to 1) <= noip_ctrl_0_clk_pll_out(0 to 1);
  clk_spi_in_0_1 <= clk_spi_in_0;
  noip_ctrl_0_noip_spi_IO1_I <= noip_spi_0_io1_i;
  noip_reset_n_0(0 to 1) <= noip_ctrl_0_noip_reset_n(0 to 1);
  noip_spi_0_io1_o <= noip_ctrl_0_noip_spi_IO1_O;
  noip_spi_0_sck_o <= noip_ctrl_0_noip_spi_SCK_O;
  noip_spi_0_ss_o(0 to 1) <= noip_ctrl_0_noip_spi_SS_O(0 to 1);
  reset_rtl_0_1 <= reset_rtl_0;
  sw_enable_n_0(0 to 1) <= noip_ctrl_0_sw_enable_n(0 to 1);
  vdd18_toggle_0(0 to 1) <= noip_ctrl_0_vdd18_toggle(0 to 1);
  vdd33_toggle_0(0 to 1) <= noip_ctrl_0_vdd33_toggle(0 to 1);
  vddpix_toggle_0(0 to 1) <= noip_ctrl_0_vddpix_toggle(0 to 1);
axi_vip_0: component verif_design_axi_vip_0_0
     port map (
      aclk => Net,
      aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      m_axi_araddr(31 downto 0) => axi_vip_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_0_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_0_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_0_M_AXI_AWVALID,
      m_axi_bready => axi_vip_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_vip_0_M_AXI_RDATA(31 downto 0),
      m_axi_rready => axi_vip_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_vip_0_M_AXI_WDATA(31 downto 0),
      m_axi_wready => axi_vip_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_vip_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_vip_0_M_AXI_WVALID
    );
clk_wiz: component verif_design_clk_wiz_2
     port map (
      clk_in1 => clk_100MHz_1,
      clk_out1 => Net,
      locked => clk_wiz_locked,
      reset => reset_rtl_0_1
    );
noip_ctrl_0: component verif_design_noip_ctrl_0_0
     port map (
      clk_72M_pll => clk_72M_pll_0_1,
      clk_pll_out(0 to 1) => noip_ctrl_0_clk_pll_out(0 to 1),
      clk_spi_in => clk_spi_in_0_1,
      miso => noip_ctrl_0_noip_spi_IO1_I,
      mosi => noip_ctrl_0_noip_spi_IO1_O,
      noip_reset_n(0 to 1) => noip_ctrl_0_noip_reset_n(0 to 1),
      s00_axi_aclk => Net,
      s00_axi_araddr(3 downto 0) => axi_vip_0_M_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_vip_0_M_AXI_ARREADY,
      s00_axi_arvalid => axi_vip_0_M_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_vip_0_M_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_vip_0_M_AXI_AWREADY,
      s00_axi_awvalid => axi_vip_0_M_AXI_AWVALID,
      s00_axi_bready => axi_vip_0_M_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_vip_0_M_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_vip_0_M_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_vip_0_M_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_vip_0_M_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_vip_0_M_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_vip_0_M_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_vip_0_M_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_vip_0_M_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_vip_0_M_AXI_WVALID,
      sck => noip_ctrl_0_noip_spi_SCK_O,
      ss_n(0 to 1) => noip_ctrl_0_noip_spi_SS_O(0 to 1),
      sw_enable_n(0 to 1) => noip_ctrl_0_sw_enable_n(0 to 1),
      vdd18_toggle(0 to 1) => noip_ctrl_0_vdd18_toggle(0 to 1),
      vdd33_toggle(0 to 1) => noip_ctrl_0_vdd33_toggle(0 to 1),
      vddpix_toggle(0 to 1) => noip_ctrl_0_vddpix_toggle(0 to 1)
    );
rst_clk_wiz_100M: component verif_design_rst_clk_wiz_100M_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_rtl_0_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => Net
    );
end STRUCTURE;
