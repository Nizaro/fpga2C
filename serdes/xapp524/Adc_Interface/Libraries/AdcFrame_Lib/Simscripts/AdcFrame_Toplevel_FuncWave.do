onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Constants}
add wave -noupdate -radix ascii /adcframe_toplevel_testbench/Sim_C_FrmPattern
add wave -noupdate -radix unsigned /adcframe_toplevel_testbench/Sim_C_AdcWireInt
add wave -noupdate -radix unsigned /adcframe_toplevel_testbench/Sim_C_AdcBits
add wave -noupdate -radix time /adcframe_toplevel_testbench/Sim_C_ClockPeriod
add wave -noupdate -radix unsigned /adcframe_toplevel_testbench/Sim_C_OnChipLvdsTerm
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClk_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkDiv_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkRst_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkEna_pin
add wave -noupdate -divider {Calculated patterns from C_FrmPattern}
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPattern
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPatternBitShifted
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPatternBitSwapped
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPatternA
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPatternB
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPatternC
add wave -noupdate /adcframe_toplevel_testbench/UUT/AdcFrame_Toplevel_I_AdcFrame/IntPatternD
add wave -noupdate -divider <NULL>
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClk_n_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClk_p_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkDone_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkReSync_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkBitSlip_p_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkBitSlip_n_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkSwapMux_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkMsbRegEna_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkLsbRegEna_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkReSyncOut_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkDat_pin
add wave -noupdate /adcframe_toplevel_testbench/Sim_FrmClkSyncWarn_pin
add wave -noupdate -divider <NULL>
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {402010799 fs} 0} {{Cursor 2} {1316200000 fs} 0}
quietly wave cursor active 2
configure wave -namecolwidth 503
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 fs} {2100 ns}
