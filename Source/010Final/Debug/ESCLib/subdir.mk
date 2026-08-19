################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ESCLib/ESC.c 

OBJS += \
./ESCLib/ESC.o 

C_DEPS += \
./ESCLib/ESC.d 


# Each subdirectory must supply rules for building sources it contributes
ESCLib/%.o ESCLib/%.su ESCLib/%.cyclo: ../ESCLib/%.c ESCLib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/RatecontrolLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/PIDLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/DroneLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/MotorLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/ESCLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/KalmanLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/MPU6050Lib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/SBUSLib" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ESCLib

clean-ESCLib:
	-$(RM) ./ESCLib/ESC.cyclo ./ESCLib/ESC.d ./ESCLib/ESC.o ./ESCLib/ESC.su

.PHONY: clean-ESCLib

