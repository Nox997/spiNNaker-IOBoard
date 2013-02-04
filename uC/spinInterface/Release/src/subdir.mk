################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_stm32f4xx.c \
../src/irq_handlers.c \
../src/leds.c \
../src/main.c \
../src/omnibot.c \
../src/omnibot_rate_coding_helper.c \
../src/spin_link.c \
../src/timer.c \
../src/usart.c 

OBJS += \
./src/cr_startup_stm32f4xx.o \
./src/irq_handlers.o \
./src/leds.o \
./src/main.o \
./src/omnibot.o \
./src/omnibot_rate_coding_helper.o \
./src/spin_link.o \
./src/timer.o \
./src/usart.o 

C_DEPS += \
./src/cr_startup_stm32f4xx.d \
./src/irq_handlers.d \
./src/leds.d \
./src/main.d \
./src/omnibot.d \
./src/omnibot_rate_coding_helper.d \
./src/spin_link.d \
./src/timer.d \
./src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -DSTM32F4XX -DUSE_STDPERIPH_DRIVER -D__USE_CMSIS=CMSISv2p10_STM32F4xx -I"D:\Dropbox\programming\spiNNaker-IOBoard\uC\StdPeriphLib_v100_STM32F4xx\inc" -I"D:\Dropbox\programming\spiNNaker-IOBoard\uC\CMSISv2p10_STM32F4xx\inc" -O2 -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -std=gnu99 -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


