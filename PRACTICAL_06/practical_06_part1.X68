*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    
    ;MOVE TRAP TASK TO D0
    MOVE.B  #2, D0
    ; INTERUPT AND TRAP TASK
    TRAP    #15
    
    LEA     MESSAGE,    A1
    MOVE.B  #13,    D0
    TRAP    #15
    
 END_PROG:
 
 MESSAGE: DC.B 'TRAP TASK TEST',    0

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
