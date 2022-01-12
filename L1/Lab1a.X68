*-----------------------------------------------------------
* Title      : My first 68000 assembly-language program!
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Say hello!
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG      $1000
START   MOVE.B   #13,D0              ;task 13 (display string)
        LEA      MSG,A1              ;point to string
        TRAP     #15                 ;system call 
                
        SIMHALT                      ;halt simulator

* Put variables and constants into memory here

MSG     DC.B    'Hello World!',0     ;null-terminated string 

        END    START                 ;last line of source
