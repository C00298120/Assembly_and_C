*-----------------------------------------------------------
* Title      :part2
* Written by :C00298120 Lloyd
* Date       :17/01/25
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  
    MOVE.B #$64,D1
    LEA text, A1
    MOVE #14,D0
    TRAP #15
    
    MOVE #3,D0
    TRAP #15
    SIMHALT             

text    dc.b 'Data Register: ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
