library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity noip_lvds_stream_master_stream_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		image_start : in std_logic;
		image_end : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end noip_lvds_stream_master_stream_v1_0_M00_AXIS;

architecture implementation of noip_lvds_stream_master_stream_v1_0_M00_AXIS is                                               
	                                                                                                                    
	type fsm_state is (IDLE, SEND_IMG, WRITE_KERNEL);                                                              
	signal State : fsm_state;                                                                               

	-- AXI Stream internal signals
	--streaming data valid
	signal axis_tvalid	: std_logic;
	--streaming data valid delayed by one clock cycle
	signal axis_tvalid_delay	: std_logic;
	--Last of the streaming data 
	signal axis_tlast	: std_logic;
	--Last of the streaming data delayed by one clock cycle
	signal axis_tlast_delay	: std_logic;
	--FIFO implementation signals
	signal stream_data_out	: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
	signal tx_en	: std_logic;	


begin
	-- I/O Connections assignments

	M_AXIS_TVALID	<= axis_tvalid_delay;
	M_AXIS_TDATA	<= stream_data_out;
	M_AXIS_TLAST	<= axis_tlast_delay;
	M_AXIS_TSTRB	<= (others => '1');
                                          
	maxis_fsm : process(M_AXIS_ACLK, M_AXIS_ARESETN) 
	begin
		if(M_AXIS_ARESETN = '0') then
			State <= IDLE;
			axis_tvalid <= '0';
			axis_tlast <= '0';
			stream_data_out <= (others => '0');
		-- elsif(rising_edge(M_AXIS_ACLK)) then
		-- 	case State is
		-- 		when IDLE =>
		-- 			axis_tlast <= '0';
		-- 			if(image_start = '1') then
		-- 				State <= SEND_IMG;
		-- 			end if;

		-- 		when SEND_IMG =>
		-- 			if(fifo_empty = '0') then
		-- 				fifo_rd_en <= '1';
		-- 			end if;

		-- 		when WRITE_KERNEL =>
		-- 			fifo_rd_en <= '0';
		-- 			axis_tvalid <= '1';
		-- 			stream_data_out <= fifo_dout;
		-- 			if(m_axis_tready = '0') then
		-- 				State <= SEND_IMG;
		-- 			else
		-- 				State <= WRITE_KERNEL;
		-- 			end if;
				
		-- 		when others =>
		-- 			State <= IDLE;
		-- 	end case;
		end if;
	end process;                                                                                            
	                                                                                               
	-- Delay the axis_tvalid and axis_tlast signal by one clock cycle                              
	-- to match the latency of M_AXIS_TDATA                                                        
	process(M_AXIS_ACLK)                                                                           
	begin                                                                                          
	  if (rising_edge (M_AXIS_ACLK)) then                                                          
	    if(M_AXIS_ARESETN = '0') then                                                              
	      axis_tvalid_delay <= '0';                                                                
	      axis_tlast_delay <= '0';                                                                 
	    else                                                                                       
	      axis_tvalid_delay <= axis_tvalid;                                                        
	      axis_tlast_delay <= axis_tlast;                                                          
	    end if;                                                                                    
	  end if;                                                                                      
	end process;                                                                                   

	--FIFO read enable generation 

	tx_en <= M_AXIS_TREADY and axis_tvalid;                                   
	                                                                                                                                   

	-- Add user logic here

	-- User logic ends

end implementation;
