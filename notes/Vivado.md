
https://danielmangum.com/posts/vivado-2020-x-ubuntu-20-04/

sudo -s
export PATH=/tools/Xilinx/Vivado/2024.1/bin:$PATH

*ou*

source /tools/Xilinx/Vivado/2024.1/settings64.sh

[Creating a custom IP block in Vivado](https://www.fpgadeveloper.com/2014/08/creating-a-custom-ip-block-in-vivado.html/)

https://www.fpgadeveloper.com/2017/11/creating-a-custom-axi-streaming-ip-in-vivado.html/

[How do I tell Vivado that my signal is differential ?](https://support.xilinx.com/s/question/0D52E00006hpT6LSAU/how-do-i-tell-vivado-that-my-signal-is-differential?language=en_US)

# Vitis

My flow was:

New Project -> RTL Project -> import my BD file -> import my xdc file -> Select Zybo z7-20 board -> finish 

Project Manager -> settings -> IP -> Repositories -> add my HLS generates

Sources -> generate HDL wrapper

Generate bitstream

https://support.xilinx.com/s/question/0D54U00007jzNEXSA2/vitis-20232-unable-to-create-platform-component-project-on-ubuntu?language=en_US

# Mémoire Swap

https://support.xilinx.com/s/question/0D52E00006vFXkwSAG/is-there-a-workaround-for-vivado-rdiprog-crash-during-synth-while-running-20211-on-ubuntu-18046-lts?language=en_US

https://linuxize.com/post/create-a-linux-swap-file/

1 fichier de 10G en plus