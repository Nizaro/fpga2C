
set TopModule "v_mix"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 1
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix main_design_v_mix_0_0_
set RtlSubPrefix main_design_v_mix_0_0_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-2
set SourceFiles {sc {} c {../../../../ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_csc.cpp ../../../../ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_dma.cpp ../../../../ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_mix.cpp}}
set SourceFlags {sc {} c {{-I/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src} {-I/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src} {-I/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src}}}
set DirectiveFile {}
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile sol.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
