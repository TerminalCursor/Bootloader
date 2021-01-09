# $@ = target file
# $< = first dependency
# $^ = all dependencies

.PHONY: clean cleanobj run

# First rule is run by default
#

OS.bin: boot.bin toy.bin
	cat $^ > $@

# LBOOT.bin: boot.bin
# 	dd if=$< of=$@ bs=100m conv=sync

%.o: %.asm
	nasm $< -f elf -o $@

%.bin: %.asm
	nasm $< -f bin -o $@

qemu: OS.bin
	qemu-img create los.bin 2048
	qemu-system-x86_64 -fda $< -hda los.bin

clean: cleanobj
	rm -rf *.bin

cleanobj:
	rm -rf *.o
