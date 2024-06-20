library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity noip_ctrl is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
		-- STARTUP-RELATED
		clk_72M_pll : in std_logic;
        clk_pll_out : out std_logic_vector(0 to 1);
        noip_reset_n : out std_logic_vector(0 to 1);
        vdd18_toggle : out std_logic_vector(0 to 1);
        vdd33_toggle : out std_logic_vector(0 to 1);
        vddpix_toggle : out std_logic_vector(0 to 1);
        sw_enable_n : out std_logic_vector(0 to 1);

		-- SPI-RELATED
		clk_spi_in : in std_logic;
		miso : in std_logic;
		mosi : out std_logic;
		sck : out std_logic;
		ss_n : out std_logic_vector(0 to 1);
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end noip_ctrl;

architecture arch_imp of noip_ctrl is

	-- component declaration
	component noip_ctrl_slave_lite_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		rec_data : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		send_data : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component noip_ctrl_slave_lite_v1_0_S00_AXI;

	-- user signals start here
	-- GENERIC DATA-RELATED
	signal opcode : std_logic_vector(1 downto 0);
	signal sensor_id : std_logic_vector(1 downto 0);

    -- STARTUP-RELATED
    signal pll_clk_en : std_logic_vector(0 to 1);
	type t_StartupState is (IDLE, ON18, ON33, ONPIX, ONCLK, ONRSTN, SEND_RDY, READY, OFFRSTN, OFFCLK, OFFPIX, OFF33, OFF18, SEND_POWEROFF);
	signal StartupState : t_StartupState := IDLE;
	signal readyflag, powerdownflag : std_logic;

	-- SPI-RELATED
	signal sck_en : std_logic;
	type t_SPIState is (IDLE, S_ADDR, R_DATA, W_DATA, SEND_RD_DATA);
	signal SPIState : t_SPIState := IDLE;
	signal spi_addr : std_logic_vector(8 downto 0);
	signal spi_data : std_logic_vector(15 downto 0);
	signal spiflag : std_logic;
    -- user signals end

begin

