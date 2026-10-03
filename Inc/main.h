#ifndef MAIN_H_
#define MAIN_H_

#include <stdint.h>
#include <string.h>
#include "GPIO_Driver.h"
#include "USART_Driver.h"
#include "RCC_Driver.h"
#include "SysTick_Driver.h"
#include "SYSCONFIG_Driver.h"

#define FPU_EN     SCB_CPACR_ADDR |= (0xF << 20);

#define led_1 0

extern USART_Struct_T usart3Config;
extern GPIO_PINCONFIG_T LED1;



#endif /* MAIN_H_ */
