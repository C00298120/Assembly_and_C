*-----------------------------------------------------------
* Title      :practical 06 part3
* Written by :Lloyd Prendergast
* Date       :09/03/2025
* Description:task 3
*-----------------------------------------------------------
 ORG $1000
 START:

    LEA $4000, A7
    
    MOVE.B #1, -(A7)
    MOVE.B #2, -(A7)
    MOVE.B #3, -(A7)
    MOVE.B #4, -(A7)
    
    MOVE.B (A7)+, D1
    MOVE.B (A7)+, D1
    MOVE.B (A7)+, D1
    MOVE.B (A7)+, D1
    
 END START
* questions  What is the purpose of address register A7?
* Address Register A7 is used to point to the top of the stack in memory.

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
