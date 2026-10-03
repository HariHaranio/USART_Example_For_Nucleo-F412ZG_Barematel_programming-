#include "main.h"

USART_Struct_T usart3Config = {
        .usartID      = USART3_ID,
        .baudrate     = 115200,
        .wordLength   = USART_WORDLENGTH_8B,
        .parity       = USART_PARITY_NONE,
        .stopBits     = USART_STOPBITS_1,
        .oversampling = 16,
        .USARTInstance = USART3,

        .pTxBuffer = 0,
        .TxLength = 0,
        .TxIndex  = 0,
        .TxBusy   = 0,

        .pRxBuffer = 0,
        .RxLength = 0,
        .RxIndex  = 0,
        .RxBusy   = 0
};



GPIO_PINCONFIG_T LED1 = {
    .pin           = led_1,
    .mode          = GPIO_MODE_OUTPUT,
    .otype         = GPIO_OTYPE_PP,
    .pupdr         = GPIO_NO_PULL,
    .speed         = GPIO_SPEED_LOW,
    .alternatefunc = 0
};


uint8_t Str_mesg[]		= "STM32F412ZG UART TEST\r\n";
uint8_t line[]			= "---------------------\r\n";
uint8_t Type_on[]		= "Type: LED ON\r\n";
uint8_t Type_off[]		= "Type: LED OFF\r\n";
uint8_t On[]			= "LED_ON";
uint8_t Off[]			= "LED_OFF";
uint8_t cmd_line[]		= "> ";
uint8_t nxt_line[]		= "\r\n";
uint8_t ind_cmd[]		= "Invalid command\r\n";
uint8_t buff_ovrflo[]	= "\r\nBuffer overflow\r\n";

int main(void)
{
	char command[20];
	uint8_t index = 0;

	RCC_EnableGPIO(GPIOB);
	GPIO_Init(GPIOB, &LED1);

//    uint8_t message[] = "hello from usart3 hair\n";

	FPU_EN;

    RCC_Config_HSE_SystemClock();
    SysTick_Init();

    USART_Init(&usart3Config); // check the main.h for the configuration

    /* Startup message */
    USART_Transmit(&usart3Config, Str_mesg, sizeof(Str_mesg) - 1);
    USART_Transmit(&usart3Config, line, sizeof(line) - 1);
    USART_Transmit(&usart3Config, Type_on, sizeof(Type_on) - 1);
    USART_Transmit(&usart3Config, Type_off, sizeof(Type_off) - 1);
    USART_Transmit(&usart3Config, cmd_line, sizeof(cmd_line) - 1);


    while(1)
    {
//        USART_Transmit(&usart3Config, message, sizeof(message) - 1);
//        SysTick_DelayMs(1000);    while (1)
        {
            uint8_t data;
            /* Receive character */
            USART_Receive(&usart3Config, &data, sizeof(data - 1));
            /* Echo character */
//            USART_Transmit(&usart3Config, &data, sizeof(data) - 1);
            /*
               ENTER key
               Terminal may send:
               '\r'
               '\n'
               or both
            */
            if ((data == '\r') || (data == '\n')){
                command[index] = '\0';
                USART_Transmit(&usart3Config, nxt_line, sizeof(nxt_line) - 1);
                /* ================= LED ON ================= */
                if (strcmp(command, "LED ON")) {
                    GPIO_SetPin(GPIOB, led_1);
                    USART_Transmit(&usart3Config, On, sizeof(On) - 1);
                }
                /* ================= LED OFF ================= */
                else if (strcmp(command, "LED OFF")) {
                	GPIO_ResetPin(GPIOB, led_1);
                	USART_Transmit(&usart3Config, Off, sizeof(Off) - 1);
                }
                /* ================= INVALID ================= */
                else if (index != 0){
                	USART_Transmit(&usart3Config, ind_cmd, sizeof(ind_cmd) - 1);
                }


                /* Reset command buffer */

                index = 0;

//                USART_Transmit(&usart3Config, cmd_line, sizeof(cmd_line) - 1);
            }else{
                /*
                   Store received character

                   Prevent buffer overflow
                */
                if (index < (sizeof(command) - 1)){
                    command[index] = data;
                    index++;
                }else {
                    index = 0;

                    USART_Transmit(&usart3Config, buff_ovrflo, sizeof(buff_ovrflo) - 1);
                    USART_Transmit(&usart3Config, cmd_line, sizeof(cmd_line) - 1);
                }
            }
        }


    }
}
