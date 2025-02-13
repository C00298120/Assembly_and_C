*-----------------------------------------------------------
* Title      :
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
    LEA $3000,  A1
    
    ;BRANCH TO TAKING_DAMAGE
    BSR     TAKING_DAMAGE
    
BACK_IN_THE_GAME:
    ;LETS HELP THIS PLAYER OUT
    BSR     HEALTH_PICKUP
    BRA     GAME_END
    
TAKING_DAMAGE:
    ;HIT BY NPC
    ;NON PLAYER CHARACTER
    SUB.B   #20,    (A1)
    BRA     BACK_IN_THE_GAME
    
HEALTH_PICKUP:
    ;PICKUP HEALTH FOUND
    ADD.B   #10,    (A1)
    RTS
    
GAME_END:
    ;GAME OVER
    MOVE.B  #$00,   (A1)
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
