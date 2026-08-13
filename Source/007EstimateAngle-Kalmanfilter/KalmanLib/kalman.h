/*
 * KalmanFilter.h
 *
 *  Created on: Aug 1, 2026
 *      Author: Admin
 */

#ifndef KALMAN_H_
#define KALMAN_H_


typedef struct
{
    float angle;
    float uncertainty;
} Kalman_t;

void Kalman_Init(Kalman_t *kf, float init_angle, float init_uncertainty);

float Kalman_Update(Kalman_t *kf,float gyro_rate,float acc_angle,float dt);


#endif /* KALMAN_H_ */
