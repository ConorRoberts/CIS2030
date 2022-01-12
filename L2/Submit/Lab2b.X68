*-----------------------------------------------------------
* Title      : Lab2b
* Written by : Conor Roberts #1056167
* Date       : 01/10/2020
* Description: Example of MOVE instruction with constant
*-----------------------------------------------------------

* Put program instructions into memory here

        ORG     $8000
START   MOVE.L  #$305419896,D1  ;305419896 copies into D1
        MOVE.B  D1,D2          ;copy from D1 to D2
        MOVE.W  D1,D3          ;copy from D1 to D3
        MOVE.L  D1,D4          ;copy from D1 to D4
        MOVE    D1,D5          ;copy from D1 to D5

        SIMHALT                ;halt simulator

        END     START          ;last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
