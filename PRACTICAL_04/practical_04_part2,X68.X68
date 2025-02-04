*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:*-----------------------------------------------------------
* Title      :
* Written by :
*
*-----------------------------------------------------------
    ORG    $1000
START:
    ;MOVE HEALTH TO MEMORY LOCATION $3000
    MOVE.B  #100,   $3000
    
    ;MOVE LOCATION OF PLAYER INTO DATA REGISTER
    ;X FIRST BYTE 0 TO 15
    ;Y SECOND BYTE 0 TO 15
    MOVE.B  #$12,   D2
    
    ;MOVE LOCATION OF NPC INTO DATA REGISTER
    ;X FIRST BYTE 0 TO 15
    ;Y SECOND BYTE 0 TO 15
    MOVE.B  #22,    D3
    
    ;BITWISE AND D2 and D3
    ;WHATS NEW LOACTION OF PLAYER 
    AND.B   D2, D3
    
    ;LOAD MEMORY ADDRESS $3000 INTO
    ;ADDRESS REGISTER A1
    LEA $3000,  A1
    
    ;HIT BY NPC
    SUB.B   #20,    (A1)
    
    ;PICK UP HEALTH FOUND
    ADD.B   #10,    (A1)
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
