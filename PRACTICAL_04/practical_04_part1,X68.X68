*-----------------------------------------------------------
* Title      
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    ;MOVE HEALTH TO MEMORY LOCATION $3000
    MOVE.B  #100,   $3000
   
    ;LOAD MEMORY ADDRESS $3000 INTO
    ;ADDRESS REGISTER A1 
    LEA     $3000,  A1
    
    ;HIT BY NPC
    SUB.B   #20,    (A1)
    
    ;PICKUP HEALTH FOUND
    ADD.B   #10,    (A1)
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
