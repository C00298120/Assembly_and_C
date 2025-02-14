*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
 ;D0 USED FOR TRAP CODES, AND COUNTING ENEMIES
 ;D1 USED FOR PLAYER HEALTH
 ;D2 USED FOR ENEMY POSITIONS
 ;D4 USED FOR ENEMY COUNT
 ;A0 FOR COUNTING ENEMIES
 ;A1 FOR PROGRESS MESSAGES
 ;A2 USED FOR PLAYER_X
 ;A3 USED FOR ENEMY_POSITIONS
 
 DAMAGE     EQU 10
START:   
    LEA     PLAYER_X,   A2
    LEA     EMEMY_POSITION, A3
    BRA     GAME_LOOP

    GAME_LOOP:
        BSR     COUNT_ENEMIES
        MOVE.B  D0, D4

        LEA     MSG_GAMELOOP,   A1
        BSR     DRAW

        BSR     UPDATE
        BRA     GAME_LOOP

    UPDATE:
    
        MOVE.B  PLAYER_HEALTH,  D1

        LEA     MSG_HEALTH, A1
        BSR     DRAW

        MOVE.B  #3, D0
        TRAP    #15

        LEA     CRLF,   A1
        BSR     DRAW

        CMP     #0, D1
        BLE     GAME_OVER
        ADD.L   #1, (A2)
        BSR     COLLISION
        RTS               
   



SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
