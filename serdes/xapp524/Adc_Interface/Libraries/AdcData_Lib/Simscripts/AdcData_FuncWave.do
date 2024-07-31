onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Constants}
add wave -noupdate /adcdata_testbench/Sim_C_CheckVecFile
add wave -noupdate /adcdata_testbench/Sim_C_StimVecFile
add wave -noupdate /adcdata_testbench/Sim_C_SimClockPeriod
add wave -noupdate -radix decimal /adcdata_testbench/Sim_C_AdcWireInt
add wave -noupdate -radix decimal /adcdata_testbench/Sim_C_AdcBits
add wave -noupdate -radix decimal /adcdata_testbench/Sim_C_AdcBytOrBitMode
add wave -noupdate -radix decimal /adcdata_testbench/Sim_C_AdcMsbOrLsbFst
add wave -noupdate -radix decimal /adcdata_testbench/Sim_C_NumberOfBitslips
add wave -noupdate /adcdata_testbench/Sim_C_SwapBits
add wave -noupdate /adcdata_testbench/Sim_C_DoneHigh
add wave -noupdate -divider {TestBench Signals}
add wave -noupdate /adcdata_testbench/Sim_DatD0_n
add wave -noupdate /adcdata_testbench/Sim_DatD0_p
add wave -noupdate /adcdata_testbench/Sim_DatD1_n
add wave -noupdate /adcdata_testbench/Sim_DatD1_p
add wave -noupdate /adcdata_testbench/Sim_DatClk
add wave -noupdate /adcdata_testbench/Sim_DatClkDiv
add wave -noupdate /adcdata_testbench/Sim_DatRst
add wave -noupdate /adcdata_testbench/Sim_DatEna
add wave -noupdate /adcdata_testbench/Sim_DatDone
add wave -noupdate /adcdata_testbench/Sim_DatBitSlip_p
add wave -noupdate /adcdata_testbench/Sim_DatBitSlip_n
add wave -noupdate /adcdata_testbench/Sim_DatSwapMux
add wave -noupdate /adcdata_testbench/Sim_DatMsbRegEna
add wave -noupdate /adcdata_testbench/Sim_DatLsbRegEna
add wave -noupdate /adcdata_testbench/Sim_DatReSync
add wave -noupdate /adcdata_testbench/Sim_DatOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 270
configure wave -valuecolwidth 155
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
WaveRestoreZoom {1963145 ps} {1994099 ps}
