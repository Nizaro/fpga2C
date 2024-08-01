library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity noip_lvds_stream is
	generic (
		-- Users to add parameters here
		SENSOR_BIT_LENGTH : integer;
		IM_WIDTH : integer;
		IM_HEIGHT : integer;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		lvds_clk : in std_logic;
		lvds_sync : in std_logic;
		lvds_data : in std_logic_vector(0 to 3);
		trigger0 : out std_logic;
		monitor0 : in std_logic;
		monitor1 : in std_logic;

		-- 		FIFO Ports
		fifo_srst : out std_logic;
		fifo_full : in std_logic;
		fifo_din : out std_logic_vector((8*SENSOR_BIT_LENGTH)-1 downto 0);
		fifo_wr_en : out std_logic;
		fifo_empty : in std_logic;
		fifo_dout : in std_logic_vector(31 downto 0);
		fifo_rd_en : out std_logic;

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
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		image_start : in std_logic;
		image_end : in std_logic;
		fifo_empty : in std_logic;
		fifo_dout : in std_logic_vector(31 downto 0);
		fifo_rd_en : out std_logic;
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
	type driver_state is (ALIGNING, IDLE, WAIT_BLACK, REC_BLACK, END_BLACK, REC_ID, REC_IMG, WAIT_LS, AFTER_FE);
	signal DState : driver_state;

	-- image signals

	subtype pixel is std_logic_vector(SENSOR_BIT_LENGTH-1 downto 0);
	signal lvds_sync_word : pixel;
	type t_ldw is array(0 to 3) of pixel;
	signal lvds_data_words : t_ldw;
	signal lvds_word_ready : std_logic;

	signal nb_kernel : integer := 0;
	signal pixel_polarity : integer := 0;

	signal im_line : integer := IM_HEIGHT;
	signal im_column : integer := 1;
	signal i : integer := 0;
	signal bitslip : integer := 0;
	
	type t_kernel is array (0 to 7) of pixel;
	signal kernel : t_kernel;

	-- other signals

	signal image_start : std_logic;
	signal image_end : std_logic;

	-- user signals end here

	function init_constant(const : integer) return pixel is
	begin
		case const is 
			when 0 => -- FRAME_START
				if(SENSOR_BIT_LENGTH = 8) then
					return x"5A";
				else
					return ("10" & x"AA");
				end if;

			when 1 => -- FRAME_END
				if(SENSOR_BIT_LENGTH = 8) then
					return x"6A";
				else
					return ("11" & x"2A");
				end if;

			when 2 => -- LINE_START
				if(SENSOR_BIT_LENGTH = 8) then
					return x"1A";
				else
					return ("00" & x"AA");
				end if;

			when 3 => -- LINE_END
				if(SENSOR_BIT_LENGTH = 8) then
					return x"2A";
				else
					return ("10" & x"2A");
				end if;

			when 4 => -- BL
				if(SENSOR_BIT_LENGTH = 8) then
					return x"05";
				else
					return ("00" & x"15");
				end if;

			when 5 => -- IMG
				if(SENSOR_BIT_LENGTH = 8) then
					return x"0D";
				else
					return ("00" & x"35");
				end if;

			when 6 => -- CRC
				if(SENSOR_BIT_LENGTH = 8) then
					return x"16";
				else
					return ("00" & x"59");
				end if;

			when others => -- TR
				if(SENSOR_BIT_LENGTH = 8) then
					return x"E9";
				else
					return ("11" & x"A6");
				end if;

		end case;
	end function;

	-- constants

	constant FRAME_START : pixel := init_constant(0);
	constant FRAME_END : pixel := init_constant(1);
	constant LINE_START : pixel := init_constant(2);
	constant LINE_END : pixel := init_constant(3);
	constant BL : pixel := init_constant(4);
	constant IMG : pixel := init_constant(5);
	constant CRC : pixel := init_constant(6);
	constant TR : pixel := init_constant(7);

	function findbitslip (pat : pixel; comp : pixel) return integer is
		variable sd_pat : pixel;
	begin
		sd_pat := pat;
		if(sd_pat = comp) then
			return 0;
		else
			for s in 1 to SENSOR_BIT_LENGTH-1 loop
				sd_pat := sd_pat(SENSOR_BIT_LENGTH-2 downto 0) & sd_pat(SENSOR_BIT_LENGTH-1);
				if(sd_pat = comp) then
					return s;
				end if;
			end loop;
		end if;
		return -1; 
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
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH
	)
	port map (
		M_AXIS_ACLK	=> m00_axis_aclk,
		M_AXIS_ARESETN	=> m00_axis_aresetn,
		M_AXIS_TVALID	=> m00_axis_tvalid,
		M_AXIS_TDATA	=> m00_axis_tdata,
		M_AXIS_TSTRB	=> m00_axis_tstrb,
		M_AXIS_TLAST	=> m00_axis_tlast,
		M_AXIS_TREADY	=> m00_axis_tready,
		image_start => '0',
		image_end => '0',
		fifo_empty => fifo_empty, 
		fifo_dout => fifo_dout, 
		fifo_rd_en => fifo_rd_en
	);

	-- Add user logic here

	
	lvds_read_process : process(lvds_clk, s00_axis_aresetn)
		-- variable temp_sync_word : pixel;
		-- variable temp_data_words : t_ldw;
	begin
		if(s00_axis_aresetn = '0') then
			i <= 0;
			lvds_sync_word <= (others => '0');
			lvds_data_words <= (others => (others => '0'));
			lvds_word_ready <= '0';
		elsif(rising_edge(lvds_clk)) then

			-- temp_sync_word(i) := lvds_sync;

			-- for c in 0 to 3 loop
			-- 	temp_data_words(c)(i) := lvds_data(c);	
			-- end loop;

			lvds_sync_word(i) <= lvds_sync;

			for c in 0 to 3 loop
				lvds_data_words(c)(i) <= lvds_data(c);	
			end loop;

			if(i = SENSOR_BIT_LENGTH-1) then
				lvds_word_ready <= '1';
				-- if(bitslip > 0 and bitslip < SENSOR_BIT_LENGTH and temp_sync_word /= TR) then
				if(bitslip > 0 and bitslip < SENSOR_BIT_LENGTH and lvds_sync_word /= TR) then
					i <= bitslip;
					-- lvds_sync_word <= temp_sync_word;
					-- lvds_data_words <= temp_data_words;
					lvds_sync_word(bitslip downto 0) <= TR(bitslip downto 0);
				else
					i <= 0;
					-- lvds_sync_word <= temp_sync_word;
					-- lvds_data_words <= temp_data_words; 
				end if;
			else
				lvds_word_ready <= '0';
				i <= i+1;
			end if;
			
		end if;
	end process;

	lvds_fsm : process(lvds_clk, s00_axis_aresetn) 
	begin
		if(s00_axis_aresetn = '0') then
			DState <= ALIGNING;
			nb_kernel <= 0;
			pixel_polarity <= 0;
			im_line <= IM_HEIGHT;
			im_column <= 1;
			bitslip <= 0;
			-- line <= (others => (others => '0'));
			kernel <= (others => (others => '0'));
			fifo_din <= (others => '0');
			fifo_wr_en <= '0';
			image_start <= '0';
			image_end <= '0';
		elsif(rising_edge(lvds_clk)) then
			if(lvds_word_ready = '1') then
				case DState is
					when ALIGNING =>
						if(lvds_sync_word = TR and lvds_data_words(0) = TR and bitslip = 0) then -- training pattern found : alignment done.
							DState <= IDLE;
						else
							bitslip <= findbitslip(lvds_sync_word,TR);
						end if;
						
					when IDLE => -- during training or FOT. Waiting for black lines or a frame.
						image_start <= '0';
						image_end <= '0';
						if(lvds_sync_word = LINE_START) then
							DState <= WAIT_BLACK;
						end if;
						fifo_din <= (others => '0');
						fifo_wr_en <= '0';

					when WAIT_BLACK => -- waiting out the first timeslot, to receive the first black line.
						if(lvds_sync_word = BL) then
							DState <= REC_BLACK;
						end if;

					when REC_BLACK => -- receiving a black line, waiting for LE.
						if(lvds_sync_word = LINE_END) then
							DState <= END_BLACK;
						end if;

					when END_BLACK => -- waiting for FS after receiving a black line. Expecting ID, CRC, and training.
						if(lvds_sync_word = FRAME_START) then
							nb_kernel <= 0;
							im_column <= 1;
							im_line <= 0;
							image_start <= '1';
							Dstate <= REC_ID;
						end if;

					when REC_ID => -- receiving window ID ignoring it.
						Dstate <= REC_IMG;
						image_start <= '0';

					when REC_IMG => -- receiving pixels and storing them. 

						if(lvds_sync_word = LINE_END) then
							DState <= WAIT_LS;
						elsif(lvds_sync_word = FRAME_END) then
							DState <= AFTER_FE;
						else
							if((nb_kernel rem 2) = 0) then	 	 -- even kernel : pixels read out ascending
								kernel(pixel_polarity) <= lvds_data_words(0);
								kernel(pixel_polarity+2) <= lvds_data_words(1);
								kernel(pixel_polarity+4) <= lvds_data_words(2);
								kernel(pixel_polarity+6) <= lvds_data_words(3);
							else 								 -- odd kernel : pixels read out descending
								kernel(7-pixel_polarity) <= lvds_data_words(0);
								kernel(5-pixel_polarity) <= lvds_data_words(1);
								kernel(3-pixel_polarity) <= lvds_data_words(2);
								kernel(1-pixel_polarity) <= lvds_data_words(3);
							end if; 

							-- if((nb_kernel rem 2) = 0) then	 	 -- even kernel : pixels read out ascending
							-- 	line(im_column+pixel_polarity) <= lvds_data_words(0);
							-- 	line(im_column+pixel_polarity+2) <= lvds_data_words(1);
							-- 	line(im_column+pixel_polarity+4) <= lvds_data_words(2);
							-- 	line(im_column+pixel_polarity+6) <= lvds_data_words(3);
							-- else 								 -- odd kernel : pixels read out descending
							-- 	line(im_column-pixel_polarity+7) <= lvds_data_words(0);
							-- 	line(im_column-pixel_polarity+5) <= lvds_data_words(1);
							-- 	line(im_column-pixel_polarity+3) <= lvds_data_words(2);
							-- 	line(im_column-pixel_polarity+1) <= lvds_data_words(3);
							-- end if; 

							-- if((nb_kernel rem 2) = 0) then -- even kernel : pixels read out ascending
							-- 	line(nb_kernel)(pixel_polarity) <= lvds_data_words(0);
							-- 	line(nb_kernel)(2+pixel_polarity) <= lvds_data_words(1);
							-- 	line(nb_kernel)(4+pixel_polarity) <= lvds_data_words(2);
							-- 	line(nb_kernel)(6+pixel_polarity) <= lvds_data_words(3);
							-- else							-- odd kernel : pixels read out descending
							-- 	line(nb_kernel)(7+pixel_polarity) <= lvds_data_words(0);
							-- 	line(nb_kernel)(5+pixel_polarity) <= lvds_data_words(1);
							-- 	line(nb_kernel)(3+pixel_polarity) <= lvds_data_words(2);
							-- 	line(nb_kernel)(1+pixel_polarity) <= lvds_data_words(3);
							-- end if;

							if(pixel_polarity = 1) then -- we received all the pixels for this kernel
								nb_kernel <= nb_kernel + 1;
								pixel_polarity <= 0;
								im_column <= im_column + 8; -- advance by one kernel
								for p in 0 to 7 loop
									fifo_din((8*(p+1))-1 downto 8*p) <= kernel(p); -- flatten kernel into sequential pixels
								end loop;
								fifo_wr_en <= '1'; -- write current kernel to fifo
							else -- waiting for the second half of pixels
								pixel_polarity <= 1;
								fifo_wr_en <= '0';
							end if;
						end if;

					when WAIT_LS => -- receiving CRC and ROT : waiting for the next line start.
						nb_kernel <= 0;
						im_column <= 1;
						pixel_polarity <= 0;
						fifo_wr_en <= '0';
						if(lvds_sync_word = LINE_START) then
							im_line <= im_line + 1;
							DState <= REC_ID;
						end if;

					when AFTER_FE => -- finished receiving frame, back to training (IDLE).
						image_end <= '1';
						DState <= IDLE;

					when others => -- one shouldn't be there.
						DState <= ALIGNING;

				end case; 
			end if;
		end if;
	end process;

	fifo_srst <= not s00_axis_aresetn;

	-- User logic ends

end arch_imp;