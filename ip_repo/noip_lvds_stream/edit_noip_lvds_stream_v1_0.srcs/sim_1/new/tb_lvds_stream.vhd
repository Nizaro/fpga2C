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

	-- tb signals
	subtype pixel is std_logic_vector(9 downto 0);
	signal sync_word : pixel;
	type t_ldw is array(0 to 3) of pixel;
	signal data_words : t_ldw;
	signal i_lvds : integer := 0;

	-- constants and patterns of sync channel
	constant FRAME_START : std_logic_vector(9 downto 0) := "10" & x"AA";
	constant FRAME_END : std_logic_vector(9 downto 0) := "11" & x"2A";
	constant LINE_START : std_logic_vector(9 downto 0) := "00" & x"AA";
	constant LINE_END : std_logic_vector(9 downto 0) := "10" & x"2A";
	constant BLACK_LINE : std_logic_vector(9 downto 0) := "00" & x"15";
	constant IMAGE : std_logic_vector(9 downto 0) := "00" & x"35";
	constant CRC_PATT : std_logic_vector(9 downto 0) := "00" & x"59";
	constant TRAINING : std_logic_vector(9 downto 0) := "11" & x"A6";
	type t_pattern is (FS,FE,LS,LE,BL,IMG,CRC,TR,ID);
	signal Pattern : t_pattern;

	-- functions
	
	procedure p_training(signal sw : inout pixel;
						signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		sw <= TRAINING;
		dws <= (others => TRAINING);

	end procedure;


	procedure blackline(signal sw : inout pixel;
						signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		sw <= LINE_START;
		dws <= (others => (others => '0'));
		wait until i_lvds = 0;
		sw <= (others => '0'); -- blank
		wait until i_lvds = 0;
		sw <= BLACK_LINE;
		wait for 100 ns;
		wait until i_lvds = 0;
		sw <= LINE_END;
		wait until i_lvds = 0;
		sw <= (others => '0'); -- blank
		wait until i_lvds = 0;
		sw <= CRC_PATT;

	end procedure;

	procedure img_line(signal sw : inout pixel;
					   signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		sw <= LINE_START;
		dws <= (others => (others => '0'));
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= IMAGE;
		wait for 100 ns;
		wait until i_lvds = 0;
		sw <= LINE_END;
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= CRC_PATT;

	end procedure;

	procedure frame(signal sw : inout pixel;
					signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		sw <= FRAME_START;
		dws <= (others => (others => '0'));
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= IMAGE;
		wait for 100 ns;
		wait until i_lvds = 0;
		sw <= LINE_END;
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= CRC_PATT;
		for l in 0 to 4 loop
			img_line(sw,dws);
			p_training(sw,dws);
			wait for 15 ns;
		end loop;
		wait until i_lvds = 0;
		sw <= LINE_START;
		dws <= (others => (others => '0'));
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= IMAGE;
		wait for 100 ns;
		wait until i_lvds = 0;
		sw <= FRAME_END;
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= CRC_PATT;

	end procedure;

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

    s00_axis_aresetn <= '1' after 1 ns;

	lvds_process : process(lvds_clk, s00_axis_aresetn)
	begin
		if(s00_axis_aresetn = '0') then
			lvds_sync <= '0';
			lvds_data <= (others => '0');
			i_lvds <= 0;
		elsif(falling_edge(lvds_clk)) then
			lvds_sync <= sync_word(i_lvds);
			for c in 0 to 3 loop
				lvds_data(c) <= data_words(c)(i_lvds);	
			end loop;
			
			if(i_lvds > 8) then
				i_lvds <= 0;
			else
				i_lvds <= i_lvds + 1;
			end if;
		end if;
	end process;


	tb : process
	begin

		monitor0 <= '0';
		monitor1 <= '0';
		sync_word <= (others => '0');
		data_words <= (others => (others => '0'));

		p_training(sync_word,data_words);

		wait for 60 ns;
		
		blackline(sync_word,data_words);
		p_training(sync_word,data_words);

		wait for 15 ns;

		frame(sync_word, data_words);
		p_training(sync_word,data_words);

		wait;
	end process;

	with sync_word select Pattern <= FS when FRAME_START,
									 FE when FRAME_END,
									 LS when LINE_START,
									 LE when LINE_END,
									 BL when BLACK_LINE,
									 IMG when IMAGE,
									 CRC when CRC_PATT,
									 TR when TRAINING,
									 ID when others;

end tb;
