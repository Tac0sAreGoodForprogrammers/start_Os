ORG 0x7c00
BITS 16

main:
    hlt
.halt:
   jmp .halt
times 510-($-$$) db 0
dw 0aa55h