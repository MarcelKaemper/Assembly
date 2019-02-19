section .data
    file_name db "data.data"

section .bss

section .text
    global _start

_start:
    mov rax, 85
    mov rdi, file_name
    mov rsi, 0777
    syscall

    mov rax, 60
    mov rdi, 0
    syscall