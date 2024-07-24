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
	signal 	fifo_srst : std_logic := '0';
	signal 	fifo_full : std_logic := '0';
	signal 	fifo_din : std_logic_vector(7 downto 0) := x"0";
	signal 	fifo_wr_en : std_logic := '0';
	signal 	fifo_empty : std_logic := '0';
	signal 	fifo_dout : std_logic_vector(31 downto 0) := x"0000";

	-- Ports of Axi Slave Bus Interface S00_AXIS
	signal	s00_axis_aclk	: std_logic := '0';
	signal	s00_axis_aresetn	: std_logic := '0';
	signal	s00_axis_tready	:  std_logic := '0' ;
	signal	s00_axis_tdata	: std_logic_vector(31 downto 0);
	signal	s00_axis_tstrb	: std_logic_vector(3 downto 0);
	signal	s00_axis_tlast	: std_logic := '0';
	signal	s00_axis_tvalid	: std_logic := '0';
	
    -- Ports of Axi Master Bus Interface M00_AXIS
	signal	m00_axis_aclk	: std_logic := '0';
	signal	m00_axis_aresetn	: std_logic := '0';
	signal	m00_axis_tvalid	:  std_logic;
	signal	m00_axis_tdata	:  std_logic_vector(31 downto 0);
	signal	m00_axis_tstrb	:  std_logic_vector(3 downto 0);
	signal	m00_axis_tlast	:  std_logic := '0';
	signal	m00_axis_tready	: std_logic := '0';

	-- !
	constant SENSOR_BIT_LENGTH : integer := 8;

	-- tb signals
	subtype pixel is std_logic_vector(SENSOR_BIT_LENGTH downto 0);
	signal sync_word : pixel;
	type t_ldw is array(0 to 3) of pixel;
	signal data_words : t_ldw;
	signal i_lvds : integer := 0;
	constant ROI_width_kernels : integer := 4;
	constant ROI_height : integer := 4;

	-- image
	type t_line is array (1 to ROI_width_kernels*8) of pixel;
	type t_image is array(1 to ROI_height) of t_line;
	signal line : t_line;


	-- patterns of sync channel
	type t_pattern is (FS,FE,LS,LE,BL,IMG,CRC,TR,ID);
	signal Pattern : t_pattern;

	-- functions
	
	procedure p_training(signal sw : inout pixel;
						signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		sw <= TRAINING;
		dws <= (others => TRAINING);
		wait for 100 ns;

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

	procedure img_line(mode : in std_logic_vector(1 downto 0) := "00"; -- "00" for normal line, "10" for first line, "01" for last line
					   signal sw : inout pixel;
					   signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		if(mode(1) = '1') then
			sw <= FRAME_START;
		else
			sw <= LINE_START;
		end if;
		dws <= (others => (others => '0'));
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= IMAGE;
		for p in 1 to (ROI_width_kernels*2) loop
			dws <= (others => line(0));
			wait until i_lvds = 0;
		end loop;
		if(mode(0) = '1') then
			sw <= FRAME_END;
		else
			sw <= LINE_END;
		end if;
		wait until i_lvds = 0;
		sw <= (others => '0'); -- ID
		wait until i_lvds = 0;
		sw <= CRC_PATT;
		wait until i_lvds = 0;

	end procedure;

	procedure frame(signal sw : inout pixel;
					signal dws : inout t_ldw) is
	begin
		wait until i_lvds = 0;
		img_line("10",sw,dws);
		for l in 0 to ROI_height loop
			p_training(sw,dws);
			img_line("00",sw,dws);
		end loop;
		p_training(sw,dws);
		wait until i_lvds = 0;
		img_line("01",sw,dws);

	end procedure;

begin

	gen10bit : if(SENSOR_BIT_LENGTH = 10) generate
		constant FRAME_START : pixel := "10" & x"AA";
		constant FRAME_END : pixel := "11" & x"2A";  
		constant LINE_START : pixel := "00" & x"AA";
		constant LINE_END : pixel := "10" & x"2A";
		constant BL : pixel := "00" & x"15";
		constant IMG : pixel := "00" & x"35";
		constant CRC : pixel := "00" & x"59";
		constant TR : pixel := "11" & x"A6";
	end generate;

	gen8bit : if(SENSOR_BIT_LENGTH = 8) generate
		constant FRAME_START : pixel := x"5A";
		constant FRAME_END : pixel := x"6A";
		constant LINE_START : pixel := x"1A";
		constant LINE_END : pixel := x"2A";
		constant BL : pixel := x"05";
		constant IMG : pixel := x"0D";
		constant CRC : pixel := x"16";
		constant TR : pixel := x"E9";
	end generate;

workLVDS_stream : entity work.noip_lvds_stream(arch_imp) 
    generic map (
        SENSOR_BIT_LENGTH => SENSOR_BIT_LENGTH,
		IM_WIDTH => ROI_width_kernels*8,
		IM_HEIGHT => ROI_height,
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
		fifo_srst => fifo_srst, 
		fifo_full => fifo_full, 
		fifo_din => fifo_din, 
		fifo_wr_en => fifo_wr_en, 
		fifo_empty => fifo_empty, 
		fifo_dout => fifo_dout, 
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

	axi_rec_process : process(m00_axis_aclk, m00_axis_aresetn) 
	begin
		if(m00_axis_aresetn = '0') then
			m00_axis_tready <= '0';
		elsif(falling_edge(m00_axis_aclk)) then
			if(m00_axis_tvalid = '1') then
				m00_axis_tready <= '1';
			else
				m00_axis_tready <= '0';
			end if;
		end if;
	end process;


	tb : process
	begin

		sync_word <= (others => '0');
		data_words <= (others => (others => '0'));
		monitor0 <= '0';
		monitor1 <= '0';

		wait until s00_axis_aresetn = '1';

		p_training(sync_word,data_words);
		p_training(sync_word,data_words);
		
		blackline(sync_word,data_words);
		p_training(sync_word,data_words);

		frame(sync_word, data_words);
		p_training(sync_word,data_words);

		wait;
	end process;

	lvds_clk <= not lvds_clk after 2.778 ns;
	s00_axis_aclk <= not s00_axis_aclk after 10 ns;
	m00_axis_aclk <= s00_axis_aclk;
    s00_axis_aresetn <= '1' after 17 ns;
	m00_axis_aresetn <= s00_axis_aresetn;

	with sync_word select Pattern <= FS when FRAME_START,
									 FE when FRAME_END,
									 LS when LINE_START,
									 LE when LINE_END,
									 BL when BLACK_LINE,
									 IMG when IMAGE,
									 CRC when CRC_PATT,
									 TR when TRAINING,
									 ID when others;

	line <= (others => "1100100011");

end tb;
