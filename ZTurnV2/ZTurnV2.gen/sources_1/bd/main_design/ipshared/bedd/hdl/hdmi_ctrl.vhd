library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hdmi_ctrl is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface S01_AXIS
		C_S01_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		hdmi_pclk : out std_logic;
		hdmi_data : out std_logic_vector(15 downto 0);
		hdmi_vsync : out std_logic;
		hdmi_hsync : out std_logic;
		hdmi_de : out std_logic;
		hdmi_int : inout std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface S01_AXIS
		s01_axis_aclk	: in std_logic;
		s01_axis_aresetn	: in std_logic;
		s01_axis_tready	: out std_logic;
		s01_axis_tdata	: in std_logic_vector(C_S01_AXIS_TDATA_WIDTH-1 downto 0);
		s01_axis_tstrb	: in std_logic_vector((C_S01_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s01_axis_tlast	: in std_logic;
		s01_axis_tvalid	: in std_logic
	);
end hdmi_ctrl;

architecture arch_imp of hdmi_ctrl is

	-- component declaration
	component hdmi_ctrl_slave_stream_v1_0_S00_AXIS is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component hdmi_ctrl_slave_stream_v1_0_S00_AXIS;

	component hdmi_ctrl_slave_stream_v1_0_S01_AXIS is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component hdmi_ctrl_slave_stream_v1_0_S01_AXIS;

	-- Users to add signals here

	signal red : std_logic_vector(4 downto 0);
	signal green : std_logic_vector(5 downto 0);
	signal blue : std_logic_vector(4 downto 0);
	-- User signals ends

begin

-- Instantiation of Axi Bus Interface S00_AXIS
hdmi_ctrl_slave_stream_v1_0_S00_AXIS_inst : hdmi_ctrl_slave_stream_v1_0_S00_AXIS
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s00_axis_aclk,
		S_AXIS_ARESETN	=> s00_axis_aresetn,
		S_AXIS_TREADY	=> s00_axis_tready,
		S_AXIS_TDATA	=> s00_axis_tdata,
		S_AXIS_TSTRB	=> s00_axis_tstrb,
		S_AXIS_TLAST	=> s00_axis_tlast,
		S_AXIS_TVALID	=> s00_axis_tvalid
	);

-- Instantiation of Axi Bus Interface S01_AXIS
hdmi_ctrl_slave_stream_v1_0_S01_AXIS_inst : hdmi_ctrl_slave_stream_v1_0_S01_AXIS
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S01_AXIS_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s01_axis_aclk,
		S_AXIS_ARESETN	=> s01_axis_aresetn,
		S_AXIS_TREADY	=> s01_axis_tready,
		S_AXIS_TDATA	=> s01_axis_tdata,
		S_AXIS_TSTRB	=> s01_axis_tstrb,
		S_AXIS_TLAST	=> s01_axis_tlast,
		S_AXIS_TVALID	=> s01_axis_tvalid
	);

	-- Add user logic here

	hdmi_send_process: process(s00_axis_aresetn, s00_axis_aclk) -- sync'd with axis_aclk (100 MHz)
	begin
		if(s00_axis_aresetn = '0') then
			red <= (others => '0');
			green <= (others => '0');
			blue <= (others => '0');
		elsif(rising_edge(s00_axis_aclk)) then
			
		end if;
	end process;

	hdmi_data(4 downto 0) <= red;
	hdmi_data(10 downto 5) <= green;
	hdmi_data(15 downto 11) <= blue;

	hdmi_pclk <= s00_axis_aclk;

	-- User logic ends

end arch_imp;
