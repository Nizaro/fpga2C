################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name lvds_clk_0_p -period 10 [get_ports lvds_clk_0_p]
create_clock -name lvds_clk_0_n -period 10 [get_ports lvds_clk_0_n]
create_clock -name processing_system7_0_FCLK_CLK0 -period 20 [get_pins processing_system7_0/FCLK_CLK0]
create_clock -name processing_system7_0_FCLK_CLK1 -period 13.889 [get_pins processing_system7_0/FCLK_CLK1]

################################################################################