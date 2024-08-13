
# Partie Programmation

Logiciels nécessaires : Vivado et Vitis

La cible de ce projet est la board FPGA **Z-Turn V2** de MYiRTech. Sa version utilisée ici contient un FPGA de type Zynq-7020 (XC7Z020-2CLG400) et plusieurs périphériques intéressants. Informations diverses sur la Z-Turn [[MYIR Z-Turn V2|ici]]. 
Se référer au dossier `doc/ZTurnV2` pour toutes les informations : à noter que certaines de ces documentations se réfèrent à la version précédente, la Z-Turn (tout court). Les deux cartes sont très similaires.

Différents projets [[Vivado]] sont présents dans le repo :
- `ZTurnV2` est le projet principal, contenant le Block Design du projet (`main_design.bd`). Il est le seul à être synthétisé : une fois la compilation terminée et le bitstream généré, il faut exporter le nouveau hardware dans `main_design_wrapper.xsa`.
- Dans `ip_repo`, chaque IP a son projet qui contient ses sources de simulation (des testbench VHDL) et son XML de définition d'IP. Merci de ne pas déplacer ces projets !
- `bd_test` permet de tester des IPs qui nécessitent d'être intégrées à un Block Design (par exemple, pour l'utilisation d'un IOBUF ou un FIFO).

En plus de cela, `vitis_workspace` contient le workspace Vitis principal - c'est à dire la partie logicielle du projet, le code qui va être exécuté par le processeur : détails de son utilisation [[Doc_Software#Vitis|ici]].

Pour plus de détails, voir [[Doc_Software]].
Documentation et utilisation de l'IP Streamer (noip_lvds_stream) : [[Doc_Streamer]]

# Partie Hardware

Logiciels nécessaires : KiCad 8.0+

`Kick` contient les projets KiCad des deux cartes du design : `MainBoard` pour la partie "shield" qui se fixe à la Z-Turn V2, et `PythonBreakout` pour la partie qui contient le capteur (en double dans le système final).
`PCB-Output-Products` contient les zips qui, une fois mis sur le site de JLC-PCB, permettent de faire imprimer les circuits. La procédure pour les générer et les utiliser est précisée en annexe de [[Doc_PCB]].
Ne pas oublier, en cas de modification du circuit, d'effectuer les changements à la fois en partie Schematic et en partie PCB, pour assurer une bonne lisibilité du circuit.