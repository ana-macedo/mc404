LLVM_PATH  = /opt/homebrew/opt/llvm/bin
RISCV_PATH = /opt/homebrew/bin

CC      = $(LLVM_PATH)/clang
LD      = $(RISCV_PATH)/riscv64-unknown-elf-ld
OBJDUMP = $(LLVM_PATH)/llvm-objdump

CFLAGS  = --target=riscv32 -march=rv32g -mabi=ilp32d -mno-relax
LDFLAGS = -m elf32lriscv

TARGET = prog.x
SRC    = calculadora.c
OBJ    = calculadora.o
ASM    = calculadora.s

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) $(OBJ) -o $(TARGET)

$(OBJ): $(ASM)
	$(CC) $(CFLAGS) $(ASM) -c -o $(OBJ)

$(ASM): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -S -o $(ASM)

dump: $(TARGET)
	$(OBJDUMP) -D $(TARGET)

clean:
	rm -f $(ASM) $(OBJ) $(TARGET)

.PHONY: all clean dump