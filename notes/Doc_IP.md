# noip_lvds_stream

**Note sur les horloges** : l'IP utilise deux entrées d'horloge : l'horloge AXI (la même sur les ports `s00_axis_aclk` et `m00_axis_aclk`) et l'horloge `lvds_clk`. Ces deux horloges contrôlent des logiques indépendantes : l'horloge AXI permet de recevoir et d'envoyer des données périodiquement depuis les interfaces AXI-Stream, tandis que l'horloge LVDS permet de se synchroniser aux arrivées de données sur les ports data ou sync, qui sont lues dans un processus qui les stocke dans une mémoire asynchrone.
# noip_ctrl

noip_ctrl permet de contrôler les deux capteurs PYTHON1300 : les allumer, les éteindre, et les configurer en utilisant l'interface SPI.

## Interface AXI

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


# Sources

[FPGA Developer - Creating a custom IP block in Vivado](https://www.fpgadeveloper.com/2014/08/creating-a-custom-ip-block-in-vivado.html/)
[FPGA Developer - Creating a custom AXI-Streaming IP in Vivado](https://www.fpgadeveloper.com/2017/11/creating-a-custom-axi-streaming-ip-in-vivado.html/)
[Testbench pour une IP AXI-LITE, par frobino](https://github.com/frobino/axi_custom_ip_tb/blob/master/led_controller_1.0/hdl/testbench.vhd)
[Simulating AXI Interfaces with the AXI Verification IP](https://support.xilinx.com/s/article/1053935?language=en_US)
