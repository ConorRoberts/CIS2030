*-----------------------------------------------------------
* Title      : Lab2i 
* Written by : Conor Roberts #1056167
* Date       : 01/10/2020
* Description: Add three 8-bit numbers
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.W  NUM1,D0       ;load byte at NUM1 into D0
        ADD.B   NUM2,D0       ;now add byte at NUM2
        ADD.B   NUM3,D0       ;now add byte at NUM3
        SIMHALT               ;halt simulator

* Put program variables and constants here

        ORG     $9000
NUM1    DC.B    100            ;store 100 in memory
NUM2    DC.B    20             ;store 20 in memory
NUM3    DC.B    150            ;store 150 in memory
        END     START          ;last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
