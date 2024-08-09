# Installation des outils Xilinx sur Ubuntu

[Installing Vivado 2020.x on Ubuntu 20.04](https://danielmangum.com/posts/vivado-2020-x-ubuntu-20-04/) - fonctionne pour toutes les versions post-2020.
`source /tools/Xilinx/Vivado/2024.1/settings64.sh` puis `vivado`. Fonctionne également avec Vitis.
**Attention !** sur un système Linux il est très conseillé de [créer un fichier de mémoire swap](https://linuxize.com/post/create-a-linux-swap-file/) pour éviter que Vivado ne crashe pendant la synthèse - 10 à 16 GB supplémentaires suffisent.
Egalement, il est recommandé de lancer Vivado en utilisateur root (sudo -s dans un terminal) pour tout projet nécessitant une synthèse.

sudo -s
export PATH=/tools/Xilinx/Vivado/2024.1/bin:$PATH

*ou*
source /tools/Xilinx/Vivado/2024.1/settings64.sh

https://support.xilinx.com/s/question/0D54U00005ZMzumSAD/how-to-correctly-connect-packaged-ip-to-a-bidirectional-inout-port?language=en_US
https://support.xilinx.com/s/question/0D52E00006hpXudSAE/how-to-constrain-differential-input-clock?language=en_US
https://stackoverflow.com/questions/35975328/generic-constants-in-vhdl
https://support.xilinx.com/s/question/0D52E00006hpgoqSAA/clock-path-synthesis-ibufds-and-bufio?language=en_US
https://support.xilinx.com/s/question/0D52E00006iHkCFSA0/vivado-implementation-some-logic-missing?language=en_US
https://support.xilinx.com/s/question/0D52E00006hphMTSAY/default-state-of-pudcb-pin-if-bank-34-is-unused-unpowered-vcco34-is-tied-to-ground?language=zh_CN

opt_design -debug_log

## Erreur de routage

\[Place 30-574\] Poor placement for routing between an IO pin and BUFG. If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets main_design_i/lvds_clkin_0_ibuf/U0/IBUF_OUT[0]] >

	Clock Rule: rule_gclkio_bufg
	Status: FAILED
	Rule Description: An IOB driving a BUFG must use a CCIO in the same half side (top/bottom) of chip as the BUFG

	main_design_i/lvds_clkin_0_ibuf/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I (IBUFDS.O) is locked to IOB_X1Y146
	main_design_i/lvds_clkin_0_ibuf/U0/IBUF_OUT[0]_BUFG_inst (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y31

# Vitis

https://support.xilinx.com/s/question/0D54U00007jzNEXSA2/vitis-20232-unable-to-create-platform-component-project-on-ubuntu?language=en_US

ps7_ethernet_0 : 0xe000b000 ~ 0xe000bfff
ps7_i2c_0 : 0xe0004000 ~ 0xe0004fff

## Commandes

```
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

```


