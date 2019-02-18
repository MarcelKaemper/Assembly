section .data
    msg db "You typed:", 0xa
    len equ $ - msg

section .bss
    inp resb 16

section .text
    global _start

_start:
    mov rax, 0
    mov rdi, 0
    mov rsi, inp
    mov rdx, 16
    syscall

    mov rax, 1
    mov rdi, 0
    mov rsi, inp
    mov rdx, len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
