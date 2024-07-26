################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name lvds_clk_0_p -period 2.778 [get_ports lvds_clk_0_p]
create_clock -name lvds_clk_0_n -period 2.778 [get_ports lvds_clk_0_n]
create_clock -name lvds_sync_0_p -period 10 [get_ports lvds_sync_0_p]
create_clock -name lvds_sync_0_n -period 10 [get_ports lvds_sync_0_n]
create_clock -name lvds_dout0_0_p -period 10 [get_ports lvds_dout0_0_p]
create_clock -name lvds_dout0_0_n -period 10 [get_ports lvds_dout0_0_n]
create_clock -name lvds_dout1_0_n -period 10 [get_ports lvds_dout1_0_n]
create_clock -name lvds_dout1_0_p -period 10 [get_ports lvds_dout1_0_p]
create_clock -name lvds_dout2_0_n -period 10 [get_ports lvds_dout2_0_n]
create_clock -name lvds_dout2_0_p -period 10 [get_ports lvds_dout2_0_p]
create_clock -name lvds_dout3_0_n -period 10 [get_ports lvds_dout3_0_n]
create_clock -name lvds_dout3_0_p -period 10 [get_ports lvds_dout3_0_p]
create_clock -name lvds_clk_1_n -period 2.778 [get_ports lvds_clk_1_n]
create_clock -name lvds_clk_1_p -period 2.778 [get_ports lvds_clk_1_p]
create_clock -name lvds_dout0_1_n -period 10 [get_ports lvds_dout0_1_n]
create_clock -name lvds_dout0_1_p -period 10 [get_ports lvds_dout0_1_p]
create_clock -name lvds_dout1_1_n -period 10 [get_ports lvds_dout1_1_n]
create_clock -name lvds_dout1_1_p -period 10 [get_ports lvds_dout1_1_p]
create_clock -name lvds_dout2_1_n -period 10 [get_ports lvds_dout2_1_n]
create_clock -name lvds_dout2_1_p -period 10 [get_ports lvds_dout2_1_p]
create_clock -name lvds_dout3_1_n -period 10 [get_ports lvds_dout3_1_n]
create_clock -name lvds_dout3_1_p -period 10 [get_ports lvds_dout3_1_p]
create_clock -name lvds_sync_1_p -period 10 [get_ports lvds_sync_1_p]
create_clock -name lvds_sync_1_n -period 10 [get_ports lvds_sync_1_n]
create_clock -name processing_system7_0_FCLK_CLK0 -period 10 [get_pins processing_system7_0/FCLK_CLK0]
create_clock -name processing_system7_0_FCLK_CLK1 -period 14 [get_pins processing_system7_0/FCLK_CLK1]

################################################################################