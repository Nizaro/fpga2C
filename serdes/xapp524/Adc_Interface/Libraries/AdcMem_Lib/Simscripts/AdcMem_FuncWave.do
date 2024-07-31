onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Constants}
add wave -noupdate /adcmem_testbench/Sim_C_StimVecFile
add wave -noupdate /adcmem_testbench/Sim_C_ClockPeriod
add wave -noupdate /adcmem_testbench/Sim_C_WrPhase
add wave -noupdate /adcmem_testbench/Sim_C_RdPhase
add wave -noupdate -radix decimal /adcmem_testbench/Sim_C_AdcWireInt
add wave -noupdate -divider {Testbench Signals -- WRITE TO MEM}
add wave -noupdate /adcmem_testbench/Sim_ClkIn
add wave -noupdate /adcmem_testbench/Sim_EnaIn
add wave -noupdate /adcmem_testbench/Sim_RstIn
add wave -noupdate -radix binary /adcmem_testbench/Sim_DatIn
add wave -noupdate -divider {Testbench Signals -- READ FROM MEM}
add wave -noupdate /adcmem_testbench/Sim_ClkOut
add wave -noupdate /adcmem_testbench/Sim_RstOut
add wave -noupdate /adcmem_testbench/Sim_EnaOut
add wave -noupdate /adcmem_testbench/Sim_DatOut
add wave -noupdate -divider {Testbench Signals -- FLAGS}
add wave -noupdate /adcmem_testbench/Sim_Flags
add wave -noupdate /adcmem_testbench/Sim_Full
add wave -noupdate /adcmem_testbench/Sim_Empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {151344 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 250
configure wave -valuecolwidth 175
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
WaveRestoreZoom {0 ps} {1050 ns}
