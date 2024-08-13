--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Fri Aug  9 15:54:13 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target bd_test.bd
--Design      : bd_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_test is
  port (
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tvalid : out STD_LOGIC;
    lvds_clk : in STD_LOGIC;
    lvds_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lvds_sync : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    trigger0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_test : entity is "bd_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_test : entity is "bd_test.hwdef";
end bd_test;

architecture STRUCTURE of bd_test is
  component bd_test_selectio_wiz_0_0 is
  port (
    data_in_from_pins : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in : in STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_div_out : out STD_LOGIC;
    data_in_to_device : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component bd_test_selectio_wiz_0_0;
  component bd_test_noip_lvds_stream_0_0 is
  port (
    lvds_clk_div : in STD_LOGIC;
    lvds_deserialized : in STD_LOGIC_VECTOR ( 39 downto 0 );
    trigger0 : out STD_LOGIC;
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
    bitslip : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_srst : out STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  end component bd_test_noip_lvds_stream_0_0;
  component bd_test_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component bd_test_fifo_generator_0_0;
  component bd_test_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component bd_test_xlconcat_0_0;
  signal In0_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Net : STD_LOGIC;
  signal clk_in_0_1 : STD_LOGIC;
  signal clk_reset_0_1 : STD_LOGIC;
  signal lvds_sync_1 : STD_LOGIC;
  signal m00_axis_aclk_0_1 : STD_LOGIC;
  signal m00_axis_aresetn_0_1 : STD_LOGIC;
  signal monitor0_0_1 : STD_LOGIC;
  signal monitor1_0_1 : STD_LOGIC;
  signal noip_lvds_stream_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal noip_lvds_stream_0_M00_AXIS_TLAST : STD_LOGIC;
  signal noip_lvds_stream_0_M00_AXIS_TREADY : STD_LOGIC;
  signal noip_lvds_stream_0_M00_AXIS_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal noip_lvds_stream_0_M00_AXIS_TVALID : STD_LOGIC;
  signal noip_lvds_stream_0_bitslip : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal noip_lvds_stream_0_fifo_read_EMPTY : STD_LOGIC;
  signal noip_lvds_stream_0_fifo_read_RD_DATA : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal noip_lvds_stream_0_fifo_read_RD_EN : STD_LOGIC;
  signal noip_lvds_stream_0_fifo_srst : STD_LOGIC;
  signal noip_lvds_stream_0_fifo_write_FULL : STD_LOGIC;
  signal noip_lvds_stream_0_fifo_write_WR_DATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal noip_lvds_stream_0_fifo_write_WR_EN : STD_LOGIC;
  signal noip_lvds_stream_0_s00_axis_tready : STD_LOGIC;
  signal noip_lvds_stream_0_trigger0 : STD_LOGIC;
  signal s00_axis_aclk_0_1 : STD_LOGIC;
  signal s00_axis_aresetn_0_1 : STD_LOGIC;
  signal s00_axis_tdata_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_axis_tlast_0_1 : STD_LOGIC;
  signal s00_axis_tstrb_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_axis_tvalid_0_1 : STD_LOGIC;
  signal selectio_wiz_0_data_in_to_device : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M00_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M00_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M00_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of lvds_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LVDS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of lvds_clk : signal is "XIL_INTERFACENAME CLK.LVDS_CLK, CLK_DOMAIN bd_test_clk_in_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of lvds_sync : signal is "xilinx.com:signal:data:1.0 DATA.LVDS_SYNC DATA";
  attribute X_INTERFACE_PARAMETER of lvds_sync : signal is "XIL_INTERFACENAME DATA.LVDS_SYNC, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.M00_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME CLK.M00_AXIS_ACLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, CLK_DOMAIN bd_test_m00_axis_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.M00_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME RST.M00_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S00_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME CLK.S00_AXIS_ACLK, ASSOCIATED_RESET s00_axis_aresetn, CLK_DOMAIN bd_test_s00_axis_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S00_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME RST.S00_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M00_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_PARAMETER of M00_AXIS_tdata : signal is "XIL_INTERFACENAME M00_AXIS, CLK_DOMAIN bd_test_m00_axis_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M00_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
begin
  In0_0_1(3 downto 0) <= lvds_data(3 downto 0);
  M00_AXIS_tdata(31 downto 0) <= noip_lvds_stream_0_M00_AXIS_TDATA(31 downto 0);
  M00_AXIS_tlast <= noip_lvds_stream_0_M00_AXIS_TLAST;
  M00_AXIS_tstrb(3 downto 0) <= noip_lvds_stream_0_M00_AXIS_TSTRB(3 downto 0);
  M00_AXIS_tvalid <= noip_lvds_stream_0_M00_AXIS_TVALID;
  clk_in_0_1 <= lvds_clk;
  clk_reset_0_1 <= reset;
  lvds_sync_1 <= lvds_sync;
  m00_axis_aclk_0_1 <= m00_axis_aclk;
  m00_axis_aresetn_0_1 <= m00_axis_aresetn;
  monitor0_0_1 <= monitor0;
  monitor1_0_1 <= monitor1;
  noip_lvds_stream_0_M00_AXIS_TREADY <= M00_AXIS_tready;
  s00_axis_aclk_0_1 <= s00_axis_aclk;
  s00_axis_aresetn_0_1 <= s00_axis_aresetn;
  s00_axis_tdata_0_1(31 downto 0) <= s00_axis_tdata(31 downto 0);
  s00_axis_tlast_0_1 <= s00_axis_tlast;
  s00_axis_tready <= noip_lvds_stream_0_s00_axis_tready;
  s00_axis_tstrb_0_1(3 downto 0) <= s00_axis_tstrb(3 downto 0);
  s00_axis_tvalid_0_1 <= s00_axis_tvalid;
  trigger0 <= noip_lvds_stream_0_trigger0;
fifo_generator_0: component bd_test_fifo_generator_0_0
     port map (
      clk => Net,
      din(17 downto 0) => noip_lvds_stream_0_fifo_write_WR_DATA(17 downto 0),
      dout(17 downto 0) => noip_lvds_stream_0_fifo_read_RD_DATA(17 downto 0),
      empty => noip_lvds_stream_0_fifo_read_EMPTY,
      full => noip_lvds_stream_0_fifo_write_FULL,
      rd_en => noip_lvds_stream_0_fifo_read_RD_EN,
      srst => noip_lvds_stream_0_fifo_srst,
      wr_en => noip_lvds_stream_0_fifo_write_WR_EN
    );
noip_lvds_stream_0: component bd_test_noip_lvds_stream_0_0
     port map (
      bitslip(3 downto 0) => noip_lvds_stream_0_bitslip(3 downto 0),
      fifo_din(63 downto 0) => noip_lvds_stream_0_fifo_write_WR_DATA(63 downto 0),
      fifo_dout(31 downto 18) => B"00000000000000",
      fifo_dout(17 downto 0) => noip_lvds_stream_0_fifo_read_RD_DATA(17 downto 0),
      fifo_empty => noip_lvds_stream_0_fifo_read_EMPTY,
      fifo_full => noip_lvds_stream_0_fifo_write_FULL,
      fifo_rd_en => noip_lvds_stream_0_fifo_read_RD_EN,
      fifo_srst => noip_lvds_stream_0_fifo_srst,
      fifo_wr_en => noip_lvds_stream_0_fifo_write_WR_EN,
      lvds_clk_div => Net,
      lvds_deserialized(39 downto 0) => selectio_wiz_0_data_in_to_device(39 downto 0),
      m00_axis_aclk => m00_axis_aclk_0_1,
      m00_axis_aresetn => m00_axis_aresetn_0_1,
      m00_axis_tdata(31 downto 0) => noip_lvds_stream_0_M00_AXIS_TDATA(31 downto 0),
      m00_axis_tlast => noip_lvds_stream_0_M00_AXIS_TLAST,
      m00_axis_tready => noip_lvds_stream_0_M00_AXIS_TREADY,
      m00_axis_tstrb(3 downto 0) => noip_lvds_stream_0_M00_AXIS_TSTRB(3 downto 0),
      m00_axis_tvalid => noip_lvds_stream_0_M00_AXIS_TVALID,
      monitor0 => monitor0_0_1,
      monitor1 => monitor1_0_1,
      s00_axis_aclk => s00_axis_aclk_0_1,
      s00_axis_aresetn => s00_axis_aresetn_0_1,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata_0_1(31 downto 0),
      s00_axis_tlast => s00_axis_tlast_0_1,
      s00_axis_tready => noip_lvds_stream_0_s00_axis_tready,
      s00_axis_tstrb(3 downto 0) => s00_axis_tstrb_0_1(3 downto 0),
      s00_axis_tvalid => s00_axis_tvalid_0_1,
      trigger0 => noip_lvds_stream_0_trigger0
    );
selectio_wiz_0: component bd_test_selectio_wiz_0_0
     port map (
      bitslip(4) => '0',
      bitslip(3 downto 0) => noip_lvds_stream_0_bitslip(3 downto 0),
      clk_div_out => Net,
      clk_in => clk_in_0_1,
      clk_reset => clk_reset_0_1,
      data_in_from_pins(4 downto 0) => xlconcat_0_dout(4 downto 0),
      data_in_to_device(39 downto 0) => selectio_wiz_0_data_in_to_device(39 downto 0),
      io_reset => clk_reset_0_1
    );
xlconcat_0: component bd_test_xlconcat_0_0
     port map (
      In0(3 downto 0) => In0_0_1(3 downto 0),
      In1(0) => lvds_sync_1,
      dout(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
end STRUCTURE;
