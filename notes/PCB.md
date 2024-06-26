	
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

## Connecteurs

+ points de test pour les couches internes?
## Design

[LVDS PCB Design Guidelines (Cadence)](https://resources.pcb.cadence.com/blog/2023-lvds-pcb-layout-guidelines)

https://www.engineersgarage.com/pcb-designing-using-kicad-part-12-12-multilayer-pcb-design/

https://forum.kicad.info/t/multi-layer-pcb-tutorial/31619

[JLC PCB](https://cart.jlcpcb.com/quote)

4 layer

100Ω diff impedance (50 Ω single-ended)

[JLCPCB Stackup (impedance-controlled)](https://jlcpcb.com/impedance)

https://www.digikey.com/en/maker/projects/how-to-route-differential-pairs-in-kicad-for-usb/45b99011f5d34879ae1831dce1f13e93

https://support.xilinx.com/s/question/0D52E00006hpRLbSAM/inverting-lvds-signals-for-efficient-pcb-layout-with-zynq7000?language=en_US
https://support.xilinx.com/s/question/0D52E00006iI4K4SAK/lvds-invert?language=en_US

-> LOGICAL INVERSION OF THE DATA PINS **AND** EDGE INVERSION OF LVDS_CLK
## Dimensions

56 mm inter-connecteur (inside-outside)