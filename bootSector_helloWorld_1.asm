[org 0x7c00]

h db "H"
e db "e"
l db "l"
o db "o"
w db "W"
r db "r"
d db "d"
space db " "
exclam db "!"

print:
    mov ah, 0x0e ; tty mode
    mov al, [h]
    int 0x10
    mov al, [e]
    int 0x10
    mov al, [l]
    int 0x10
    mov al, [l]
    int 0x10
    mov al, [o]
    int 0x10
    mov al, [space]
    int 0x10
    mov al, [w]
    int 0x10
    mov al, [o]
    int 0x10
    mov al, [r]
    int 0x10
    mov al, [l]
    int 0x10
    mov al, [d]
    int 0x10
    mov al, [exclam]
    int 0x10
    ret


call print

jmp $ ; jump to current address = infinite loop

; Fill with 510 zeros minus the size of the previous code so boot sector is 512
times 510-($-$$) db 0
; Magic number so bios knows it is bootable
dw 0xaa55 