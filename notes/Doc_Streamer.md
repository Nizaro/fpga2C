
**Note sur les horloges** : l'IP utilise deux entrées d'horloge : l'horloge AXI (la même sur les ports `s00_axis_aclk` et `m00_axis_aclk`) et l'horloge `lvds_clk`. Ces deux horloges contrôlent des logiques indépendantes : l'horloge AXI permet de recevoir et d'envoyer des données périodiquement depuis les interfaces AXI-Stream, tandis que l'horloge LVDS permet de se synchroniser aux arrivées de données sur les ports data ou sync, qui sont lues dans un processus qui les stocke dans une mémoire asynchrone.
A propos de l'horloge LVDS, il sera peut être nécessaire d'inverser l'horloge

# Considérations de timing

Interface AXIS : 100 MHz, 32 bits par coup d'horloge : 3.2 Gbps. -> pour une ligne, 320 coups d'horloge
Interface LVDS : 360 MHz, 4 bits par coup d'horloge (4 pixels par 10 coups d'horloge / 1 kernel par 2 coups d'horloge)
-> A la résolution maximale : ligne de 1280 pixels  = 160 kernels = 320 coups d'horloge LVDS = 889 ns / ligne (= 0.91 ms par image, sans compter FOT et ROT)
Temps AXIS pour une ligne de 1280 pixels, profondeur 10-bits : 12800 / 32 = 400 coups d'horloge AXIS (409600 coups d'horloge pour une image complète, 4.1 ms)

# Considérations de mémoire

En plus du problème de la vitesse de transfert de l'image vers le processeur, la taille de l'image complète est également à considérer. La résolution maximale du PYTHON1300 est de 1280x1024. Avec une profondeur d'image de 10 bits, chaque image prend 1638400 octets (soit 1.5 Mo). Les deux images prendraient donc un peu plus de 3 Mo : or la BRAM de la partie FPGA du système ne peut stocker que 5 Mo, et est déjà utilisée par la partie opérative du design (notamment le DMA)

# Désérialisation

L'un des objectifs du streamer est de désérialiser les envois de son capteur, que ce soit de la synchronisation ou des données. Ces cinq canaux sont indépendants et envoient un bit par coup d'horloge LVDS (l'horloge la plus rapide, à 288 MHz voire 360 MHz pour le mode 10 bits).

## Coder un désérialiseur sur mesure

Cela nécessite de faire rentrer l'horloge LVDS dans l'IP et d’échantillonner les canaux data et sync. Dans l'IP, cela se fait dans le processus `lvds_process`.
Le problème que cette méthode pose est qu'une grande partie de la logique de l'IP (machine à états principale, désérialiseur, fonction de détermination de bitslip) est calée sur l'horloge rapide, ce qui induit des violations de timing. Mes tentatives de générer une sous horloge, `lvds_word_ready`, qui serait 8 fois moins rapide que `lvds_clk`, se sont révélées infructueuses à cause de la correction de bitslip qui fait "glisser" le front montant de cette horloge. A l'implémentation, ce signal n'est pas routé à travers des pistes "pour horloge" ce qui crée des latences gigantesques.

## Utiliser les ISERDES

La partie programmable de la puce Zynq est un FPGA de la famille Artix-7 qui contient, à ses entrées/sorties, des périphériques de type ILOGIC (dans notre cas ISERDES) qui peuvent servir de sérialiseurs-désérialiseurs génériques. Cela permet d'isoler la logique rapide aux pins d'entrée, loin de la logique principale. Il suffit ensuite d'utiliser l'horloge divisée par 8 en sortie des SERDES.