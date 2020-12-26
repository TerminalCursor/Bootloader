[org 0x1000]
[bits 64]
entry:
	;; Blank blue background
	mov rcx, 0x7D00
	shl rcx, 1
	mov rdi, 0xA0000
	mov rax, 0x01
.loop:
	mov [rdi], al
	add rdi, 1
	dec rcx
	jnz .loop

	;; Output register contents
	mov rax, [TEMP_RAX]
	xor rdi, rdi
	call dump_rax
	add rdi, 0xC20
	mov rax, rbx
	call dump_rax
	add rdi, 0xC20
	mov rax, rcx
	call dump_rax
	add rdi, 0xC20
	mov rax, rdx
	call dump_rax
	add rdi, 0xC20
	mov rax, rsi
	call dump_rax
	add rdi, 0xC20
	mov rax, rdi
	call dump_rax
	add rdi, 0xC20
	mov rax, rbp
	call dump_rax
	add rdi, 0xC20
	mov rax, rsp
	call dump_rax
	;; Output last key pressed
	add rdi, 0xC20
	mov rax, [LAST_KEY]
	call dump_rax
	;; Output end of boot sector
	;;  (Containse video mode and boot drive)
	add rdi, 0xC20
	mov rax, [0x7C00+504]
	call dump_rax
	;; Move and print strings
	mov rdi, 0x6000
	call pos_to_offset
	mov rbx, MRAX
	call dump_string
	add rdi, 0xC6E
	add rdi, 0xB40
	mov rbx, MXMAS
	call dump_string
	add rdi, 0xC08
	mov rbx, MSHORT
	call dump_string
	mov rdi, 0x6050
	call pos_to_offset
	mov rbx, [LAST_KEY]
	add rbx, KEY_CODES
	sub rbx, 1
	call dump_ch

	;; Input loop
.uploop:
	mov dx, 0x60
	in ax, dx
	cmp al, [LAST_KEY]
	je .uploop
	mov [LAST_KEY], al
	test al, 0x80
	jz .uploop
	;; Exit if q
	cmp al, 0x90
	je .exit
	mov [TEMP_RAX], rax
	jmp entry

.exit:
	; Shutdown time
	mov dx, 0x604
	mov ax, 0x2000
	out dx, ax

	;; Shutdown failed... loop indefinitely
	jmp $

MXMAS db "OS: Merry Christmas!",0
MSHORT db "OS: Welcome.", 0
MRAX db ":RAX", 0
LAST_KEY db 0
CURSOR_POSITION dq 0

dump_rax:
	push rbp
	mov rbp, rsp
	xor rbx, rbx
	mov rbx, 16
.loop:
	mov rsi, ASCII_TABLE
	ror rax, 60
	push rax
	and rax, 0xF
	add rax, 0x30
	cmp rax, 0x3A
	jl .number
	add rax, 0x7
.number:
	mov rcx, 9
	mul rcx
	add rsi, rax
	call _draw_letter
	pop rax
	sub rdi, 0xB40
	add rdi, 6
	dec rbx
	cmp rbx, 0
	jg .loop
	mov rsp, rbp
	pop rbp
	ret

dump_string:
	xor rax, rax
.loop:
	mov rsi, ASCII_TABLE
	test byte [rbx], 0xFF
	jz .exit
	mov al, [rbx]
	mov rcx, 9
	mul rcx
	add rsi, rax
	call _draw_letter
	sub rdi, 0xB40
	add rdi, 6
	inc rbx
	jmp .loop
.exit:
	ret

dump_ch:
	xor rax, rax
.loop:
	mov rsi, ASCII_TABLE
	test byte [rbx], 0xFF
	jz .exit
	mov al, [rbx]
	mov rcx, 9
	mul rcx
	add rsi, rax
	call _draw_letter
	sub rdi, 0xB40
	add rdi, 6
	inc rbx
.exit:
	ret

_draw_letter:
	mov rax, 0x07
	mov rcx, 0x0A07
	cmp rdi, 0xA0000
	jge .outer.loop
	add rdi, 0xA0000
.outer.loop:
	dec ch
	jz .exit
	mov cl, 5
	mov rdx, [rsi]
	inc rsi
	ror dl, 5
.inner.loop:
	rol dl, 1
	test dl, 1
	jz .next
	mov [rdi], al
.next:
	inc rdi
	dec cl
	jnz .inner.loop
	add rdi, 0x13B
	jmp .outer.loop
.exit:
	ret

pos_to_offset:
	xor rax, rax
	mov al, dil
	mov rcx, 0x140
	mul rcx
	shr rdi, 8
	and rdi, 0xFF
	add rax, rdi
	mov rdi, rax
	ret

%include "asciitable.asm"
TEMP_RAX dq 0

KEY_CODES:
times 0x81 db 0x10
db "1234567890-=",0x7F,0x10,"QWERTYUIOP[]",0x10,0x10,"ASDFGHJKL;'`",0x10,"\ZXCVBNM,./",0x10,0x10,0x10," ",0x10,0x10
