; Filename: Stack.nsm
; Author : Rashid


global _start
section .text
_start:

    mov eax, 0x66778899
    mov ebx, 0x0
    mov ecx, 0x0

    ; push and pop of r/m16 and r/32
    ; register puch and pop

    push ax ; pushing 16bit value
    pop bx ; poping 16bit value

    push eax ; pushing 32bit value
    pop ecx ; poping 32bit value

    ; memory push and pop

    push word [sample]
    pop ecx
    push dword [sample]
    pop edx

    ; exit the program gracefully

    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
    sample: db 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22