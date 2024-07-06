#include "packet_receiver.h"
#include "checksum.h"
#include <string.h>

extern UART_HandleTypeDef huart1;

static uint8_t rx_buffer[1]; // Buffer for receiving one byte
static uint8_t packet[PACKET_SIZE];
static uint8_t received_bytes = 0;

void UART1_IRQHandler(void)
{
    HAL_UART_IRQHandler(&huart1);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart->Instance == USART1)
    {
        packet[received_bytes++] = rx_buffer[0];

        if (received_bytes >= PACKET_SIZE)
        {
            Process_Packet(packet);
            received_bytes = 0; // Reset byte counter for the next packet
        }

        if (HAL_UART_Receive_IT(&huart1, rx_buffer, 1) != HAL_OK)
        {
            // Handle reception error
        }
    }
}

void Process_Packet(uint8_t *packet)
{
    if (packet[0] != 0xAA || packet[20] != 0x55 || packet[1] != 0x01 || packet[2] != 21)
    {
        // Invalid packet, discard
        return;
    }

    uint8_t checksum_received = packet[19];
    uint8_t checksum_calculated = Calculate_Checksum(packet + 1, 18);

    if (checksum_received != checksum_calculated)
    {
        // Checksum mismatch, discard
        return;
    }

    float dados[4];
    memcpy(dados, &packet[3], sizeof(dados));

    // Toggle the LED to indicate packet received correctly
    HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
}
