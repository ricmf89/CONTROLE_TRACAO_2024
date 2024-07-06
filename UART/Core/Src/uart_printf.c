#include "uart_printf.h"

extern UART_HandleTypeDef huart1; // Supondo que huart1 seja definido e inicializado em outro lugar

int __io_putchar(int ch)
{
    HAL_UART_Transmit(&huart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
    return ch;
}

void UART_Printf_Init(void)
{
    setvbuf(stdout, NULL, _IONBF, 0); // Desabilitar buffering
}
