[bits 16]
load_kernel:
	mov bx, KERNEL_OFFSET
	mov dh, 0x10	;; Number of sectors to read
	mov dl, [BOOT_DRIVE]
	call disk_load
	ret

switch_to_long_mode:
	ret
