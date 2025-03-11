*-----------------------------------------------------------
* Title      : Practical 06 part6
* Written by : Lloyd Prendergast
* Date       : 11/03/2025
* Description: Task 6
*-----------------------------------------------------------
    ORG $1000

START:
    MOVE.L #HEALTH, -(SP)      ; Note position in Stack
    MOVE.B #14, D0              ; Initialize D0 with player health
    MOVE.B #14, D1              ; Initialize D1 with enemy health
    MOVE.L D0, -(SP)            ; Push player health to stack
    BRA GAME_LOOP                ; Jump to game loop
    BSR HEADS_UP_DISPLAY         ; Call heads-up display subroutine
    BRA END_GAME                 ; Branch to end of game

GAME_LOOP:           ; Get player health from stack
    CMP D0, D1                   ; Compare player and enemy health
    BEQ DAMAGE                   ; If equal, branch to damage
    BSR NO_DAMAGE                ; Otherwise branch to no damage

DAMAGE:
    MOVEA.L 12(SP), A1          ; Move address into A1
    ; Insert damage calculations here if needed
    BRA END_GAME                          ; Return from subroutine

NO_DAMAGE:
    RTS                          ; Return from subroutine

HEADS_UP_DISPLAY:
    LEA MESSAGE, A1             ; Load address of message into A1
    MOVE.B HEALTH, D1           ; Move health value into D1
    MOVE.B #3, D0               ; Move system call number for output into D0
    TRAP #15                     ; System call to output
    RTS                          ; Return from subroutine

END_GAME:
    SIMHALT                     ; Halt the simulator

HEALTH: 
    DC.B 99                    ; Ensure that HEALTH is defined as a byte
MESSAGE: 
    DC.B 'Health:', 0          ; Define MESSAGE properly, null-terminated
 END START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
