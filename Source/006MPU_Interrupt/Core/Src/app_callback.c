

#include "main.h"
#include "cmsis_os.h"
#include "task.h"
#include "MPU6050.h"

extern I2C_HandleTypeDef hi2c1;
extern osThreadId_t EscControlTaskHandle;

void mpu6050_motion_detection_callback();

void mpu6050_raw_data_ready_callback();


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if(GPIO_Pin == MPU6050_INT_Pin)
	{
		mpu6050_interrupt_handle(&hi2c1);
	}
}


void mpu6050_motion_detection_callback()
{

}


void mpu6050_raw_data_ready_callback()
{

	BaseType_t xHigherPriorityTaskWoken;
    xHigherPriorityTaskWoken = pdFALSE;
	if(EscControlTaskHandle)
	{
	    xTaskNotifyFromISR( EscControlTaskHandle, 0, eNoAction, &xHigherPriorityTaskWoken );
	}


    portYIELD_FROM_ISR( xHigherPriorityTaskWoken);
}
