# Design

Les objectifs principaux de ce PCB sont, par ordre de priorité : 
1. Transmettre les signaux LVDS des capteurs vers la carte de la manière la plus intègre possible
2. Synchroniser les triggers
3. Permettre une configuration rapide des capteurs
4. Placer les capteurs à 10 cm l'un de l'autre

L'objectif #1 nécessite déjà de faire quelques recherches pour trouver des recommandations de design pour accommoder au mieux des paires LVDS. 
La décision a été prise très tôt de réaliser un PCB sous forme de "shield", qui viendrait directement se fixer aux connecteurs GPIO de la carte Zturn V2, pour éviter de tirer des cables qui introduiraient beaucoup de bruit dans le circuit.
Comme le circuit à réaliser est à hautes fréquences (360 MHz au maximum) et nécessitant un contrôle fin des délais de propagations, et donc de l'impédance, on a choisi une configuration à 4 couches avec contrôle d'impédance, noté JLC04161H-7628 sur le site de JLCPCB. Les détails du stackup sont en Annexe 1. 

Selon la fig. 2 de WP-DESLVDS, l'ordre des couches devrait être, de haut en bas : LVDS, VCC, GND, et autres signaux - cela permet de protéger les signaux différentiels des signaux simples. En revanche, comme dans notre cas il n'y a pas un VCC mais six différents, et qu'ils peuvent être activés ou désactivés, on a choisi l'arrangement LVDS, GND, VCC, et autres signaux. La couche VCC (In2.Cu) un plan d'alimentation +3.3V générique pour les composant de la couche du bas (B.Cu) - et la couche GND (In1.Cu) contient les traces d'alimentation pour les capteurs. Enfin, la couche du haut (F.Cu) contient les signaux hautes-fréquences : les paires LVDS et les signaux SPI.

Une autre étape essentielle avant de commencer le design est d'intégrer les contraintes de l'imprimeur de circuit, JLCPCB. Elles peuvent êtres ensuite rajoutées directement dans les netclasses, les tailles prédéfinies, ou les contraintes du projet KiCad. Les critères particulièrement importants sont l'écart minimal entre pistes (on cherche à rapprocher les pistes d'une même paire le plus possible), la l'épaisseur minimale de piste, et l'espacement entre divers objets du circuit, notamment les trous et les composants.

Une fois ces données rassemblées, il faut maintenant trouver des dimensions de pistes qui donneraient une bonne impédance. Les détails du calcul sont en Annexe 3. Comme tous les paramètres du substrat sont fixés, il suffit de jouer avec W et L jusqu'à trouver une bonne valeur d'impédance : ici, on cherche 50Ω en signal simple et 100Ω en différentiel. Cela permet de créer nos deux netclasses personnalisées : une pour les signaux différentiels et l'autre pour les signaux simples. 

Avant de commencer le routage, il faut évidemment disposer les empreintes, du moins celles dont la position est fixée par nos contraintes. Ici, les connecteurs J1 et J2 sont alignés et à exactement 53 mm l'un de l'autre. Les deux capteurs sont espacés de 100 mm, même si cette distance peut être changée légèrement si le routage devient trop compliqué.
Horizontalement, ils sont centrés autour de la pin 50 de J1, pour que les traces LVDS soient de longueur très proches chez les deux capteurs, ce qui permet de les synchroniser.
On commence donc par tracer les pistes LVDS, les plus courtes possibles. Bien sûr, comme les pins des capteurs ne sont pas en face des pins du connecteur au vu de leurs largeur différentes, les pistes d'un même bus ne seront pas de même longueur. Cela peut en revanche être corrigé après coup avec des "accordéons" ou du *length tuning* sur KiCad, si les paires sont suffisamment espacées. L'objectif est plutôt de limiter le skew au sein d'une même paire en routant les pistes très simplement.
On a choisi de router les pistes de l'interface SPI sur la couche du haut pour plusieurs raisons : déjà, la couche à signaux simple du bas est très encombrée et garantir un tracé efficace pour cette interface synchrone n'est pas une mince affaire. De plus, les interférences SPI / LVDS ne sont pas un problème majeur, car ces deux interfaces ne seront pas utilisées au même moment. Au moment d'une configuration par SPI, les données envoyées par le capteur par LVDS ne sont pas importantes, ou le capteur n'est pas configuré et n'envoie simplement rien sur ce canal. Des précautions nécessaires ont toutefois été prises pour éloigner ces deux interfaces, notamment au niveau du retour vers la masse.

Sur la face du bas, on dispose le régulateur de tension et les interrupteurs de façon symétrique, pour réduire la longueur des pistes et limiter les croisements. En cas de chevauchement inévitable, on privilégie de faire passer les pistes d'alimentation par le plan de masse - c'est une pratique courante qui permet une bonne dissipation thermique, et en général les signaux qui évoluent très lentement peuvent passer sans problème par le plan de masse interne.
Une fois tout cela routé, il faut relier les plans de masse et d'alimentation entièrement avec de nombreux vias, et découpler les grands puits de courant avec des capacités.

