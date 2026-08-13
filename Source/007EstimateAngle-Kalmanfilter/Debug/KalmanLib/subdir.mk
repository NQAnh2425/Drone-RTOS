################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../KalmanLib/kalman.c 

OBJS += \
./KalmanLib/kalman.o 

C_DEPS += \
./KalmanLib/kalman.d 


# Each subdirectory must supply rules for building sources it contributes
KalmanLib/%.o KalmanLib/%.su KalmanLib/%.cyclo: ../KalmanLib/%.c KalmanLib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/007EstimateAngle-Kalmanfilter/KalmanLib" -I"C:/Users/Admin/Documents/GitHub/Drone-RTOS/Source/007EstimateAngle-Kalmanfilter/MPU6050Lib" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-KalmanLib

clean-KalmanLib:
	-$(RM) ./KalmanLib/kalman.cyclo ./KalmanLib/kalman.d ./KalmanLib/kalman.o ./KalmanLib/kalman.su

.PHONY: clean-KalmanLib

