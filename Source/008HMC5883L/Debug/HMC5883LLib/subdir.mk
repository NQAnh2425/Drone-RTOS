################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HMC5883LLib/HMC5883L.c 

OBJS += \
./HMC5883LLib/HMC5883L.o 

C_DEPS += \
./HMC5883LLib/HMC5883L.d 


# Each subdirectory must supply rules for building sources it contributes
HMC5883LLib/%.o HMC5883LLib/%.su HMC5883LLib/%.cyclo: ../HMC5883LLib/%.c HMC5883LLib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/008HMC5883L/HMC5883LLib" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-HMC5883LLib

clean-HMC5883LLib:
	-$(RM) ./HMC5883LLib/HMC5883L.cyclo ./HMC5883LLib/HMC5883L.d ./HMC5883LLib/HMC5883L.o ./HMC5883LLib/HMC5883L.su

.PHONY: clean-HMC5883LLib

