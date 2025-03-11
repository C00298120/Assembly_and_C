*-----------------------------------------------------------
* Title      :Practical 06 part5
* Written by :Lloyd Prendergast
* Date       :11/03/2025
* Description:task 5
*-----------------------------------------------------------
  ORG $1000

; Ensure that HEALTH is defined before using it
HEALTH DC.B 99          ; Define HEALTH as a byte with an initial value of 100
MESSAGE DC.B 'Health:', 0 ; Define MESSAGE properly as a null-terminated string

START:
    MOVE.L HEALTH, -(SP)  ; Access HEALTH for use (Corrected)
    JSR GAME_LOOP
    BSR HEADS_UP_DISPLAY

GAME_LOOP:
    MOVEA.L 4(SP), A1
    SUB.B #10, (A1)
    RTS

HEADS_UP_DISPLAY:
    LEA MESSAGE, A1 
    MOVE.B #14, D0
    TRAP #15
    MOVE.B HEALTH, D1      ; This uses HEALTH
    MOVE.B #3, D0
    TRAP #15
    RTS

 END START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
