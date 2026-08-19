/*
 * drone.h
 *
 *  Created on: Aug 13, 2026
 *      Author: Admin
 */

#ifndef DRONE_H_
#define DRONE_H_

#include <math.h>
#include "PID.h"
#include "main.h"
#include "Motor.h"
#include "MPU6050.h"
#include "SBUS.h"
#include "rate_control.h"
#include "anglemode_control.h"

#define ARM_DELAY_CYCLES		10
#define PWM_SOFT_START_MAX		1100

typedef enum Error_code
{
    ERROR_NONE = 0,
    ERROR_TIMEOUT,
    ERROR_ESC_INIT,
    ERROR_MPU_INIT,
    ERROR_MPU_UNSTABLE,
    ERROR_SBUS_INIT,
}error_code_t;

typedef enum Drone_status
{
	DRONE_INIT,
	DRONE_INIT_SUCCESS,
    DRONE_ARMED,
	DRONE_READY_TO_FLY,
    DRONE_FLYING,
    DRONE_FAILSAFE,
    DRONE_ERROR
} drone_status_t;

typedef struct Drone_handle
{
	MOTOR_Handle_t	 *motor_handle;
	MPU6050_Handle_t *mpu_handle;
	error_code_t 	error_code;
	drone_status_t	status;
	drone_status_t	pre_status;
	bool 			drone_armed;
}Drone_handle_t;



uint8_t drone_init( Drone_handle_t* drone_handle , MOTOR_Handle_t* motor_handle, MPU6050_Handle_t* mpu_handle);

void drone_config(Drone_handle_t *drone_handle);
void drone_check_arm_signal(Drone_handle_t *drone_handle);
void drone_is_ready_to_fly(Drone_handle_t *drone_handle);
void drone_armed(Drone_handle_t *drone_handle);

void drone_flying_loop(Drone_handle_t *drone_handle);

#endif /* DRONE_H_ */
