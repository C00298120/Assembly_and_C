*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    MOVE.B #100,    $3000
    
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
    
    BSR     BOSS_HIT
    
    BACK_IN_THE_GAME:
    BSR     HEALTH_PICKUP
    BRA     GAME_END
    
    BOSS_HIT:
    SUB.B   #30,    (A1)
    BRA     BACK_IN_THE_GAME
    
    HEALTH_PICKUP:
    ADD.B   #20,    (A1)
    RTS
    
    GAME_END:
    MOVE.B  #$00,   (A1)

    
    LEA $3000,  A1
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
