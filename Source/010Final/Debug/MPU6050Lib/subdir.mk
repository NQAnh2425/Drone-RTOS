################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MPU6050Lib/MPU6050.c 

OBJS += \
./MPU6050Lib/MPU6050.o 

C_DEPS += \
./MPU6050Lib/MPU6050.d 


# Each subdirectory must supply rules for building sources it contributes
MPU6050Lib/%.o MPU6050Lib/%.su MPU6050Lib/%.cyclo: ../MPU6050Lib/%.c MPU6050Lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/AnglecontrolLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/Common/Inc" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/Common/Src" -I../Core/Inc -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/RatecontrolLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/DroneLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/MotorLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/ESCLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/KalmanLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/MPU6050Lib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/010Final/SBUSLib" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MPU6050Lib

clean-MPU6050Lib:
	-$(RM) ./MPU6050Lib/MPU6050.cyclo ./MPU6050Lib/MPU6050.d ./MPU6050Lib/MPU6050.o ./MPU6050Lib/MPU6050.su

.PHONY: clean-MPU6050Lib

