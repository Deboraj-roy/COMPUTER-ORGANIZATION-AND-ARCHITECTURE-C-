;Write an Assembly program to print 2 separate message line

; The easiest way to print out "Hello, World!"

name "hi"

org 100h

jmp start       ; jump over data declaration

msg:    db      "Hello world!",   0Dh,0Ah, 24h
msg1:        db      "This is second line.",        0Dh,0Ah, 24h



start:  mov     dx, msg  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!        
        
    
        
        mov     dx, msg1  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!        
        
        
        mov     ah, 0 
        int     16h      ; wait for any key....
        
ret ; return to operating system.

