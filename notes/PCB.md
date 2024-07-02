	
BOM  :
- 2x résistances de 47k, taille 0603 en CMS : https://eu.mouser.com/ProductDetail/Panasonic/ERA-3AED473V?qs=sGAEpiMZZMvdGkrng054t%252Bl8%252B9D8YbFNy%252B3GoZaZX5g%3D
Trois valeurs de capacités pour découplage, taille 0603, diélectrique X7R, en CMS :
- 22x 10nF : https://eu.mouser.com/ProductDetail/KEMET/C0603C103M5RAC3121?qs=r%2FVmNO8Tjq5bqwGmLxfkAQ%3D%3D
- 22x 100nF : https://eu.mouser.com/ProductDetail/KEMET/C0603C104K3RACTU?qs=l5k%252BbMnNDklvfdneglCDAg%3D%3D
- 22x 1uF : https://eu.mouser.com/ProductDetail/KEMET/C0603C105K8RAC7411?qs=2FIyTMJ0hNmakJCBcUEzhg%3D%3D

- 2x interrupteur analogique NX3L0 : https://eu.mouser.com/ProductDetail/NXP-Semiconductors/NX3L4053PW118?qs=vbj%2FKoHZRAjvxbPUnPksgQ%3D%3D

- 1x régulateur de tension 1.8V MIC5504 : https://www.mouser.fr/ProductDetail/Microchip-Technology/MIC5504-1.8YM5-TR?qs=U6T8BxXiZAWcKt0MaB%252BQvA%3D%3D 
- et ses 2x capacités céramiques 1uF X7R : https://www.mouser.fr/ProductDetail/TAIYO-YUDEN/MAJCT168BB7105KTEA01?qs=sGAEpiMZZMuMW9TJLBQkXrqaXnLRHqgMZrnx5TAccu0%3D

Et un capteur de plus

**PAS DE VIS POUR SUPPORT LENTILLE !!!**
## Connecteurs

+ points de test pour les couches internes?
# Design

[LVDS PCB Design Guidelines (Cadence)](https://resources.pcb.cadence.com/blog/2023-lvds-pcb-layout-guidelines)

https://www.engineersgarage.com/pcb-designing-using-kicad-part-12-12-multilayer-pcb-design/

https://forum.kicad.info/t/multi-layer-pcb-tutorial/31619

[JLC PCB](https://cart.jlcpcb.com/quote)

4 layer - JLC04161H-7628

100Ω diff impedance (50 Ω single-ended)

[JLCPCB Stackup (impedance-controlled)](https://jlcpcb.com/impedance)

https://www.digikey.com/en/maker/projects/how-to-route-differential-pairs-in-kicad-for-usb/45b99011f5d34879ae1831dce1f13e93

https://support.xilinx.com/s/question/0D52E00006hpRLbSAM/inverting-lvds-signals-for-efficient-pcb-layout-with-zynq7000?language=en_US
https://support.xilinx.com/s/question/0D52E00006iI4K4SAK/lvds-invert?language=en_US

-> LOGICAL INVERSION OF THE DATA PINS **AND** EDGE INVERSION OF LVDS_CLK

## Paramètres

Distance entre pins NOIP : 1.016 mm
(en mm) W = 0.29, S = 0.2, B = 0.2104 , D > 0.4
## Effets LineCalc

W↗ : Ω↘
S↗ : Ω↗
H↗ : Ω↗
F↗ : Ω↘
## Limites JLCPCB

Clearance : 0.127 mm
Trace Width : 0.09 mm
Trace Spacing : 0.09 mm
Prepreg depth : 0.2104 mm
## Documents

- [ ] Altera : Board Design Guidelines for LVDS Systems

## List of design guidelines

- [x] Space between the conductors should not be more than twice the width (S < 2W)
- [x] Thickness of the board should be more than the space between the conductors (B > S)
- [x] Space between two adjacent differential pairs should be greater than or equal to twice the space between the two individual conductors. (D > 2S)
- [x] The commonly used FR-4 material works well for low frequency (500 to 600 MHz) applications. G-TEK or Teflon can be considered for high-speed designs.
- [ ] When using LVDS devices, all the VCC_CLK and VCC_CKOUT pins should be bypassed with a 0.1-, 0.01-, and 0.001 µF mica, ceramic or polystyrene 0805-size surface-mount chip capacitors connected in parallel. These capacitors should be placed immediately underneath the pins. In addition to these capacitors, another 2.7 µF capacitor should be placed close to the pin.
- [x] Keep the LVDS drivers and the receiver as close to any connectors as possible.
- [x] The physical length of each trace between the transmitter outputs and the connector should be matched to within 5 mm of each other to reduce data skew.
- [x] Isolate LVDS signals from TTL signals to reduce crosstalk (preferably on different layers). 
- [x] Separate LVDS ground and supply planes.
- [ ] Always use high-impedance, low-capacitance scope probes with a wide bandwidth scope.
- [x] Keep stub lengths as short as possible.
- [x] Multiple vias should be used to connect to power and ground planes.

## Calculs

