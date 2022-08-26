;Write two assembly language programs to calculate the following high-level arithmetic instructions and print the result into the screen as output:
;i) A = B-A-1
;ii)B = 3*B +7
org 100h

jmp start       ; jump over data declaration

msg:    db      "B = 3*B +7", 0Dh,0Ah, 24h

start:  mov     dx, msg  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!
        
        mov     ah, 0 
        int     16h      ; wait for any key....
        
ret ; return to operating system.

