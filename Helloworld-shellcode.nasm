; Hello World 

global _start
section .text

_start:
    ; print hello world on the screen 
    xor eax , eax
    mov al , 0x4
    
    xor ebx, ebx
    mov bl, 0x1

    mov ecx, message
    
    xor edx, edx 
    mov dl, 13
    
    int 0x80 ; calling interpt 

    ; exit the programe gracefully 
    mov eax, 0x1
    mov ebx, 0x5
    int 0x80

section .data

    message: db "Hello World" 0xA
    