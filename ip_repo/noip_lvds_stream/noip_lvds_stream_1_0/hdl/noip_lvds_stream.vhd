library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity noip_lvds_stream is
	generic (
		-- Users to add parameters here
		SENSOR_BIT_LENGTH : integer := 10;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		lvds_clk : in std_logic;
		lvds_sync : in std_logic;
		lvds_data : in std_logic_vector(0 to 3);
		trigger0 : out std_logic;
		monitor0 : in std_logic;
		monitor1 : in std_logic;
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

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic
	);
end noip_lvds_stream;

architecture arch_imp of noip_lvds_stream is

	-- component declaration
	component noip_lvds_stream_slave_stream_v1_0_S00_AXIS is
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
	end component noip_lvds_stream_slave_stream_v1_0_S00_AXIS;

	component noip_lvds_stream_master_stream_v1_0_M00_AXIS is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component noip_lvds_stream_master_stream_v1_0_M00_AXIS;

	-- user signals start here

	-- FSM for the driver itself
	type driver_state is (ALIGNING, IDLE, WAIT_FS, WAIT_LS, WAIT_FE, WAIT_LE, REC_BLACK, REC_CRC, REC_IMG);
	signal DState : driver_state;

	subtype pixel is std_logic_vector(SENSOR_BIT_LENGTH-1 downto 0);
	signal lvds_sync_word : pixel;
	type t_ldw is array(0 to 3) of pixel;
	signal lvds_data_words : t_ldw;
	signal lvds_word_ready : std_logic;

	-- lvds_sync words values
	constant FRAME_START : std_logic_vector(9 downto 0) := "10" & x"AA";
	constant FRAME_END : std_logic_vector(9 downto 0) := "11" & x"2A";
	constant LINE_START : std_logic_vector(9 downto 0) := "00" & x"AA";
	constant LINE_END : std_logic_vector(9 downto 0) := "10" & x"2A";
	constant BL : std_logic_vector(9 downto 0) := "00" & x"15";
	constant IMG : std_logic_vector(9 downto 0) := "00" & x"35";
	constant CRC : std_logic_vector(9 downto 0) := "00" & x"59";
	constant TR : std_logic_vector(9 downto 0) := "11" & x"A6";

	signal nb_kernel : integer := 0;
	signal pixel_polarity : integer := 0;

	signal im_line : integer := 1024;
	signal im_column : integer := 1;
	signal i : integer := 0;
	signal bitslip : integer := 0;

	type t_ligne is array (1 to 1280) of pixel;
	type t_image is array(1 to 1024) of t_ligne;
	-- signal image : t_image;
	-- user signals end here

	function findbitslip (pat : pixel := TR) return integer is
		variable shift : integer := 0;
		variable sd_pat : pixel;
	begin
		sd_pat := pat;
		if(sd_pat = TR) then
			return 0;
		end if;
		for s in 1 to 9 loop
			sd_pat := sd_pat(8 downto 0) & sd_pat(9);
			if(sd_pat = TR) then
				shift := s;
			end if;
		end loop;
		return shift;
	end function;

begin

-- Instantiation of Axi Bus Interface S00_AXIS
noip_lvds_stream_slave_stream_v1_0_S00_AXIS_inst : noip_lvds_stream_slave_stream_v1_0_S00_AXIS
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

