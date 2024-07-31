onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench signals}
add wave -noupdate /cnttenbit_testbench/Sim_CntClk
add wave -noupdate /cnttenbit_testbench/Sim_CntRst
add wave -noupdate /cnttenbit_testbench/Sim_CntEna
add wave -noupdate /cnttenbit_testbench/Sim_CntOut
add wave -noupdate /cnttenbit_testbench/Sim_CntTc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 214
configure wave -valuecolwidth 74
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {34068 ns}
