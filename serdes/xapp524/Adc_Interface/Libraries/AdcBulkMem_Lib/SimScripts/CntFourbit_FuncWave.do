onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Constants in the Testbench}
add wave -noupdate /cntfourbit_testbench/Sim_C_CascdPos
add wave -noupdate /cntfourbit_testbench/Sim_C_Hblknm
add wave -noupdate -divider {Signal in the Testbench}
add wave -noupdate /cntfourbit_testbench/Sim_CntClk
add wave -noupdate /cntfourbit_testbench/Sim_CntRst
add wave -noupdate /cntfourbit_testbench/Sim_CntEna
add wave -noupdate /cntfourbit_testbench/Sim_CntCmbIn
add wave -noupdate /cntfourbit_testbench/Sim_CntCmbTcIn
add wave -noupdate /cntfourbit_testbench/Sim_CntOut
add wave -noupdate /cntfourbit_testbench/Sim_CntCmbTc
add wave -noupdate /cntfourbit_testbench/Sim_CntTc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 fs} 0}
quietly wave cursor active 0
configure wave -namecolwidth 251
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
configure wave -timelineunits fs
update
WaveRestoreZoom {8995335 fs} {8999923 fs}
