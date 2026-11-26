
; Name: Abed Sherif Saeed 
; Student ID: 2025002540
; Section: 4
; Question: Q1 - 8-Bit Addition with Carry

        LDA 2500H       ; load first number
        MOV B, A        ; save it in B
        LDA 2501H       ; load second number
        ADD B           ; A = A + B
        STA 2502H       ; store the sum
        MVI A, 00H      ; clear A (MVI does not touch carry)
        ADC A           ; A = 0 + 0 + carry
        STA 2503H       ; store the carry (00H or 01H)
        HLT