onsemi
NOIP1SN1300A-QTI
"1.3 Megapixel, Monochrome, LVDS Output, Protective Foil"

14.22mm de côté

Pinout p66

Clock input (p11) : either 360 MHz LVDS, 100 Ohm-terminated if the PLL is bypassed, or 72 MHz through the PLL - **FCLK_CLK1**

# Operating Modes (p13)

Pipelined Global Shutter Mode, **Master** 
No triggers (floating)
# Power-Up Sequence (p17)

ACTIVER vdd_18, puis vdd_33, puis vdd_pix, puis clock_input, puis reset_n, puis SPI

vdd_33 = 3.3V, 140 mA - OK pour VDD_33, sort 3A
vdd_pix = 3.3V, 5 mA - idem
vdd_18 = 1.8V, 80 mA - OK pour VDD_BAT18, sort 3A
3 tensions à couper

## Power-Down sequence (p18)

reset_n pull down, puis clk, puis vdd_pix, puis vdd_33, puis vdd_18.
# Interface SPI (p23)

The PYTHON 1300 image sensor uses **9−bit addresses** and **16−bit data words**.
**FUCK YOU ONSEMI !!!!!!!!**

io0_o = sensor's mosi
io1_i = sensor's miso
sck_o = sensor's sck
ss_o = sensor's ss

f_spi_sck voulue côté capteur : 10 MHz ?
Du moins fin/fspi >= 6, comme fin_pll = 72M, f_spi <= 12 M.
## Config

- Monochrome and LVDS : 0x3 @2
- PLL Operational and enabled : 0x3 @16
- Clock Generator : enable all clocks, use PLL, and divide by 5 : 0x5 @32
- 
- Only one window
- Set ROI : 
- 1 black line, no blank : 0x1 @197 / 2 black lines, 1 blank : 0x102 @197

# Interface LVDS (p35)

4 canaux de sortie LVDS + 1 sortie clock (pour synchro "mésochrone") + 1 canal sync (metadata) = **6 paires LVDS** (24 paires sur la Bank 35 : 4 capteurs synchrones max)

Valeurs de SYNC : 
- FRAME_START : 0x2AA
- FRAME_END : 0x32A
- LINE_START : 0x0AA
- LINE_END : 0x22A
- BL (Black pixel) : 0x015 
- IMG (Valid pixel) : 0x035
- CRC : 0x059
- TR (Training pattern) : 0x3A6

# Data Order (p40)

Mode 4 canaux : 1 canal = 2 pixels du kernel de 1x8
