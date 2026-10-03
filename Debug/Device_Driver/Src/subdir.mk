################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/EXTI_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/FLASH_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/GPIO_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/I2C_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/NVIC_driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/PWR_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/RCC_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/SYSCONFIG_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/SysTick_Drive.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/TIM2_Driver.c \
H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/USART_Driver.c 

OBJS += \
./Device_Driver/Src/EXTI_Driver.o \
./Device_Driver/Src/FLASH_Driver.o \
./Device_Driver/Src/GPIO_Driver.o \
./Device_Driver/Src/I2C_Driver.o \
./Device_Driver/Src/NVIC_driver.o \
./Device_Driver/Src/PWR_Driver.o \
./Device_Driver/Src/RCC_Driver.o \
./Device_Driver/Src/SYSCONFIG_Driver.o \
./Device_Driver/Src/SysTick_Drive.o \
./Device_Driver/Src/TIM2_Driver.o \
./Device_Driver/Src/USART_Driver.o 

C_DEPS += \
./Device_Driver/Src/EXTI_Driver.d \
./Device_Driver/Src/FLASH_Driver.d \
./Device_Driver/Src/GPIO_Driver.d \
./Device_Driver/Src/I2C_Driver.d \
./Device_Driver/Src/NVIC_driver.d \
./Device_Driver/Src/PWR_Driver.d \
./Device_Driver/Src/RCC_Driver.d \
./Device_Driver/Src/SYSCONFIG_Driver.d \
./Device_Driver/Src/SysTick_Drive.d \
./Device_Driver/Src/TIM2_Driver.d \
./Device_Driver/Src/USART_Driver.d 


# Each subdirectory must supply rules for building sources it contributes
Device_Driver/Src/EXTI_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/EXTI_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/FLASH_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/FLASH_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/GPIO_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/GPIO_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/I2C_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/I2C_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/NVIC_driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/NVIC_driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/PWR_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/PWR_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/RCC_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/RCC_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/SYSCONFIG_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/SYSCONFIG_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/SysTick_Drive.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/SysTick_Drive.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/TIM2_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/TIM2_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Device_Driver/Src/USART_Driver.o: H:/stm32\ ide\ location/STM32\ workspace/DRIVER_F412ZG_v2/Device_Driver/Src/USART_Driver.c Device_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DNUCLEO_F412ZG -DSTM32F412ZGTx -DSTM32F4 -c -I../Inc -I"H:/stm32 ide location/STM32 workspace/DRIVER_F412ZG_v2/Device_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Device_Driver-2f-Src

clean-Device_Driver-2f-Src:
	-$(RM) ./Device_Driver/Src/EXTI_Driver.cyclo ./Device_Driver/Src/EXTI_Driver.d ./Device_Driver/Src/EXTI_Driver.o ./Device_Driver/Src/EXTI_Driver.su ./Device_Driver/Src/FLASH_Driver.cyclo ./Device_Driver/Src/FLASH_Driver.d ./Device_Driver/Src/FLASH_Driver.o ./Device_Driver/Src/FLASH_Driver.su ./Device_Driver/Src/GPIO_Driver.cyclo ./Device_Driver/Src/GPIO_Driver.d ./Device_Driver/Src/GPIO_Driver.o ./Device_Driver/Src/GPIO_Driver.su ./Device_Driver/Src/I2C_Driver.cyclo ./Device_Driver/Src/I2C_Driver.d ./Device_Driver/Src/I2C_Driver.o ./Device_Driver/Src/I2C_Driver.su ./Device_Driver/Src/NVIC_driver.cyclo ./Device_Driver/Src/NVIC_driver.d ./Device_Driver/Src/NVIC_driver.o ./Device_Driver/Src/NVIC_driver.su ./Device_Driver/Src/PWR_Driver.cyclo ./Device_Driver/Src/PWR_Driver.d ./Device_Driver/Src/PWR_Driver.o ./Device_Driver/Src/PWR_Driver.su ./Device_Driver/Src/RCC_Driver.cyclo ./Device_Driver/Src/RCC_Driver.d ./Device_Driver/Src/RCC_Driver.o ./Device_Driver/Src/RCC_Driver.su ./Device_Driver/Src/SYSCONFIG_Driver.cyclo ./Device_Driver/Src/SYSCONFIG_Driver.d ./Device_Driver/Src/SYSCONFIG_Driver.o ./Device_Driver/Src/SYSCONFIG_Driver.su ./Device_Driver/Src/SysTick_Drive.cyclo ./Device_Driver/Src/SysTick_Drive.d ./Device_Driver/Src/SysTick_Drive.o ./Device_Driver/Src/SysTick_Drive.su ./Device_Driver/Src/TIM2_Driver.cyclo ./Device_Driver/Src/TIM2_Driver.d ./Device_Driver/Src/TIM2_Driver.o ./Device_Driver/Src/TIM2_Driver.su ./Device_Driver/Src/USART_Driver.cyclo ./Device_Driver/Src/USART_Driver.d ./Device_Driver/Src/USART_Driver.o ./Device_Driver/Src/USART_Driver.su

.PHONY: clean-Device_Driver-2f-Src

