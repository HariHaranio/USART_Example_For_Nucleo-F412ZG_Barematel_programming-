# USART_Example_For_Nucleo-F412ZG_Barematel_programming-
> [!NOTE]
> Learning and developing STM32 bare-metal firmware through register-level programming.
> 
> Bare-metal USART3 communication example for the STM32F412ZG (NUCLEO-F412ZG), using custom peripheral drivers to receive UART commands and control an LED through GPIO. Configured for 115200 baud, 8-N-1 serial communication, with commands for LED ON and LED OFF.
>
> [🔗 Barematel_Driver](https://github.com/HariHaranio/STM32F412xG_bare_mate_Drivers)

# STM32F412ZG USART3 LED Command Example

A bare-metal C example for the **STM32F412ZG / NUCLEO-F412ZG** that uses USART3 to receive text commands and control an LED connected to GPIOB pin 0 (PB0).

## Project overview

The application in [`main.c`](https://github.com/HariHaranio/USART_Example_For_Nucleo-F412ZG_Barematel_programming-/blob/main/Src/main.c):

1. Configures the system clock using `RCC_Config_HSE_SystemClock()`.
2. Initializes SysTick.
3. Initializes USART3 with the configuration below.
4. Prints a startup banner and command hints to the serial terminal.
5. Receives characters into a command buffer and processes the command when a carriage return (`\r`) or newline (`\n`) is received.
6. Uses the GPIO driver to set or reset PB0.

## USART configuration

| Setting | Value in `main.c` |
|---|---|
| Peripheral | USART3 |
| Baud rate | 115200 |
| Word length | 8 bits |
| Parity | None |
| Stop bits | 1 |
| Oversampling | 16× |
| Receive buffer | 20-byte command buffer |

The USART configuration is stored in `usart3Config`. The actual peripheral clock and GPIO alternate-function setup depend on the implementations of the included USART and RCC drivers.

## LED configuration

| Setting | Value |
|---|---|
| GPIO port | GPIOB |
| Pin number | 0 (PB0) |
| Mode | Output |
| Output type | Push-pull |
| Pull-up / pull-down | No pull |
| Speed | Low |

The LED is configured by `LED1` and initialized with `GPIO_Init(GPIOB, &LED1)`.

> [!IMPORTANT]
> USART communication was tested on the STM32F412ZG using the SerialLink Communicator to transmit and receive data between the microcontroller and PC.
>
> [SerialLink Communicator](https://github.com/HariHaranio/Python-based-SerialLink-Communicator-UI)
## Expected terminal commands

The source appears intended to accept these commands, followed by Enter:

```text
LED ON
LED OFF
```

The code also defines startup text and responses for LED state, invalid commands, and command-buffer overflow.

## Dependencies

This example uses the project's custom driver headers:

- `GPIO_Driver.h`
- `USART_Driver.h`
- `RCC_Driver.h`
- `SysTick_Driver.h`
- `SYSCONFIG_Driver.h`

It also uses standard C headers `<stdint.h>` and `<string.h>`.

This is not a HAL-based example in `main.c`; it calls the project's own peripheral-driver APIs. Build it within the STM32CubeIDE project that contains those driver implementations and the matching STM32F412ZG linker/startup files.

## Build and run

1. Open the project in STM32CubeIDE.
2. Confirm that all referenced driver source files are included in the build and that the include paths are configured.
3. Build the project.
4. Flash the firmware to the NUCLEO-F412ZG.
5. Open a serial terminal on the board's USART3 connection using **115200 baud, 8 data bits, no parity, 1 stop bit (115200 8-N-1)**.
6. Type `LED ON` or `LED OFF` and press Enter.

The serial adapter/virtual COM-port routing and USART3 pin mapping must match the board and the project's USART driver configuration.

## Known issues to fix before relying on the example

The uploaded source currently contains logic and receive-length issues. The README describes the apparent intended behavior; it does **not** mean these issues have already been fixed.

1. **`strcmp()` conditions are reversed.** `strcmp(a, b)` returns `0` when the strings match. The current `if (strcmp(command, "LED ON"))` and `else if (strcmp(command, "LED OFF"))` therefore do not correctly recognize the matching commands. Use `strcmp(command, "LED ON") == 0` and `strcmp(command, "LED OFF") == 0`.
2. **Incorrect receive size expression.** `sizeof(data - 1)` measures the type of the expression (typically `sizeof(int)`), not the one-byte `data` variable. Passing that size to `USART_Receive()` may write beyond `data`. Use a receive length of `1U` for a single byte, according to the function's API.
3. **Nested infinite loops.** There is an additional `while (1)` inside the main infinite loop. It is redundant and makes the control flow harder to follow.
4. **Command-buffer overflow handling.** When the buffer fills, the index is reset, but the current command is not explicitly discarded until a line ending. Consider clearing the buffer and tracking overflow until the next line ending.

Fix and test these issues before treating the commands as working reliably.

> [!Note]
> USART API's are used form baremate driver
>
> Find the relevant Drivers and added it to the Inc & Scr file to run without any error
>
> [🔗 Barematel driver Link](https://github.com/HariHaranio/STM32F412xG_bare_mate_Drivers)
