; Name: Abed Sherif Saeed
; Student ID: 2025002540
; Section: 4
; Question: Q3 - Count Even and Odd Numbers

        LDA 2500H       ; load N (array length)
        MOV C, A        ; C = loop counter
        MVI D, 00H      ; D = even count
        MVI E, 00H      ; E = odd count
        LXI H, 2501H    ; HL points to the array start

LOOP:   MOV A, M        ; load current element
        ANI 01H         ; test the lowest bit
        JZ EVEN         ; bit = 0 -> even
        INR E           ; otherwise odd
        JMP NEXT
EVEN:   INR D
NEXT:   INX H           ; next element
        DCR C           ; counter--
        JNZ LOOP        ; repeat until C = 0

        MOV A, D
        STA 2600H       ; store even count
        MOV A, E
        STA 2601H       ; store odd count
        HLT