

sudo -s
export PATH=/tools/Xilinx/Vivado/2024.1/bin:$PATH

*ou*
source /tools/Xilinx/Vivado/2024.1/settings64.sh

https://support.xilinx.com/s/question/0D54U00005ZMzumSAD/how-to-correctly-connect-packaged-ip-to-a-bidirectional-inout-port?language=en_US
# Vitis

https://support.xilinx.com/s/question/0D54U00007jzNEXSA2/vitis-20232-unable-to-create-platform-component-project-on-ubuntu?language=en_US


## Workflow for updating hardware 

Dans vitis_comp.json (fpga2c -> Settings), trouver **Switch XSA** et sélectionner le dernier **main_design_wrapper.xsa**.
Ensuite, build la *platform* (fpga2c)
# Mémoire Swap

https://support.xilinx.com/s/question/0D52E00006vFXkwSAG/is-there-a-workaround-for-vivado-rdiprog-crash-during-synth-while-running-20211-on-ubuntu-18046-lts?language=en_US

https://linuxize.com/post/create-a-linux-swap-file/

1 fichier de 16G en plus

## Commandes

```
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

```