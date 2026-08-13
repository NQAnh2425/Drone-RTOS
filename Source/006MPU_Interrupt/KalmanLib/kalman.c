/*
 * Kalman_Filter.c
 *
 *  Created on: Aug 1, 2026
 *      Author: Admin
 */

#include "kalman.h"

/* Noise parameters */
#define GYRO_STD_DEV      4.0f      // deg/s
#define ACC_STD_DEV       3.0f      // deg



void Kalman_Init(Kalman_t *kf,float init_angle,float init_uncertainty)
{
    kf->angle = init_angle;
    kf->uncertainty = init_uncertainty;
}

float Kalman_Update(Kalman_t *kf, float gyro_rate, float acc_angle, float dt)
{
    /*--------------------------------------------------
      STEP 1: Predict state
    --------------------------------------------------*/
    kf->angle += gyro_rate * dt;

    /*--------------------------------------------------
      STEP 2: Predict covariance
    --------------------------------------------------*/
    kf->uncertainty += dt * dt * GYRO_STD_DEV * GYRO_STD_DEV;

    /*--------------------------------------------------
      STEP 3: Kalman Gain
    --------------------------------------------------*/
    float K = kf->uncertainty / (kf->uncertainty + ACC_STD_DEV * ACC_STD_DEV);

    /*--------------------------------------------------
      STEP 4: Update state
    --------------------------------------------------*/
    kf->angle += K * (acc_angle - kf->angle);

    /*--------------------------------------------------
      STEP 5: Update covariance
    --------------------------------------------------*/
    kf->uncertainty *= (1.0f - K);

    return kf->angle;
}
