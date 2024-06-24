----------------------------------------------------------------------------------
-- Company
-- Engeer
-- 
-- Create Date06/21/2024 09:51:35 AM
-- Design Name
-- Module Nametb_ctrl - tb
-- Project Name
-- Target Devices
-- Tool Versions
-- Description
-- 
-- Dependencies
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the followg library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells  this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ctrl is
--  Port ( );
end tb_ctrl;

architecture tb of tb_ctrl is
    -- STARTUP-RELATED
    signal clk_72M_pll :  std_logic := '0';
    signal clk_pll_out :  std_logic_vector(0 to 1);
    signal noip_reset_n :  std_logic_vector(0 to 1);
    signal vdd18_toggle :  std_logic_vector(0 to 1);
    signal vdd33_toggle :  std_logic_vector(0 to 1);
    signal vddpix_toggle :  std_logic_vector(0 to 1);
    signal sw_enable_n :  std_logic_vector(0 to 1);

    -- SPI-RELATED
    signal clk_spi_in : std_logic := '0';
    signal miso :  std_logic := '0';
    signal mosi :  std_logic := '0';
    signal sck :  std_logic := '0';
    signal ss_n :  std_logic_vector(0 to 1) := "00";

    -- Ports of Axi Slave Bus Interface S00_AXI
    signal s00_axi_aclk	:  std_logic := '0';
    signal s00_axi_aresetn	:  std_logic := '0';
    signal s00_axi_awaddr	:  std_logic_vector(3 downto 0);
    signal s00_axi_awprot	:  std_logic_vector(2 downto 0);
    signal s00_axi_awvalid	:  std_logic := '0';
    signal s00_axi_awready	:  std_logic := '0';
    signal s00_axi_wdata	:  std_logic_vector(31 downto 0);
    signal s00_axi_wstrb	:  std_logic_vector(3 downto 0);
    signal s00_axi_wvalid	:  std_logic := '0';
    signal s00_axi_wready	:  std_logic := '0';
    signal s00_axi_bresp	:  std_logic_vector(1 downto 0);
    signal s00_axi_bvalid	:  std_logic := '0';
    signal s00_axi_bready	:  std_logic := '0';
    signal s00_axi_araddr	:  std_logic_vector(3 downto 0);
    signal s00_axi_arprot	:  std_logic_vector(2 downto 0);
    signal s00_axi_arvalid	:  std_logic := '0';
    signal s00_axi_arready	:  std_logic := '0';
    signal s00_axi_rdata	:  std_logic_vector(31 downto 0);
    signal s00_axi_rresp	:  std_logic_vector(1 downto 0);
    signal s00_axi_rvalid	:  std_logic := '0';
    signal s00_axi_rready	: std_logic := '0';
begin

workctrl : entity work.noip_ctrl(arch_imp)
    port map(
		clk_72M_pll => clk_72M_pll, 
        clk_pll_out => clk_pll_out,
        noip_reset_n => noip_reset_n,
        vdd18_toggle => vdd18_toggle,
        vdd33_toggle => vdd33_toggle,
        vddpix_toggle => vddpix_toggle,
        sw_enable_n => sw_enable_n,
		clk_spi_in => clk_spi_in,
		miso => miso,
		mosi => mosi,
		sck => sck, 
		ss_n => ss_n,
		s00_axi_aclk => s00_axi_aclk,
		s00_axi_aresetn => s00_axi_aresetn,
		s00_axi_awaddr => s00_axi_awaddr,
		s00_axi_awprot => s00_axi_awprot,
		s00_axi_awvalid => s00_axi_awvalid,
		s00_axi_awready => s00_axi_awready,
		s00_axi_wdata => s00_axi_wdata,
		s00_axi_wstrb => s00_axi_wstrb,
		s00_axi_wvalid => s00_axi_wvalid,
		s00_axi_wready => s00_axi_wready,
		s00_axi_bresp => s00_axi_bresp,
		s00_axi_bvalid => s00_axi_bvalid,
		s00_axi_bready => s00_axi_bready,
		s00_axi_araddr => s00_axi_araddr,
		s00_axi_arprot => s00_axi_arprot,
		s00_axi_arvalid => s00_axi_arvalid,
		s00_axi_arready => s00_axi_arready,
		s00_axi_rdata => s00_axi_rdata,
		s00_axi_rresp => s00_axi_rresp,
		s00_axi_rvalid => s00_axi_rvalid,
		s00_axi_rready => s00_axi_rready
    );

    clk_spi_in <= not clk_spi_in after 1 ns;

    clk_72M_pll <= not clk_72M_pll after 1389 ps;

    s00_axi_aclk <= clk_spi_in;
    
    s00_axi_aresetn <= '1' after 2 ns;

end tb;
