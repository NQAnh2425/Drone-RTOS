/*
 * anglemode_control.c
 *
 */

#include "anglemode_control.h"




void RC_command_to_angle(uint16_t *channel, RC_command_t *rc_command)
{
    float pitch = (float)CONSTRAIN(channel[1],SBUS_CHANNEL_MAX,SBUS_CHANNEL_MIN);

    float roll = (float)CONSTRAIN(channel[0],SBUS_CHANNEL_MAX,SBUS_CHANNEL_MIN);

    float throttle = (float)CONSTRAIN(channel[2],SBUS_CHANNEL_MAX,SBUS_CHANNEL_MIN);

    float yaw = (float)CONSTRAIN(channel[3],SBUS_CHANNEL_MAX,SBUS_CHANNEL_MIN);

    /* Pitch deadband */
    if ((pitch >= (SBUS_CHANNEL_CENTER - SBUS_DEADBAND)) &&(pitch <= (SBUS_CHANNEL_CENTER + SBUS_DEADBAND)))
    {
        rc_command->target_pitch = 0.0f;
    }
    else if (pitch < SBUS_CHANNEL_CENTER)
    {
        rc_command->target_pitch =(pitch - SBUS_CHANNEL_CENTER) * (-MIN_ANGLE)/(SBUS_CHANNEL_CENTER - SBUS_CHANNEL_MIN);
    }
    else
    {
        rc_command->target_pitch =(pitch - SBUS_CHANNEL_CENTER) * MAX_ANGLE/(SBUS_CHANNEL_MAX - SBUS_CHANNEL_CENTER);
    }

    /* Roll deadband */
    if (roll >= (SBUS_CHANNEL_CENTER - SBUS_DEADBAND) &&
        roll <= (SBUS_CHANNEL_CENTER + SBUS_DEADBAND))
    {
        rc_command->target_roll = 0.0f;
    }
    else if (roll < SBUS_CHANNEL_CENTER)
    {
        rc_command->target_roll =
            (roll - SBUS_CHANNEL_CENTER) *
            (-MIN_ANGLE) /
            (SBUS_CHANNEL_CENTER - SBUS_CHANNEL_MIN);
    }
    else
    {
        rc_command->target_roll =
            (roll - SBUS_CHANNEL_CENTER) *
            MAX_ANGLE /
            (SBUS_CHANNEL_MAX - SBUS_CHANNEL_CENTER);
    }

    /* Throttle */
    rc_command->target_throttle_rate =
        (throttle - SBUS_CHANNEL_MIN) *
        100.0f /
        (SBUS_CHANNEL_MAX - SBUS_CHANNEL_MIN);

    /* Yaw deadband */
    if (yaw >= (SBUS_CHANNEL_CENTER - SBUS_DEADBAND) &&
        yaw <= (SBUS_CHANNEL_CENTER + SBUS_DEADBAND))
    {
        rc_command->target_yaw_rate = 0.0f;
    }
    else if (yaw < SBUS_CHANNEL_CENTER)
    {
        rc_command->target_yaw_rate =
            (yaw - SBUS_CHANNEL_CENTER) *
            (-MIN_ANGLE) /
            (SBUS_CHANNEL_CENTER - SBUS_CHANNEL_MIN);
    }
    else
    {
        rc_command->target_yaw_rate = (yaw - SBUS_CHANNEL_CENTER) *MAX_ANGLE /(SBUS_CHANNEL_MAX - SBUS_CHANNEL_CENTER);
    }

    /* Limit output */
    rc_command->target_pitch = CONSTRAIN((rc_command->target_pitch),MIN_ANGLE, MAX_ANGLE);

    rc_command->target_roll = CONSTRAIN((rc_command->target_roll),MIN_ANGLE, MAX_ANGLE);

    rc_command->target_yaw_rate = CONSTRAIN((rc_command->target_yaw_rate),MIN_ANGLE, MAX_ANGLE);

    rc_command->target_throttle_rate = CONSTRAIN((rc_command->target_pitch),(0.0f), (100.0f));
}


void PID_calculate_error_angle(float *mpu_gyro_data,
								float kalman_pitch,
								float kalman_roll,
								RC_command_t *rc_command,
								PID_input_t *pid_input)
{

}

























