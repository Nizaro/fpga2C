#include <stdint.h>
#include <stdio.h>
#include "noip_ctrl.h"

void write_spi(int sID, uint16_t addr, int data) {
    uint32_t axiWD = 0;
    axiWD |= 0x10 & (sID << 2) & (addr << 4) & (data << 16);
    NOIP_CTRL_mWriteReg(0, 0, axiWD);

}

void init_sensor(int sID) {
    write_spi(sID, 2, 0x3); // Monochrome & LVDS
    write_spi(sID, 16, 0x3);
    write_spi(sID, 32, 0x5);
    write_spi(sID, 34, 0x1);
    write_spi(sID, 40, 0x7);
    write_spi(sID, 48, 0x1);
    write_spi(sID, 64, 0x1);
    write_spi(sID, 112, 0x7);
    write_spi(sID, 195, 0x1);    
    write_spi(sID, 197, 0x1);
}

int main()
{
  printf("Hello World\n");
  init_sensor(0);
  return 0;
}
