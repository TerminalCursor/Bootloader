[org 0x7C00]
entry:  jmp 0x0000:.flushCS
.flushCS:   ; Ensure CS is properly set
    mov [BOOT_DRIVE], dl    ; Store drive number

    xor ax, ax
    mov ss, ax

    mov bp, entry   ; Start stack under entrypoint
    mov sp, bp

    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    cld

    ;; Set text mode
    sti
    mov ah, 0x00
    mov al, 0x12
    int 0x10
    cli
    mov [VIDEO_MODE], ax

    ;; call clear_screen    ; Clear the screen

    ;; Chainload the jump to 64 bit long mode to 512 after entry
    mov bx, CHAINLOAD_ADDR
    mov dh, 0x01    ; Number of sectors to read
    mov dl, [BOOT_DRIVE]
    mov cl, 0x02    ; First available sector
    call disk_load

    ;; Chainload the kernel to KERNEL_ENTRY
    mov bx, KERNEL_ENTRY
    mov dh, 0x10    ; Number of sectors to read
    mov dl, [BOOT_DRIVE]
    mov cl, 0x03    ; First available sector
    call disk_load
    jmp longmode
    jmp $

;;; Libraries
%include "BootLibrary/print.asm"
%include "BootLibrary/disk.asm"
;;; Data
KERNEL_ENTRY equ 0x1000
CHAINLOAD_ADDR equ 0x7E00
;; Mark Bootsector
times 507 - ($-$$) db 0
BOOT_DRIVE db 0
VIDEO_MODE dw 0
dw 0xAA55
%include "BootLibrary/longmode.asm"
;; Chainloaded sector
times 1024 - ($-$$) db 0
;; Kernel Here (Appended to binary)
