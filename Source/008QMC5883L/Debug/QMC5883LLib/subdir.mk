################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../QMC5883LLib/QMC5883L.c 

OBJS += \
./QMC5883LLib/QMC5883L.o 

C_DEPS += \
./QMC5883LLib/QMC5883L.d 


# Each subdirectory must supply rules for building sources it contributes
QMC5883LLib/%.o QMC5883LLib/%.su QMC5883LLib/%.cyclo: ../QMC5883LLib/%.c QMC5883LLib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/008QMC5883L/QMC5883LLib" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-QMC5883LLib

clean-QMC5883LLib:
	-$(RM) ./QMC5883LLib/QMC5883L.cyclo ./QMC5883LLib/QMC5883L.d ./QMC5883LLib/QMC5883L.o ./QMC5883LLib/QMC5883L.su

.PHONY: clean-QMC5883LLib

