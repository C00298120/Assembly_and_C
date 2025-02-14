
    ORG     $1000


START:
    LEA PLAYER_POSITION, A1
    LEA ENEMY_POSITION, A2

    MOVE.B #10, D1     ; Player X position
    MOVE.B #15, D2     ; Player Y position
    MOVE.B #50, D3     ; Enemy X position
    MOVE.B #55, D4     ; Enemy Y position

CHECK_COLLISION:
    CMP.B D1, D3       ; Compare X positions
    BNE NEXT_MOVE      ; If not equal, move player

    CMP.B D2, D4       ; Compare Y positions
    BNE NEXT_MOVE      ; If not equal, move player

    BRA COLLISION      ; If both match, jump to COLLISION

NEXT_MOVE:
    ADD.B #1, D1       ; Move Player X coordinate right
    ADD.B #1, D2       ; Move Player Y coordinate down
    BRA CHECK_COLLISION

COLLISION:
    BRA GAME_OVER      ; Collision detected, go to GAME_OVER

GAME_OVER:
    SIMHALT            ; Stop execution

PLAYER_POSITION:  DC.B 10, 15
ENEMY_POSITION:   DC.B 50, 55

    END START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
