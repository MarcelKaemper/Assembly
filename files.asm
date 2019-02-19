section .data
    file_name db "data.data",0xa
    msg db "This is line 1 of the freshly created file.",0xa,"and this is the second line",0xa
    len equ $-msg

section .bss
    fd resw 1

section .text
    global _start

_start:
    mov rax, 85
    mov rdi, file_name
    mov rsi, 0777
    syscall

    mov [fd], rax

    mov rax, 1
    mov rdi, [fd]
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 3
    mov rdi, [fd]
    syscall

    mov rax, 60
    mov rdi, 0
    syscall