Une partie importante de notre design est de limiter le *skew* (décalage temporel) entre les signaux et leur horloge, voire entre certains signaux eux-mêmes. Comme l'impédance des pistes est constante sur tout le circuit, la vitesse des signaux est la même, et donc que pour faire arriver deux signaux au même moment, il faut rendre leurs longueurs de piste égales. L'outil de tuning de KiCad peut faire cela : il suffit de noter la longueur de la piste la plus longue (on ne peut pas facilement raccourcir des pistes), puis de rallonger les autres pistes avec l'outil, qui crée des "accordéons". Cette pratique permet de synchroniser toutes les paires LVDS et les signaux SPI avec leurs horloges, et de rentre les deux triggers simultanés pour permettre une prise de vue synchronisée chez les deux capteurs. 

# BOM

- 2x capteur d'image PYTHON 1300 : [NOIP1SN1300A-QTI sur Mouser](https://www.mouser.fr/ProductDetail/onsemi/NOIP1SN1300A-QTI?qs=tCMd4XlZ%2FiCOUhJPH02UtA%3D%3D)
- 2x résistances de 47k, taille 0603 en CMS : [ERA-3AED473V sur Mouser](https://eu.mouser.com/ProductDetail/Panasonic/ERA-3AED473V?qs=sGAEpiMZZMvdGkrng054t%252Bl8%252B9D8YbFNy%252B3GoZaZX5g%3D)
- 22x capacités de découplage 100nF, taille 0603, diélectrique X7R, en CMS : [KEMET C0603C104K3RACTU sur Mouser](https://eu.mouser.com/ProductDetail/KEMET/C0603C104K3RACTU?qs=l5k%252BbMnNDklvfdneglCDAg%3D%3D) 
- 2x interrupteurs analogiques NX3L0 : [Mouser](https://eu.mouser.com/ProductDetail/NXP-Semiconductors/NX3L4053PW118?qs=vbj%2FKoHZRAjvxbPUnPksgQ%3D%3D)
- 1x régulateur de tension 1.8V MIC5504 : [Mouser](https://www.mouser.fr/ProductDetail/Microchip-Technology/MIC5504-1.8YM5-TR?qs=U6T8BxXiZAWcKt0MaB%252BQvA%3D%3D) 
- et ses 2x capacités céramiques 1uF X7R : [Taiyo Yuden MAJCT168BB7105KTEA01 sur Mouser](https://www.mouser.fr/ProductDetail/TAIYO-YUDEN/MAJCT168BB7105KTEA01?qs=sGAEpiMZZMuMW9TJLBQkXrqaXnLRHqgMZrnx5TAccu0%3D)
- 2x connecteur Samtec 80 pins : [TFM-140-12-L-D-A sur Mouser](https://www.mouser.fr/ProductDetail/Samtec/TFM-140-12-L-D-A?qs=Cqqh%252BS766wmcDd3GIeeEAw%3D%3D)

# Annexes

## Annexe 1 : Configuration du PCB (JLC04161H-7628)

[Source (JLCPCB)]([JLCPCB Stackup (impedance-controlled)](https://jlcpcb.com/impedance))

![[board_setup_pcb.png]]
## Annexe 2 : Contraintes de JLCPCB

[Source](https://jlcpcb.com/capabilities/pcb-capabilities)

Clearance : 0.127 mm
Trace Width : 0.09 mm
Trace Spacing : 0.09 mm
Prepreg depth : 0.2104 mm

## Annexe 3 : Paramètres du calcul d'impédance

![[params_lignes_LVDS.png]]

Les recommendations du document Altera WP-DESLVDS, confirmées par les documents TI, sont :
- S (distance entre pistes d'une même paire) < 2W (largeur de piste)
- B (épaisseur de substrat) > S
- D (distance entre deux paires) > 2S

On observe que : 
- une augmentation de W baisse l'impédance
- une augmentation de S augmente l'impédance
- une augmentation de H augmente l'impédance
- une augmentation de F diminue l'impédance

On a donc les paramètres suivants :
- W = 0.29
- S = 0.2
- B = 0.2104 
- D > 0.4

# Sources

Les documents dans `doc/PCB_LVDS` sont de sources diverses, dont Altera, Xilinx, Texas Instruments, NXP, et Analog Devices.

[Cadence - LVDS PCB Design Guidelines](https://resources.pcb.cadence.com/blog/2023-lvds-pcb-layout-guidelines)
[Digikey - How to Route Differential Pairs in KiCad](https://www.digikey.fr/en/maker/projects/how-to-route-differential-pairs-in-kicad-for-usb/45b99011f5d34879ae1831dce1f13e93)
[Zuken - How to Calculate Trace Length from Time Delay Value for High-speed Signals](https://www.zuken.com/us/blog/how-to-calculate-trace-length-time-delay-value-high-speed-signals/)

[Forums Xilinx - Inverting LVDS Signals for Efficient PCB Layout with Zynq-7000](https://support.xilinx.com/s/question/0D52E00006hpRLbSAM/inverting-lvds-signals-for-efficient-pcb-layout-with-zynq7000?language=en_US)
[Forums Xilinx - LVDS invert](https://support.xilinx.com/s/question/0D52E00006iI4K4SAK/lvds-invert?language=en_US)
