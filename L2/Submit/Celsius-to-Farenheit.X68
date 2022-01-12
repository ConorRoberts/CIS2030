*-----------------------------------------------------------
* Title      : Celsius-to-Farenheit
* Written by : Conor Roberts #1056167
* Date       : 01/10/2020
* Description: program desciption goes here
*-----------------------------------------------------------

* Put program instructions into memory here

        ORG     $8000
START

* Call function to read Celsius temperature from keyboard
* Resulting byte stored in memory at label CELSIUS

        JSR     READ_TEMP


* Put your code here for computing F = (C x 9)/5 + 32
* The final 32-bit result MUST be stored in D1

        MOVE.B CELSIUS,D2   ;load byte at CELSIUS into D2
        EXT.W D2            ;sign extend byte to word
        MULS #9,D2          ;F = 9 x CELSIUS
        DIVS #5,D2          ;F = 9 x CELSIUS/5
        ADD.B #32,D2        ;F = 9 x CELSIUS/5 + 32
        CLR.L D1            ;clear all 32 bits in D1
        MOVE.W D2,D1        ;move F to D1


* Call function to display Farenheit temperature on screen
* Function assumes that temperature is in D1

        JSR     DISPLAY_TEMP

        SIMHALT                  ;halt simulator


* Put program variables and constants here

          ORG     $9000
CELSIUS   DC.B    15



*-----------------------------------------------------------
* Subroutine : Read Temperature from Keyboard
* Description: Prompts user to enter temperature in Celsius
*              and stores input as a byte at label CELSIUS
* Registers:   Subroutine is transparent to calling code
*-----------------------------------------------------------

READ_TEMP     MOVEM.L  A1/D0,-(SP)       ;save working registers
              LEA      MSG1,A1           ;point to string
              MOVE.B   #14,D0            ;task 14 to display string without '\n'
              TRAP     #15               ;system calll
              MOVE.B   #4,D0             ;task 4 to read number from keyboard
              TRAP     #15               ;system call
              MOVE.B   D1,CELSIUS        ;store number at CELSIUS
              MOVEM.L  (SP)+,A1/D0       ;restore working registers
              RTS

MSG1          DC.B    'Enter Temperature in Celsius: ',0


*-----------------------------------------------------------
* Subroutine : Display Temperature
* Description: Displays farenheit temperature on screen
* Registers:   Entry - D0 contains temperature in Farenheit
*-----------------------------------------------------------

DISPLAY_TEMP  MOVEM.L  A1,-(SP)      ;save working register
              LEA      MSG2,A1       ;point to string
              MOVE.B   #14,D0        ;task 14 to display string without '\n'
              TRAP     #15           ;system call
              MOVE.B   #3,D0         ;task 3 to display number of keyboard
              TRAP     #15           ;system call
              MOVE.L   (SP)+,A1      ;restore working register
              RTS

MSG2          DC.B    'Temperature in Fahrenheit: ',0

              END     START          ;last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
