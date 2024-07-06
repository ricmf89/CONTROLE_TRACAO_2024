#include "checksum.h"

uint8_t Calculate_Checksum(uint8_t *data, uint16_t length)
{
    uint8_t checksum = 0;
    for (uint16_t i = 0; i < length; i++)
    {
        checksum ^= data[i];
    }
    return checksum;
}
