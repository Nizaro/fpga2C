
# Utilisation de Vivado

## Contexte

La carte utilisée ici, la MYIR Z-Turn V2, est basée sur le system-on-chip Zynq-7020, fabriqué par Xilinx, qui contient un processeur Cortex-A9 et une FPGA Artix-7 dans la même puce. Il est donc nécessaire d'utiliser les logiciels Vivado et Vitis, qui constituent le toolchain propriétaire de AMD/Xilinx pour tous leurs produits programmables.
Sur une architecture comme le Zynq-7020, il est possible d'utiliser le "Block Design" de Vivado, un utilitaire qui permet d'assembler différentes IP matérielles dans un seul schéma, en traçant des bus et des interfaces pour les connecter. Il permet aussi d'instancier le **Zynq Processing System**, un processeur soft-core qui tourne sur le Cortex-A9, mais qui présente une forte interconnection avec la partie FPGA du SoC. Cela permet de programmer la carte avec des instructions complexes en C ou en C++, voire avec un OS embarqué - le Zynq utilise PetaLinux.

## Le design

L'objectif principal de notre design sur FPGA est d'assurer une bonne acquisition de l'image depuis les capteurs. Il y a plusieurs considérations à prendre en compte : déjà, il faudra réaliser une IP matérielle personnalisée à notre cas d'usage, qui pourra faire l'interface entre les capteurs et le processeur. Le choix de l'interface entre les deux est également important : Xilinx propose le bus AXI et ses sous types pour une interface rapide entre toute IP et le processeur . Le capteur PYTHON1300 a un débit idéal maximal de 720 Mb/s : nous choisirons donc l'interface AXI-Stream, adaptée au *streaming* continu de données à haut débit.
L'utilisation du bus AXI-Stream nécessite l'utilisation d'une IP de Xilinx importante : le DMA (Direct Memory Access). Cela veut dire que toutes les données l'IP `noip_lvds`se situent dans "le domaine mémoire", et que le bus AXI-Stream les rapatrie vers "le domaine logique".
# Les IPs personnalisées

## noip_lvds_stream

**Note sur les horloges** : l'IP utilise deux entrées d'horloge : l'horloge AXI (la même sur les ports `s00_axis_aclk` et `m00_axis_aclk`) et l'horloge `lvds_clk`. Ces deux horloges contrôlent des logiques indépendantes : l'horloge AXI permet de recevoir et d'envoyer des données périodiquement depuis les interfaces AXI-Stream, tandis que l'horloge LVDS permet de se synchroniser aux arrivées de données sur les ports data ou sync, qui sont lues dans un processus qui les stocke dans une mémoire asynchrone.
## noip_ctrl

noip_ctrl permet de contrôler les deux capteurs PYTHON1300 : les allumer, les éteindre, et les configurer en utilisant l'interface SPI.

### Interface AXI

Le contrôleur NOIP communique avec le processeur à travers son interface AXI4-Lite, en tant que *slave*.
Chaque mot AXI (de 32 bits) envoyé depuis le processeur correspond à une commande, selon la spécification qui suit :

Bits 31~16 : **SPI Data** (laisser à zéro si l'opération n'est pas de type SPI)
Bits 15~13 : "000"
Bits 12~4 : **SPI Address** (laisser à zéro si l'opération n'est pas de type SPI)
Bits 3~2 - **Sensor ID** ("00" ou "01")
Bits 1~0 : **OpCode** 
- "00" pour "shutdown"
- "10" pour "write SPI"
- "01" pour "read SPI"
- "11" pour "startup"

La réponse du noip_ctrl est de la forme suivante :

Bits 31~16 : **SPI Data** (à zéro si l'opération n'est pas de type SPI)
Bits 15~4 : "000"
Bits 3~2 - **Sensor ID** ("00" ou "01")
Bits 1~0 : **ResCode** 
- "00" pour "shutdown OK"
- "10" pour "busy"
- "01" pour "read SPI"
- "11" pour "startup OK"
