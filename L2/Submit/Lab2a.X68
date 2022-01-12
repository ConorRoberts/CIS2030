*-----------------------------------------------------------
* Title      : Lab2a 
* Written by : Conor Roberts #1056167
* Date       : 01/10/2020
* Description: Examples of MOVE instructions
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.B  #14,D0          ;task 13 (display string without '\n')
        LEA     MSG,A1          ;point to string
        TRAP    #15             ;system call

        MOVE.B  #4,D0           ;task 4 (read number from keyboard into D1)
        TRAP    #15             ;system call
   
        MOVE.B   D1,D2          ;copy from D1 to D2
        MOVE.W   D1,D3          ;copy from D1 to D3
        MOVE.L   D1,D4          ;copy from D1 to D4
        MOVE     D1,D5          ;copy from D1 to D5 

        SIMHALT                 ;halt simulator


* Put variables and constants into memory here

        ORG     $9000                           ;data      
MSG     DC.B    'Enter a decimal number: ',0    ;null terminated string

        END    START                            ;last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
