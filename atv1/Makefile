CC = /opt/homebrew/opt/llvm/bin/clang
LD = /opt/homebrew/bin/riscv64-unknown-elf-ld
CFLAGS = --target=riscv32 -march=rv32g -mabi=ilp32d -mno-relax

prog.x: file1.o file2.o
	$(LD) -m elf32lriscv file1.o file2.o -o prog.x

file1.o: file1.s
	$(CC) $(CFLAGS) file1.s -c -o file1.o

file2.o: file2.s
	$(CC) $(CFLAGS) file2.s -c -o file2.o

file1.s: file1.c
	$(CC) $(CFLAGS) file1.c -S -o file1.s

file2.s: file2.c
	$(CC) $(CFLAGS) file2.c -S -o file2.s

clean:
	rm -f *.s *.o prog.x