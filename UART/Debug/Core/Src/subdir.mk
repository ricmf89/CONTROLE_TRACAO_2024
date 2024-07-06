################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/checksum.c \
../Core/Src/main.c \
../Core/Src/packet_receiver.c \
../Core/Src/packet_sender.c \
../Core/Src/stm32f3xx_hal_msp.c \
../Core/Src/stm32f3xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f3xx.c \
../Core/Src/uart_printf.c 

OBJS += \
./Core/Src/checksum.o \
./Core/Src/main.o \
./Core/Src/packet_receiver.o \
./Core/Src/packet_sender.o \
./Core/Src/stm32f3xx_hal_msp.o \
./Core/Src/stm32f3xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f3xx.o \
./Core/Src/uart_printf.o 

C_DEPS += \
./Core/Src/checksum.d \
./Core/Src/main.d \
./Core/Src/packet_receiver.d \
./Core/Src/packet_sender.d \
./Core/Src/stm32f3xx_hal_msp.d \
./Core/Src/stm32f3xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f3xx.d \
./Core/Src/uart_printf.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303xE -c -I../Core/Inc -IC:/Users/Ricardo/STM32Cube/Repository/STM32Cube_FW_F3_V1.11.5/Drivers/STM32F3xx_HAL_Driver/Inc -IC:/Users/Ricardo/STM32Cube/Repository/STM32Cube_FW_F3_V1.11.5/Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -IC:/Users/Ricardo/STM32Cube/Repository/STM32Cube_FW_F3_V1.11.5/Drivers/CMSIS/Device/ST/STM32F3xx/Include -IC:/Users/Ricardo/STM32Cube/Repository/STM32Cube_FW_F3_V1.11.5/Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/checksum.cyclo ./Core/Src/checksum.d ./Core/Src/checksum.o ./Core/Src/checksum.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/packet_receiver.cyclo ./Core/Src/packet_receiver.d ./Core/Src/packet_receiver.o ./Core/Src/packet_receiver.su ./Core/Src/packet_sender.cyclo ./Core/Src/packet_sender.d ./Core/Src/packet_sender.o ./Core/Src/packet_sender.su ./Core/Src/stm32f3xx_hal_msp.cyclo ./Core/Src/stm32f3xx_hal_msp.d ./Core/Src/stm32f3xx_hal_msp.o ./Core/Src/stm32f3xx_hal_msp.su ./Core/Src/stm32f3xx_it.cyclo ./Core/Src/stm32f3xx_it.d ./Core/Src/stm32f3xx_it.o ./Core/Src/stm32f3xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f3xx.cyclo ./Core/Src/system_stm32f3xx.d ./Core/Src/system_stm32f3xx.o ./Core/Src/system_stm32f3xx.su ./Core/Src/uart_printf.cyclo ./Core/Src/uart_printf.d ./Core/Src/uart_printf.o ./Core/Src/uart_printf.su

.PHONY: clean-Core-2f-Src

