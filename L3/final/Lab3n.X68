*-----------------------------------------------------------
* Title      : Lab3n    
* Written by : Conor Roberts 1056167
* Date       : 14/10/2020
* Description: Indirect with index and displacement 
*-----------------------------------------------------------
CODE    EQU     $8000              ;program starts at $8000
DATA    EQU     $9000              ;start of data
NCOLS   EQU     4                  ;number of columns in matrix     
     
        ORG     CODE      

* Prompt user to enter row number (0-3)

START:  LEA     MSG1,A1            ;A1 points to MSG1
        MOVE.B  #14,D0             ;display string
        TRAP    #15                ;system call
        MOVE.B  #4,D0              ;read row number from keyboard into D1
        TRAP    #15                ;system call
        MOVE.L  D1,D2              ;save row number


* Prompt user to enter column number (0-3)
        
        LEA     MSG2,A1            ;A0 points to MSG1
        MOVE.B  #14,D0             ;display string
        TRAP    #15                ;system call
        MOVE.B  #4,D0              ;read column number from keyboard into D1
        TRAP    #15                ;system call
        MOVE.L  D1,D3

        
* Load array element at matrix[row][column]

        CLR     D4        
        LEA     MATRIX,A0          ;A0 points to base of array
        MULU    #NCOLS*4,D2          ;compute row x NCOLS
        MULU    #4,D3
        ADD.L   D2,D3              ;add column offset 
        MOVE.L  0(A0,D3.L),D4      ;load array element

        
* Display array element on console

        CLR.L   D1                 ;clear D1
        MOVE.B  D4,D1              ;move array element to D1
        LEA     MSG3,A1            ;A0 points to MSG1
        MOVE.B  #14,D0             ;display string
        TRAP    #15                ;system call
        MOVE.B  #3,D0              ;display array element
        TRAP    #15                ;system call
        
        SIMHALT                    ;halt simulator
     
     
* Statically allocate 4 x 4 matrix   
     
        ORG     DATA
MATRIX  DC.L    0,1,2,3            ;store 2-dimensional array
        DC.L    4,5,6,7
        DC.L    8,9,10,11
        DC.L    12,13,14,15


* Messages to display on console

MSG1    DC.B    'Enter row (0-3): ',0
MSG2    DC.B    'Enter column (0-3): ',0
MSG3    DC.B    'Array Element: ',0
        
        END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
