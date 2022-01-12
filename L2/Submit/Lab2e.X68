*-----------------------------------------------------------
* Title      : Lab2e 
* Written by : Conor Roberts #1056167
* Date       : 01/10/2020
* Description: Example of subtraction
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.L  COUNT,D1       ;load longword at COUNT into D1
        MOVE.L  #COUNT,D2      ;load COUNT into D1  
        SUB.L   D1,D2          ;subtract D1 from D2

        SIMHALT                ;halt simulator

* Put program variables and constants here

        ORG     $9000
COUNT   DC.L    $1234          ;store 1234 in memory
  
        END     START          ;last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
