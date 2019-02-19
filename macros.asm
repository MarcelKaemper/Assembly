section .data
    msg db "Macro example", 0xa
    len equ $ - msg

section .bss

section .text
    global _start

%macro print_string 2
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

_start:
    print_string msg, len
    exit


