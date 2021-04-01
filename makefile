boot:
	nasm -f bin bootSector.asm -o bootsector.bin
	qemu-system-x86_64 -L "roms" -drive format=raw,file=bootsector.bin -boot c