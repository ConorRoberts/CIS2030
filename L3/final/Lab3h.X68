*-----------------------------------------------------------
* Title      : Lab3h    
* Written by : Conor Roberts 1056167
* Date       : 14/10/2020
* Description: Absolute Short/Long Addressing
*-----------------------------------------------------------
CODE        EQU    $8000        ;program starts at $8000

LOCATION1   EQU    $00006000        
LOCATION2   EQU    $00009000
LOCATION3   EQU    $FFFF9000

     
        ORG     CODE                
START:  MOVE.L  LOCATION1,D0     ;move long word at LOCATION1 to D0
        MOVE.L  LOCATION2,D0     ;move long word at LOCATION2 to D0
        MOVE.L  LOCATION3,D0     ;move long word at LOCATION3 to D0
     
        SIMHALT                  ; halt simulator


* Initialize memory

        ORG     LOCATION1
        DC.L    1   
        ORG     LOCATION2
        DC.L    2
        ORG     LOCATION3
        DC.L    3   

        END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
