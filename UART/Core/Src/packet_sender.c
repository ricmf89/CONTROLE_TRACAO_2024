#include "packet_sender.h"
#include "checksum.h"
#include <string.h>

extern UART_HandleTypeDef huart1;

void Send_Packet(float dados1, float dados2, float dados3, float dados4)
{
    uint8_t packet[21];
    float dados[4] = {dados1, dados2, dados3, dados4};

    packet[0] = 0xAA; // Start byte
    packet[1] = 0x01; // Packet type
    packet[2] = 21;   // Packet length

    memcpy(&packet[3], dados, sizeof(dados)); // Copy data to packet

    packet[19] = Calculate_Checksum(packet + 1, 18); // Calculate checksum
    packet[20] = 0x55; // End byte

    if (HAL_UART_Transmit(&huart1, packet, 21, HAL_MAX_DELAY) != HAL_OK)
    {
        // Handle transmission error
    }
}
