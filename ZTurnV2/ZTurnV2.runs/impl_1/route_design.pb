
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z020Z17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z020Z17-349h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 2e35e7496
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 3270.344 ; gain = 0.000 ; free physical = 136 ; free virtual = 15540h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 2e35e7496
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 3270.344 ; gain = 0.000 ; free physical = 244 ; free virtual = 15499h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 2e35e7496
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 3270.344 ; gain = 0.000 ; free physical = 243 ; free virtual = 15498h px� 
L

Phase %s%s
101*constraints2
2.3 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.3 Update Timing | Checksum: 24b545153
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:25 . Memory (MB): peak = 3270.344 ; gain = 0.000 ; free physical = 153 ; free virtual = 15310h px� 
{
Intermediate Timing Summary %s164*route2:
8| WNS=-4.061 | TNS=-428.575| WHS=-1.373 | THS=-581.147|
Z35-416h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 2f938889c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:45 ; elapsed = 00:00:26 . Memory (MB): peak = 3270.344 ; gain = 0.000 ; free physical = 152 ; free virtual = 15311h px� 
K

Phase %s%s
101*constraints2
3 2
Global RoutingZ18-101h px� 
H
%s*common2/
-Phase 3 Global Routing | Checksum: 2f938889c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:45 ; elapsed = 00:00:26 . Memory (MB): peak = 3270.344 ; gain = 0.000 ; free physical = 152 ; free virtual = 15311h px� 
L

Phase %s%s
101*constraints2
4 2
Initial RoutingZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Initial Net Routing PassZ18-101h px� 
T
%s*common2;
9Phase 4.1 Initial Net Routing Pass | Checksum: 1ec23fb63
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:44 ; elapsed = 00:00:59 . Memory (MB): peak = 4066.332 ; gain = 795.988 ; free physical = 158 ; free virtual = 14083h px� 
I
%s*common20
.Phase 4 Initial Routing | Checksum: 1ec23fb63
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:44 ; elapsed = 00:00:59 . Memory (MB): peak = 4066.332 ; gain = 795.988 ; free physical = 158 ; free virtual = 14083h px� 
�	
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1392�
�The top 5 pins with tight setup and hold constraints:

+====================+===================+============================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                        |
+====================+===================+============================================================+
| clk_fpga_0         | clk_fpga_0        | main_design_i/noip_ctrl_0/U0/mosi_reg/D                    |
| clk_fpga_0         | clk_fpga_0        | main_design_i/noip_ctrl_0/U0/ss_n_reg[0]/D                 |
| clk_fpga_0         | clk_fpga_0        | main_design_i/noip_ctrl_0/U0/ss_n_reg[1]/D                 |
| clk_fpga_0         | clk_fpga_0        | main_design_i/noip_ctrl_0/U0/FSM_onehot_SPIState_reg[1]/CE |
| clk_fpga_0         | clk_fpga_0        | main_design_i/noip_ctrl_0/U0/FSM_onehot_SPIState_reg[3]/CE |
+--------------------+-------------------+------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
Z35-580h px� 
O

Phase %s%s
101*constraints2
5 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
5.1 2
Global Iteration 0Z18-101h px� 