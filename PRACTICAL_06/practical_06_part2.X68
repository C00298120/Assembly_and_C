*-----------------------------------------------------------
* Title      : Practical 06 part2
* Written by : Lloyd Prendergast
* Date       : 06/03/2025
* Description: task 2
*-----------------------------------------------------------
    ORG    $1000
START:
    ; Task 13: Display welcome message with CR, LF
    LEA     WELCOME_MSG, A1       ; Load address of welcome message into A1
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task

    ; Task 2: Read string from keyboard (max 80 chars)
    LEA     INPUT_STRING_MSG, A1  ; Load address of "Enter string" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    LEA     INPUT_BUFFER, A1      ; Load address of input buffer into A1
    MOVE.B  #2, D0                ; Task 2: Read string from keyboard
    TRAP    #15                   ; Execute TRAP task

    ; Task 14: Display the input string with CR, LF
    LEA     DISPLAY_STRING_MSG, A1 ; Load address of "Display string" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    LEA     INPUT_BUFFER, A1      ; Load address of input buffer into A1
    MOVE.B  #14, D0               ; Task 14: Display string without CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #13, D0               ; Task 13: Display CR, LF for new line
    TRAP    #15                   ; Execute TRAP task

    ; Task 4: Read a number from the keyboard into D1.L
    LEA     ENTER_NUM_MSG, A1     ; Load address of "Enter number" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #4, D0                ; Task 4: Read a number into D1.L
    TRAP    #15                   ; Execute TRAP task

    ; Task 3: Display the signed number in D1.L in decimal
    LEA     DISPLAY_NUM_MSG, A1   ; Load address of "Display number" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #3, D0                ; Task 3: Display signed number in D1.L
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #13, D0               ; Task 13: Display CR, LF for new line
    TRAP    #15                   ; Execute TRAP task

    ; Task 5: Read a single character from the keyboard into D1.B
    LEA     ENTER_CHAR_MSG, A1    ; Load address of "Enter character" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task

    ; Read a single character (Task 5)
    MOVE.B  #5, D0                ; Task 5: Read single character into D1.B
    TRAP    #15                   ; Execute TRAP task

    ; Task 6: Display the single character in D1.B
    LEA     DISPLAY_CHAR_MSG, A1  ; Load address of "Display character" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #6, D0                ; Task 6: Display single character in D1.B
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #13, D0               ; Task 13: Display CR, LF for new line
    TRAP    #15                   ; Execute TRAP task

    ; Task 7: Check if keyboard input is pending (silently)
    MOVE.B  #7, D0                ; Task 7: Check if keyboard input is pending
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  D1, OUTPUT_BYTE       ; Store result in OUTPUT_BYTE (no display)

    ; Task 8: Return time in hundredths of a second since midnight in D1.L
    LEA     TIME_MSG, A1          ; Load address of "Time" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #8, D0                ; Task 8: Get time in hundredths of a second
    TRAP    #15                   ; Execute TRAP task
    MOVE.L  D1, OUTPUT_LONG       ; Store result in OUTPUT_LONG
    LEA     TIME_VALUE_MSG, A1    ; Load address of "Time value" message
    MOVE.B  #14, D0               ; Task 14: Display string without CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.L  OUTPUT_LONG, D1       ; Load result into D1
    MOVE.B  #3, D0                ; Task 3: Display signed number in D1.L
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #13, D0               ; Task 13: Display CR, LF for new line
    TRAP    #15                   ; Execute TRAP task

    ; Task 9: Terminate the program
    LEA     END_MSG, A1           ; Load address of "End" message
    MOVE.B  #13, D0               ; Task 13: Display string with CR, LF
    TRAP    #15                   ; Execute TRAP task
    MOVE.B  #9, D0                ; Task 9: Terminate program
    TRAP    #15                   ; Execute TRAP task

* Data Section
WELCOME_MSG:      DC.B 'Welcome! This program demonstrates all TRAP tasks.', 0
INPUT_STRING_MSG: DC.B 'Enter a string (max 80 chars): ', 0
DISPLAY_STRING_MSG: DC.B 'You entered: ', 0
ENTER_NUM_MSG:    DC.B 'Enter a number: ', 0
DISPLAY_NUM_MSG:  DC.B 'The number is: ', 0
ENTER_CHAR_MSG:   DC.B 'Enter a character: ', 0
DISPLAY_CHAR_MSG: DC.B 'The character is: ', 0
TIME_MSG:         DC.B 'Current time since midnight (hundredths of a second): ', 0
TIME_VALUE_MSG:   DC.B '', 0  ; Empty message to avoid duplication
END_MSG:          DC.B 'Program terminated. Goodbye!', 0
INPUT_BUFFER:     DS.B 81         ; Buffer for input string (80 chars + NULL)
OUTPUT_BYTE:      DS.B 1          ; Storage for single-byte output
OUTPUT_LONG:      DS.L 1          ; Storage for long-word output

    END START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
