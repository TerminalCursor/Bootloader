;; Clears the screen
clear_screen:
	pusha

	mov ax, 0x0700
	mov bh, 0x17
	mov cx, 0x00
	mov dx, 0x184F
	int 0x10

	popa
	ret

;; Moves to (dl, dh)
move_cursor:
	pusha

	mov ah, 0x02
	mov bh, 0x00
	int 0x10

	popa
	ret
