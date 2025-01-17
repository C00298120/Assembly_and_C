*-----------------------------------------------------------
* Title      :PART2
* Written by :Lloyd Prendergast C00298120
* Date       :17/10/25
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:      
    
    MOVE.L #%00001111,D1
    MOVE.B D1,D2
    MOVE.B D1,$2000
    MOVE.B $2000,D2
    MOVE.B $2000,$3000          
    SIMHALT             
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
