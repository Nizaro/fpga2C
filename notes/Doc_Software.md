
# Vivado

## Contexte

La carte utilisée ici, la MYIR Z-Turn V2, est basée sur le system-on-chip Zynq-7020, fabriqué par Xilinx, qui contient un processeur Cortex-A9 et une FPGA Artix-7 dans la même puce. Il est donc nécessaire d'utiliser les logiciels Vivado et Vitis, qui constituent le toolchain propriétaire de AMD/Xilinx pour tous leurs produits programmables.
Sur une architecture comme le Zynq-7020, il est possible d'utiliser le "Block Design" de Vivado, un utilitaire qui permet d'assembler différentes IP matérielles dans un seul schéma, en traçant des bus et des interfaces pour les connecter. Il permet aussi d'instancier le **Zynq Processing System**, un processeur soft-core qui tourne sur le Cortex-A9, mais qui présente une forte interconnection avec la partie FPGA du SoC. Cela permet de programmer la carte avec des instructions complexes en C ou en C++, voire avec un OS embarqué - le Zynq utilise PetaLinux.

## Le design

L'objectif principal de notre design sur FPGA est d'assurer une bonne acquisition de l'image depuis les capteurs. Il y a plusieurs considérations à prendre en compte : déjà, il faudra réaliser une IP matérielle personnalisée à notre cas d'usage, qui pourra faire l'interface entre les capteurs et le processeur. Le choix de l'interface entre les deux est également important : Xilinx propose le bus AXI et ses sous types pour une interface rapide entre toute IP et le processeur . Le capteur PYTHON1300 a un débit idéal maximal de 720 Mb/s : nous choisirons donc l'interface AXI-Stream, adaptée au *streaming* continu de données à haut débit.
L'utilisation du bus AXI-Stream nécessite l'utilisation d'une IP de Xilinx importante : le DMA (Direct Memory Access). Cela veut dire que toutes les données l'IP `noip_lvds_stream`se situent dans "le domaine mémoire", et que le bus AXI-Stream les rapatrie vers "le domaine logique".

Le design principal (le processeur et nos IPs) est entouré d'IPs qui

Note : il se peut que les inverseurs (IP "Utility Vector Logic") donnent cette erreur à la génération du Block Design :
```
[BD 41-1273] Error running propagate TCL procedure: unexpected operator ":" without preceding "?"
    ::xilinx.com_ip_util_vector_logic_2.0::propagate Line 24
```
Elle est complètement à ignorer : leur synthèse fonctionne normalement.

# Vitis

## Fonctionnement de Vitis

Tout design utilisant une IP de processeur Xilinx (dans notre cas, le Zynq Processing System, mais pour les cartes UltraScale c'est le processeur MicroBlaze) peut être programmée à travers l'IDE Vitis. Il permet de programmer le processeur avec du code en C ou en C++, et aussi de faire du HLS (*High Level Synthesis*).
Un workspace Vitis contient différents éléments : 
Une **plateforme** est la partie "hardware" du projet, qui contient les informations du processeur et les addresses des périphériques présents dans le design.
Une **application** contient un code exécutable par un processeur Xilinx, et est donc une couche d'abstraction au dessus de la plateforme dont elle hérite.

## Workflow

Dans notre cas, l'utilisation de Vitis est essentielle, car il est difficile de programmer la Z-Turn v2 sans utiliser le processeur intégré - cela nécessiterait un câble JTAG à 14 pins bien précis, difficile à trouver, et certainement cher. La méthode de programmation utilisée ici est de créer une carte SD bootable, qui contiendrait le hardware à programmer sur FPGA et le code pour processeur, de préférence avec un OS embarqué dessus. C'est le cas de la carte SD livrée dans la Z-Turn V2 (son contenu est dans `/sd_backup`): elle contient un Linux basique et un hardware par défaut.

Le workflow serait donc :
1. Modifier le hardware principal ou une des IPs sur Vivado. Si une des IPs est modifiée (puis en général testée dans son projet `edit_<nom de l'IP>_v1_0`), ne pas oublier de la mettre à jour dans le catalogue à travers *Edit Packaged IP* -> *Ports and Interfaces* -> *Merge Changes* puis *Review and Package* -> *Re-Package IP*. 
2. Compiler entièrement le projet ZTurnV2 (*Generate Block Design* puis *Generate Bitstream*, ce qui normalement lancera la synthèse et l'implémentation). Si une IP a été modifiée, ne pas oublier de la mettre à jour dans le Block Design avec *Refresh IP Catalog* puis *Upgrade IP* dans l'onglet *IP Status* qu s'ouvre. Normalement, les changements sont détectés automatiquement à l'ouverture du BD.
3. Exporter le hardware (*File -> Export -> Export Hardware*) et écraser le fichier **main_design_wrapper.xsa** (ou le sauvegarder dans un autre xsa).
4. Ouvrir Vitis et le workspace **zturnv2_platform**.
5. Resélectionner le hardware dans **fpga2c (Platform)/Settings/vitis-comp.json** -> *Switch XSA*.
6. Compiler **fpga2c** (*Build* dans la fenêtre *FLOW*).
7. Puis compiler l'application **app** en prêtant attention aux outputs dans le terminal.

# Sources

[How to Install Vitis and Petalinux 2024.1](https://www.fpgadeveloper.com/how-to-install-vitis-and-petalinux-2024.1/)
[Vitis Docs - Zynq-7000 Embedded Design Tutorial](https://xilinx.github.io/Embedded-Design-Tutorials/docs/2023.1/build/html/docs/Introduction/Zynq7000-EDT/Zynq7000-EDT.html)
