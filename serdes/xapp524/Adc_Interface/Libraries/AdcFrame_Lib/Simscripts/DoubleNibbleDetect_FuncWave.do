onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Constants}
add wave -noupdate /doublenibbledetect_testbench/Sim_C_StimVecFile
add wave -noupdate /doublenibbledetect_testbench/Sim_C_ClockPeriod
add wave -noupdate -radix decimal /doublenibbledetect_testbench/Sim_C_AdcBits
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate /doublenibbledetect_testbench/Sim_Clock
add wave -noupdate /doublenibbledetect_testbench/Sim_RstIn
add wave -noupdate /doublenibbledetect_testbench/Sim_Final
add wave -noupdate /doublenibbledetect_testbench/Sim_DataOut
add wave -noupdate /doublenibbledetect_testbench/Sim_DataIn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 295
configure wave -valuecolwidth 62
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
WaveRestoreZoom {1963145 ps} {1995645 ps}
