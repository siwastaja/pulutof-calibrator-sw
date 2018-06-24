#ifndef PULUTOF_CALIB_DATA_H
#define PULUTOF_CALIB_DATA_H

#define XS 160
#define YS 60

#define MAX_NUM_DELAY_STEPS 64

typedef struct
{
	double temperature;
	int n_delay_steps;
	int16_t dcs[MAX_NUM_DELAY_STEPS][4][XS*YS];	

} pulucal_linearity_meas_t;

typedef struct
{
	

} pulucal_data_t;

#endif
