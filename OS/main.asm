[org 0x7c00]

;;mov si, STR_O
;;call printf

;;mov si, STR_T
;;call printf

;;mov si, STR_TH
;;call printf
mov al, 1
mov cl, 2
call readDisk
jmp test

jmp $

%include "./printf.asm"
%include "./readDisk.asm"

DISK_ERR_MSG: db 'Error Loading Disk.', 0x0a, 0x0d, 0
TEST_STR: db 'You are in the second sector.', 0x0a, 0x0d, 0

times 510-($-$$) db 0
dw 0xaa55

test:
	mov si, TEST_STR
	call printf

times 512 db 0
