; Author : Rashid
; File Name : Control.nasm
;

global _start
section .text

_start:
    jmp Begin

NeverExcute:
    mov eax, 0x10
    xor ebx, ebx

Begin:
    mov eax, 0x5 ; we need to print the Hello word 5 times that is the reason we have initiat the eax to 5

PrintHW:
    push eax

    ; Print hello world using write Syscall
    mov eax, 0x4
    mov ebx, 1
    mov ecx, message
    mov edx, mlen
    int 0x80

    pop eax
    dec eax
    jnz PrintHW

    mov eax, 0x1
    mov ebx, 0xa
    int 0x80

section .data
    message:    db  "Hello world! "
    mlen    equ $-message
