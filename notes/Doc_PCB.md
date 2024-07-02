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
On a choisi de router les pistes de l'interface SPI sur la couche du haut pour plusieurs raisons : déjà, l'encombrement de la couche du bas est important et garantir un tracé efficace pour cette interface synchrone n'est pas une mince affaire. De plus, les interférences SPI / LVDS ne sont pas un problème majeur, car ces deux interfaces ne seront pas utilisées au même moment. Au moment d'une configuration par SPI, les données envoyées par le capteur par LVDS ne sont pas importantes, ou le capteur n'est pas configuré et n'envoie simplement rien sur ce canal. Des précautions nécessaires ont toutefois été prises pour éloigner ces deux interfaces, notamment au niveau du retour vers la masse.

Sur la face du bas, on dispose le régulateur de tension et les interrupteurs de façon symétrique, pour réduire la longueur des pistes et limiter les croisements. En cas de chevauchement inévitable, on privilégie de faire passer les pistes d'alimentation par le plan de masse - c'est une pratique courante qui permet une bonne dissipation thermique, et en général les signaux qui évoluent très lentement peuvent passer sans problème par le plan de masse interne.
Une fois tout cela routé, il faut relier les plans de masse et d'alimentation entièrement avec de nombreux vias, et découpler les grands puits de courant avec des capacités.

Une partie importante de notre design est de limiter le *skew* (décalage temporel) entre les signaux et leur horloge, voire entre certains signaux eux-mêmes. Comme l'impédance des pistes est constante sur tout le circuit, cela veut dire rendre leurs longueurs égales. L'outil de tuning de KiCad peut faire cela : il suffit de noter la longueur de la piste la plus longue (on ne peut pas facilement raccourcir des pistes), puis de rallonger les autres pistes avec l'outil, qui crée des "accordéons". Cette pratique permet de synchroniser toutes les paires LVDS et les signaux SPI avec leurs horloges, et de rentre les deux triggers simultanés pour permettre une prise de vue synchronisée chez les deux capteurs. 

# Annexes

## Annexe 1 : Configuration du PCB (JLC04161H-7628)

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