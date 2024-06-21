----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2024 09:27:43 AM
-- Design Name: 
-- Module Name: tb_lvds_stream - tb
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells this code.
library UNISIM;
use UNISIM.VComponents.all;

entity tb_lvds_stream is
--  Port ( );
end tb_lvds_stream;

architecture tb of tb_lvds_stream is

	-- User ports
	signal	lvds_clk : std_logic := '1';
	signal	lvds_sync : std_logic := '0';
	signal	lvds_data : std_logic_vector(0 to 3) := x"0";
	signal	trigger0 :  std_logic := '0';
	signal	monitor0 : std_logic := '0';
	signal	monitor1 : std_logic := '0';

	-- Ports of Axi Slave Bus Interface S00_AXIS
	signal	s00_axis_aclk	: std_logic := '0';
	signal	s00_axis_aresetn	: std_logic := '0';
	signal	s00_axis_tready	:  std_logic := '0';
	signal	s00_axis_tdata	: std_logic_vector(31 downto 0);
	signal	s00_axis_tstrb	: std_logic_vector(3 downto 0);
	signal	s00_axis_tlast	: std_logic := '0';
	signal	s00_axis_tvalid	: std_logic := '0';
	
    -- Ports of Axi Master Bus Interface M00_AXIS
	signal	m00_axis_aclk	: std_logic := '0';
	signal	m00_axis_aresetn	: std_logic := '0';
	signal	m00_axis_tvalid	:  std_logic := '0';
	signal	m00_axis_tdata	:  std_logic_vector(31 downto 0);
	signal	m00_axis_tstrb	:  std_logic_vector(3 downto 0);
	signal	m00_axis_tlast	:  std_logic := '0';
	signal	m00_axis_tready	: std_logic := '0';

begin

workLVDS_stream : entity work.noip_lvds_stream(arch_imp) 
    generic map (
        SENSOR_BIT_LENGTH => 10,
		C_S00_AXIS_TDATA_WIDTH => 32,
		C_M00_AXIS_TDATA_WIDTH	=> 32,
		C_M00_AXIS_START_COUNT	=> 32
    )
    port map(
		lvds_clk => lvds_clk, 
		lvds_sync => lvds_sync, 
		lvds_data => lvds_data, 
		trigger0 => trigger0, 
		monitor0 => monitor0,
		monitor1 => monitor1, 
		s00_axis_aclk => s00_axis_aclk,	
		s00_axis_aresetn => s00_axis_aresetn,	
		s00_axis_tready => s00_axis_tready,	
		s00_axis_tdata => s00_axis_tdata,	
		s00_axis_tstrb => s00_axis_tstrb,	
		s00_axis_tlast => s00_axis_tlast,	
		s00_axis_tvalid => s00_axis_tvalid,	
		m00_axis_aclk => m00_axis_aclk,	
		m00_axis_aresetn => m00_axis_aresetn,	
		m00_axis_tvalid => m00_axis_tvalid,	
		m00_axis_tdata => m00_axis_tdata,	
		m00_axis_tstrb => m00_axis_tstrb,	
		m00_axis_tlast => m00_axis_tlast,	
		m00_axis_tready => m00_axis_tready
    );

    lvds_clk <= not lvds_clk after 1 ns;

    s00_axis_aresetn <= '1' after 2 ns;

end tb;