-- Instantiation of Axi Bus Interface S00_AXI
noip_ctrl_slave_lite_v1_0_S00_AXI_inst : noip_ctrl_slave_lite_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		rec_data => rec_data,
		send_data => send_data,
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	opcode <= rec_data(1 downto 0);
	sensor_id <= rec_data(3 downto 2);
	spi_addr <= rec_data(12 downto 4);

	startup_process : process(s00_axi_aclk, s00_axi_aresetn) 
		variable id : integer := 0;
	begin
		if(s00_axi_aresetn = '0') then
			pll_clk_en <= (others => '0');
			noip_reset_n <= (others => '0');
        	vdd18_toggle <= (others => '0');
        	vdd33_toggle <= (others => '0');
        	vddpix_toggle <= (others => '0');
        	sw_enable_n <= (others => '1');
			id := 0;
			readyflag <= '0';
			powerdownflag <= '0';
			StartupState <= IDLE;
		elsif(rising_edge(s00_axi_aclk)) then
			case StartupState is
				when IDLE => 
					if(bvalid = '1' and opcode = "11") then -- startup
						with sensor_id select id := 0 when "00",
													1 when others;
						sw_enable_n(id) <= '0';
						StartupState <= ON18;
					end if;

				when ON18 =>
					vdd18_toggle(id) <= '1';
					StartupState <= ON33;

				when ON33 =>
					vdd33_toggle(id) <= '1';
					StartupState <= ONPIX;

				when ONPIX => 
					vddpix_toggle(id) <= '1';
					StartupState <= ONCLK;

				when ONCLK =>
					clken(id) <= '1';
					StartupState <= ONRSTN;

				when ONRSTN =>
					noip_reset_n(id) <= '0';
					StartupState <= SEND_RDY;

				when SEND_RDY =>
					readyflag <= '1';

					State <= READY;

				when READY =>
					if(bvalid = '1' and opcode = "00") then -- shutdown
						
					end if;

				when OFFRSTN =>
					noip_reset_n <= '1';
					StartupState <= OFFCLK;

				when OFFCLK =>
					pll_clk_en <= '0';
					StartupState <= OFFPIX;
				
				when OFFPIX =>
					vddpix_toggle <= '0';
					StartupState <= OFF33;

				when OFF33 => 
					vdd33_toggle <= '0';
					StartupState <= OFF18;

				when OFF18 =>
					vdd18_toggle(id) <= '0';
					sw_enable_n(id) <= '1';
					StartupState <= SEND_POWEROFF;
				
				when SEND_POWEROFF =>
					StartupState <= IDLE;

				when others =>
					sw_enable_n <= (others => '1');
					StartupState <= IDLE;
			end case;
		end if;
	end process;
	
	pll_clk_generate : for i in 0 to 1 generate
		with pll_clk_en(i) select clk_pll_out(i) <= clk_72M_pll when '1',
								 '0' when others;
	end generate;

	spi_process : process(clk_spi_in, s00_axi_aresetn)
		variable addr_ctr : integer := 8; -- MSB FIRST
		variable data_ctr : integer := 15;
		variable mode : std_logic_vector := '0'; -- READ = '0', WRITE = '1'
	begin
		if(s00_axi_aresetn = '0') then
			sck_en <= '0';
			mosi <= '0';
			ss_n <= (others => '1');
			addr_ctr := 8;
			data_ctr := 15;
			mode <= '0';
			spiflag <= '0';
			SPIState <= IDLE;
		elsif(rising_edge(clk_spi_in)) then
			case SPIState is
				when IDLE =>
					addr_ctr := 8;
					data_ctr := 15;
					ss_n <= "11";
					if(bvalid = '1' and (opcode = "10" or opcode = "01")) then -- got a packet incoming
						with opcode select mode <= '0' when "01", -- "01" = read, "10" = write
												   '1' when others;
						with sensor_id select ss_n <= "10" when "00",
													  "01" when others;
						SPIState <= S_ADDR;
					end if;

				when S_ADDR =>
					sck_en <= '1';
					mosi <= spi_addr(addr_ctr);
					if(addr_ctr = -1) then -- write mode and be done with address
						mosi <= mode;
						if(mode = '0') then
							SPIState <= R_DATA;
						else
							spi_data <= rec_data(31 downto 16);
							SPIState <= W_DATA;			
						end if;
					end if;
					addr_ctr := addr_ctr - 1;

				when R_DATA =>
					-- do nothing : covered in falling edge of sck.

				when W_DATA =>
					mosi <= spi_data(data_ctr);
					if(data_ctr = 0) then
						sck_en <= '0';
						SPIState <= SEND_RD_DATA;
					end if;
					data_ctr := data_ctr - 1;

				when SEND_RD_DATA =>
					spiflag <= '1';
					SPIState <= IDLE;

				when others =>
					SPIState <= IDLE;

				end case;
		elsif(falling_edge(clk_spi_in)) then -- NOIP Doc p23 : "The miso pin must be sampled by the system on the falling edge of sck"
			case SPIState is
				when R_DATA =>
					spi_data(data_ctr) <= miso;
					if(data_ctr = 0) then
						sck_en <= '0';
						SPIState <= IDLE;
					end if;
					data_ctr := data_ctr - 1;
				end case;
		end if;
	end process;

	with sck_en select sck <= clk_spi_in when '1',
					          '0' when others;

	flagprocess : process(S_AXI_ARESETN, readyflag,powerdownflag,spiflag)
	begin
		if(s00_axi_aresetn = '1') then
			send_data <= (others => '0');
		else
			send_data(3 downto 2) <= sensor_id;
			if(readyflag = '1') then
				send_data(1 downto 0) <= "11";
			elsif(powerdownflag = '1') then
				send_data(1 downto 0) <= "00";
			elsif(spiflag = '1') then
				send_data(1 downto 0) <= "01";
				spi_data(31 downto 16) <= spi_data;
			end if;
		end if;

	end process;

	-- User logic ends

end arch_imp;
