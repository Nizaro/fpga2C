
[Getting Started](https://www.fpgadeveloper.com/2017/10/getting-started-with-the-myir-z-turn.html/)

[Page MYIRTech](https://www.myirtech.com/list.asp?id=708)

XC7Z020-2CLG400

Git : [zturn-stuff](https://github.com/q3k/zturn-stuff/tree/master) de Serge Bazanski (q3k)

MIO? (Bank 500)

# LVDS

Bank 35 : 24 paires (10-11-12-13 et 20-21-22-23)

[LVDS interface design with Zynq-7000](https://support.xilinx.com/s/question/0D54U00007dHJ3fSAG/lvds-interface-design-with-zynq7000?language=en_US)

Nécessite LVDS_25 ou BLVDS_25, alimentation 2.5V
-> Pas présent : **INPUT ONLY**

# Programmation

~~JTAG 14 pins~~
[Prepare boot image](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare+boot+image)

D25 (blue) : powered (from VDD_33)
D7 (red) : FPGA_INIT_DONE
D29 and D30 (green) : user leds
