AS=nasm
LD=ld

ASFLAGS=-f elf32 -I"./include"
LDFLAGS=-m elf_i386

all: assembly linking

assembly: main.asm src/str.asm
	$(AS) $(ASFLAGS) main.asm
	$(AS) $(ASFLAGS) src/str.asm

linking: main.o src/str.o
	$(LD) $(LDFLAGS) main.o src/str.o -o main

clean:
	rm -f main.o src/str.o