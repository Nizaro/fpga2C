-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_noip_ctrl_0_0 is
  Port ( 
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

end main_design_noip_ctrl_0_0;

architecture stub of main_design_noip_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "noip_ctrl,Vivado 2024.1";
begin
end;