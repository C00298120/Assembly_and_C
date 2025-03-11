*-----------------------------------------------------------
* Title      :Practical 06 part4
* Written by :Lloyd Prendergast
* Date       :11/03/2025
* Description:task 4
*-----------------------------------------------------------
 ORG $1000
START:
    LEA $4000, SP
    
    MOVE.B #1, -(SP)
    MOVE.B #2, -(SP)
    MOVE.B #3, -(SP)
    MOVE.B #4, -(SP)
    
    MOVE.B (SP)+, D1
    MOVE.B (SP)+, D1
    MOVE.B (SP)+, D1
    MOVE.B (SP)+, D1
 END START
 * questions  What is the purpose of the Stack Pointer?
 * The Stack Pointer (SP) holds the address of the top of the stack in memory

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
