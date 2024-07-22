
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

[Xilinx Forums - How do I program Z turn board without a JTAG Cable ?](https://support.xilinx.com/s/question/0D52E00006hpjD9SAI/how-do-i-program-z-turn-board-without-a-jtag-cable-?language=en_US)
[Xilinx Forums - booting from SD-Card](https://support.xilinx.com/s/question/0D52E00006hpY1gSAE/booting-from-sdcard?language=en_US)

[Xilinx Wiki - Prepare boot image](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare+boot+image)

Needed : 
- bitfile (BIN?)
- fsbl
- software

D25 (blue) : powered (from VDD_33)
D7 (red) : FPGA_INIT_DONE
D29 and D30 (green) : user leds
D34 (RGB) : user status led

# Interfaces

# HDMI

Monochrome ! 

p11
SIL9022A

Xilinx Video Format : 24 bit
Zturn used pins : 16 bit (5 pins RED, 6 pins GREEN, 5 pins BLUE) -> ?????
-> conversion : doc SIL9 p42

Et Interface I2C0 (sortie EMIO, routée vers la Bank 34)

f_MCLK = 12 MHz

[Xilinx Video Mixer](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841850/Video+Mixer)
# Ethernet

p10
YT8531SC (U23)
Interface ENET0 intégrée au Zynq : pins MIO16-27 (Bank 500)
-> [PS7-6] LVCMOS33 (3.3V) is not supported for RGMII interface in Ethernet0. Recommendation is to use 1.8/2.5V IO. -> ???
Driver : emacps v3.20 - [doc](https://xilinx.github.io/embeddedsw.github.io/emacps/doc/html/api/index.html)

# USB

p17
CP2103-GM (U22)
UART1 intégré au Zynq, sur les pins MIO48 et 49 (Bank 500)
