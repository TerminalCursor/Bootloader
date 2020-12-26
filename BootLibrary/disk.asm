disk_load:
	pusha
	push dx	;; Remember how many sectors were meant to be read

	mov ah, 0x02	;; Read
	mov al, dh	;; Number of sectors to read
	mov ch, 0x00	;; Cylinder
	mov dh, 0x00	;; Head number
	int 0x13

	jc .error

	pop dx	;; Recall how many sectors were meant to be read
	cmp al, dh
	jne .sector.error

	popa
	ret

.error:
	mov bx, DISK_ERROR_MSG
	call print
	call print_nl
	mov dh, ah
	call print_hex
	jmp .loop

.sector.error:
	mov bx, SECTORS_ERROR_MSG
	call print
	call print_nl

.loop:
	jmp $

DISK_ERROR_MSG db "OS: Disk read error", 0
SECTORS_ERROR_MSG db "OS: Incorrect number of sectors read", 0
