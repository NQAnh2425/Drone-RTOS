#ifndef SRC_QMC5883L_QMC5883_H_
#define SRC_QMC5883L_QMC5883_H_

#include "main.h"
#include <math.h>


#define QMC_I2C_Address		0x1A

#define QMC_OK			1
#define QMC_ERR			0

#define qmc_stanby		0
#define qmc_continus	1


typedef enum
{
	QMC_Rate_200 = 0,
	QMC_Rate_100 = 1,
	QMC_Rate_50 = 2,
	QMC_Rate_10	= 3,
}QMC_DataRate_t;

/*Hardware abstract ======*/
typedef struct
{
	I2C_HandleTypeDef *i2c;
	uint8_t 		  ctl_reg;
	uint8_t			  data[6];
	int16_t			  xaxis;
	int16_t		 	  yaxis;
	int16_t			  zaxis;
	float 			  heading;
	float 			  compass;

	float 			  avg_heading;
	float 		      avg_compass;
}QMC_HandleTypedef;




uint8_t QMC5883_Init(QMC_HandleTypedef *qmc, I2C_HandleTypeDef *i2c, QMC_DataRate_t data_rate);
uint8_t QMC5883_ReadAverage(QMC_HandleTypedef *qmc, uint32_t maxAvrage, uint32_t timePerAvg);
uint8_t QMC5883_Read(QMC_HandleTypedef *qmc);
float   QMC5883_ReadHeading(QMC_HandleTypedef *qmc);
uint8_t QMC5883_Standby(QMC_HandleTypedef *qmc);
uint8_t QMC5883_Reset(QMC_HandleTypedef *qmc);



#endif /* SRC_QMC5883L_QMC5883_H_ */
