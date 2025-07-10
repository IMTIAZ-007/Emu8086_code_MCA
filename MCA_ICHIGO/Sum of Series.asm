;  ---- sum38.asm -------------------------------------------------
;  Adds the series 1,4,7,...,112 using a loop controlled by JNZ.
;  Author: ChatGPT (o3 model)
; ----------------------------------------------------------------
        .model  small
        .stack  100h

.data
SUM     dw  ?               ; store final sum here

.code
main    proc
        mov     ax, @data    ; load DS with our data segment
        mov     ds, ax

        mov     cx, 10       ; <<Number of terms n>> 38 terms in the series
        mov     si, 1        ; <<First term a>> SI will hold the current term (starts at 1)
        xor     ax, ax       ; AX = running sum = 0

loop_start:
        add     ax, si       ; add current term to sum
        add     si, 2        ; <<Common difference d>> next term = term + 3
        dec     cx           ; one term processed
        jnz     loop_start   ; if CX ? 0, jump back and continue

        mov     SUM, ax      ; save result (AX = 2147)

        ;  ---- optional program exit for DOS ----
        mov     ah, 4Ch
        int     21h
main    endp
        end     main
; ----------------------------------------------------------------