-- Instantiation of Axi Bus Interface M00_AXIS
noip_lvds_stream_master_stream_v1_0_M00_AXIS_inst : noip_lvds_stream_master_stream_v1_0_M00_AXIS
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH,
		C_M_START_COUNT	=> C_M00_AXIS_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m00_axis_aclk,
		M_AXIS_ARESETN	=> m00_axis_aresetn,
		M_AXIS_TVALID	=> m00_axis_tvalid,
		M_AXIS_TDATA	=> m00_axis_tdata,
		M_AXIS_TSTRB	=> m00_axis_tstrb,
		M_AXIS_TLAST	=> m00_axis_tlast,
		M_AXIS_TREADY	=> m00_axis_tready
	);

	-- Add user logic here
	
	lvds_read_process : process(lvds_clk, s00_axis_aresetn)
		variable temp_sync_word : pixel;
		variable temp_data_words : t_ldw;
	begin
		if(s00_axis_aresetn = '0') then
			i <= 0;
			lvds_sync_word <= (others => '0');
			lvds_data_words <= (others => (others => '0'));
			lvds_word_ready <= '0';
		elsif(rising_edge(lvds_clk)) then

			temp_sync_word(i) := lvds_sync;

			for c in 0 to 3 loop
				temp_data_words(c)(i) := lvds_data(c);	
			end loop;

			if(i = SENSOR_BIT_LENGTH-1) then
				i <= 0;
				lvds_word_ready <= '1';
				if(bitslip > 0 and bitslip < 9) then
					lvds_sync_word <= temp_sync_word(9-bitslip downto 0) & temp_sync_word(9 downto 9-bitslip+1);
					for c in 0 to 3 loop
						lvds_data_words(c) <= temp_data_words(c)(9-bitslip downto 0) & temp_data_words(c)(9 downto 9-bitslip+1);
					end loop;
				else
					lvds_sync_word <= temp_sync_word;
					lvds_data_words <= temp_data_words;
				end if;
			else
				lvds_word_ready <= '0';
				i <= i+1;
			end if;
			
		end if;
	end process;

	lvds_fsm : process(lvds_word_ready, s00_axis_aresetn) 
	begin
		if(s00_axis_aresetn = '0') then
			DState <= ALIGNING;
			nb_kernel <= 0;
			pixel_polarity <= 0;
			im_line <= 1280;
			im_column <= 1;
			bitslip <= 0;
		elsif(rising_edge(lvds_word_ready)) then
			case DState is
				when ALIGNING =>
					if(lvds_sync_word = TR and lvds_data_words(0) = TR) then -- training pattern found : alignment done.
						DState <= IDLE;
					else
						bitslip <= findbitslip(lvds_sync_word);
					end if;
					
				when IDLE => -- during training. Waiting for FS.
					if(lvds_sync_word = FRAME_START) then
						DState <= WAIT_FS;
					end if;

				when WAIT_FS => -- receiving window ID, and ignoring it.
					DState <= REC_BLACK;

				when REC_BLACK => -- receiving a black line, waiting for LE.
					if(lvds_sync_word = LINE_END) then
						DState <= WAIT_LE;
					end if;
				
				when WAIT_LE => -- receiving window ID, CRC, and training. Waiting for next LS.
					nb_kernel <= 0;
					im_column <= 1;
					im_line <= im_line + 1;
					if(lvds_sync_word = LINE_START) then
						DState <= WAIT_LS;
					end if;

				when WAIT_LS => -- receiving window ID, and ignoring it.
					DState <= REC_IMG;

				when REC_IMG => -- receiving pixels and storing them. 
					-- if((nb_kernel rem 2) = 0) then	 	 -- even kernel : pixels read out ascending
					-- 	image(im_line)(im_column+pixel_polarity) <= lvds_data_words(0);
					-- 	image(im_line)(im_column+pixel_polarity+2) <= lvds_data_words(1);
					-- 	image(im_line)(im_column+pixel_polarity+4) <= lvds_data_words(2);
					-- 	image(im_line)(im_column+pixel_polarity+6) <= lvds_data_words(3);
					-- else 								 -- odd kernel : pixels read out descending
					-- 	image(im_line)(im_column-pixel_polarity+7) <= lvds_data_words(0);
					-- 	image(im_line)(im_column-pixel_polarity+5) <= lvds_data_words(1);
					-- 	image(im_line)(im_column-pixel_polarity+3) <= lvds_data_words(2);
					-- 	image(im_line)(im_column-pixel_polarity+1) <= lvds_data_words(3);
					-- end if; 

					if(pixel_polarity = 1) then -- we received all the pixels for this kernel
						nb_kernel <= nb_kernel + 1;
						pixel_polarity <= 0;
						im_column <= im_column + 8;
					else -- waiting for the second half of pixels
						pixel_polarity <= 1;
					end if;

					if(lvds_sync_word = LINE_END) then
						DState <= WAIT_LE;
					elsif(lvds_sync_word = FRAME_END) then
						DState <= WAIT_FE;
					end if;

				when WAIT_FE => -- finished receiving frame, sending it. Going back to training (IDLE).
					DState <= IDLE;

				when others => -- one shouldn't be there.
					DState <= ALIGNING;

			end case; 
		end if;
	end process;

	-- User logic ends

end arch_imp;
