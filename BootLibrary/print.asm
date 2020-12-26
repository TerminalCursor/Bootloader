;; Prints the data pointed to by bx
;;  which is zero terminated
print:
	pusha
.start:
	mov al, [bx]
	cmp al, 0
	je .done

	mov ah, 0x0E
	int 0x10

	inc bx
	jmp .start

.done:
	popa
	ret

;; Prints a new line
print_nl:
    pusha
    
    mov ah, 0x0e
    mov al, 0x0a ; newline char
    int 0x10
    mov al, 0x0d ; carriage return
    int 0x10
    
    popa
    ret

;; Prints hexadecimal in dx
print_hex:
	pusha
	mov cx, 0

hex_loop:
	cmp cx, 4
	je end

	mov ax, dx
	and ax, 0x000f
	add al, 0x30
	cmp al, 0x39
	jle step2
	add al, 7

step2:
	mov bx, HEX_OUT + 5
	sub bx, cx
	mov [bx], al
	ror dx, 4

	add cx, 1
	jmp hex_loop

end:
	mov bx, HEX_OUT
	call print
	popa
	ret

HEX_OUT:
	db '0x0000', 0

