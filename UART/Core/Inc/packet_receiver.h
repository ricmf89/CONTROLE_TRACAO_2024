#ifndef PACKET_RECEIVER_H
#define PACKET_RECEIVER_H

#include "stm32f3xx_hal.h"
#include <stdint.h>

#define PACKET_SIZE 21

void UART1_IRQHandler(void);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void Process_Packet(uint8_t *packet);

#endif // PACKET_RECEIVER_H
