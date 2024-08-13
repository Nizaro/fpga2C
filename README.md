# fpga2C

Design of a system that grab the data from an image sensor to an fpga

# Repo structure

/Materiel.ods - initial research on which board to use (as well as cameras.)
/Pinout.ods - signal assignation in the design (HDL signal name, ZTurn pin name, and header pin number), as well as trace lengths and differential skew in the PCB.

/JLCPCB_Multilayer - an example Kicad project containing the appropriate constraints for a JLCPCB order.
/Kick - the main KiCad project, containing the schematic, the PCB and its output products, and custom component libraries.
/PCB-Output-Products - contains the output products (Gerbers and drill files) of the two main PCBs

/ZTurnV2 - the main Vivado project. 
/archive - old versions of IPs handy to keep around. 
/constraints - constraint files for the ZTurnV2 board, to be used if elaboration I/O planning fails. 
/drivers - preliminary folder containing software drivers for custom IPs. 
/interface_repo - contains the custom-made LVDS interface specification. 
/ip_repo - contains the custom IPs. 
/infos_vivado - miscellaneous files for Vivado installation and debugging. 
/petalinux - the PetaLinux build and working directory. 
/sd_backup - a backup of the factory boot image found in the SD card of the ZTurnV2, and its Linux device tree for reference. 
/vitis_workspace - the main Vitis workpace, containing the hardware platform and the application for software development. 

/doc - main documentation folder. 
/doc/PCB_LVDS - useful guidelines for designing PCBs with LVDS or HF capabilities. 
/doc/Vivado_AXI - product guides for used IPs and AXI interface specs. 
/doc/ZTurnV2 - schematics and manuals for the ZTurnV2 and associated devices. 
/doc/Zynq7 - info for developing for the Zynq7. 
/doc/capteur_lentille - info about the sensor and the lens. 