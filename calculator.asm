section .data
	val db '1' 
	val2 db '5'

section .bss
	res resb 1

section .text
	global _start

_start:

	mov rsi, [val]
	sub rsi, '0'

	mov rdi, [val2]
	sub rdi, '0'

	add rsi, rdi
	add rsi, '0'

	mov [res], rsi

	mov rax, 1
	mov rdi, 1
	mov rsi, res
	mov rdx, 1
	syscall


	mov rax, 60
	mov rsi, 0
	syscall

