    ORG    $1000
START:

    LEA     $4000, A2
    MOVE.B  #100, (A2)
    SUB.B   #10, (A2) ; base10 10 subtracted from the value in memory location that A2 points to

    SIMHALT



    END    START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
