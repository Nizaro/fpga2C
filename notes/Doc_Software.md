
# Utilisation de Vivado

## Contexte

La carte utilisée ici, la MYIR Z-Turn V2, est basée sur le system-on-chip Zynq-7020, fabriqué par Xilinx, qui contient un processeur Cortex-A9 et une FPGA Artix-7 dans la même puce. Il est donc nécessaire d'utiliser les logiciels Vivado et Vitis, qui constituent le toolchain propriétaire de AMD/Xilinx pour tous leurs produits programmables.
Sur une architecture comme le Zynq-7020, il est possible d'utiliser le "Block Design" de Vivado, un utilitaire qui permet d'assembler différentes IP matérielles dans un seul schéma, en traçant des bus et des interfaces pour les connecter. Il permet aussi d'instancier le **Zynq Processing System**, un processeur soft-core qui tourne sur le Cortex-A9, mais qui présente une forte interconnection avec la partie FPGA du SoC. Cela permet de programmer la carte avec des instructions complexes en C ou en C++, voire avec un OS embarqué - le Zynq utilise PetaLinux.

## Le design

L'objectif principal de notre design sur FPGA est d'assurer une bonne acquisition de l'image depuis les capteurs. Il y a plusieurs considérations à prendre en compte : déjà, il faudra réaliser une IP matérielle personnalisée à notre cas d'usage, qui pourra faire l'interface entre les capteurs et le processeur. Le choix de l'interface entre les deux est également important : Xilinx propose le bus AXI et ses sous types pour une interface rapide entre toute IP et le processeur . Le capteur PYTHON1300 a un débit idéal maximal de 720 Mb/s : nous choisirons donc l'interface AXI-Stream, adaptée au *streaming* continu de données à haut débit.
L'utilisation du bus AXI-Stream nécessite l'utilisation d'une IP de Xilinx importante : le DMA (Direct Memory Access). Cela veut dire que toutes les données l'IP `noip_lvds`se situent dans "le domaine mémoire", et que le bus AXI-Stream les rapatrie vers "le domaine logique".

# Vitis

## Fonctionnement de Vitis

Tout design utilisant une IP de processeur Xilinx (dans notre cas, le Zynq Processing System, mais pour les cartes UltraScale c'est le processeur MicroBlaze) peut être programmée à travers l'IDE Vitis. Il permet de programmer le processeur avec du code en C ou en C++, et aussi de faire du HLS (*High Level Synthesis*).
Un workspace Vitis contient différents éléments
Une **plateforme** est la partie "hardware" du projet, 
Une **application**

## Workflow

Dans notre cas, l'utilisation de Vitis est essentielle, car il est difficile de programmer la Z-Turn v2 sans utiliser le processeur intégré - cela nécessiterait un câble JTAG à 14 pins bien précis, difficile à trouver, et certainement cher. La méthode de programmation utilisée ici est de créer une carte SD bootable, qui contiendrait le hardware à programmer sur FPGA et le code pour processeur, de préférence avec un OS embarqué dessus. C'est le cas de la carte SD livrée dans la Z-Turn V2 (son contenu est dans `/sd_backup`): elle contient un Linux basique et un hardware par défaut.

Le workflow serait donc :
1. Modifier le hardware principal ou une des IPs sur Vivado.
2. Compiler entièrement le projet ZTurnV2 (*Generate Block Design* puis *Generate Bitstream*, ce qui normalement lancera la synthèse et l'implémentation).
3. Exporter le hardware (*File -> Export -> Export Hardware*) et écraser le fichier **main_design_wrapper.xsa** (ou le sauvegarder dans un autre xsa).
4. Ouvrir Vitis et le workspace **zturnv2_platform**.
5. Resélectionner le hardware dans **fpga2c (Platform)/Settings/vitis-comp.json** -> *Switch XSA*.
6. Compiler **fpga2c** (*Build* dans la fenêtre *FLOW*).
7. Puis compiler l'application **app** en prêtant attention aux outputs dans le terminal.

# Sources

[How to Install Vitis and Petalinux 2024.1](https://www.fpgadeveloper.com/how-to-install-vitis-and-petalinux-2024.1/)
[Vitis Docs - Zynq-7000 Embedded Design Tutorial](https://xilinx.github.io/Embedded-Design-Tutorials/docs/2023.1/build/html/docs/Introduction/Zynq7000-EDT/Zynq7000-EDT.html)

## Pour une installation des outils Xilinx sur Ubuntu

[Installing Vivado 2020.x on Ubuntu 20.04](https://danielmangum.com/posts/vivado-2020-x-ubuntu-20-04/) - fonctionne pour toutes les versions post-2020.
`source /tools/Xilinx/Vivado/2024.1/settings64.sh` puis `vivado`. Fonctionne également avec Vitis.
**Attention !** sur un système Linux il est très conseillé de [créer un fichier de mémoire swap](https://linuxize.com/post/create-a-linux-swap-file/) pour éviter que Vivado ne crashe pendant la synthèse - 10 à 16 GB supplémentaires suffisent.