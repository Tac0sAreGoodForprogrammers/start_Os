ASM = nasm

SRC_DIR = src
BUILD_DIR = build
SRC = $(SRC_DIR)/main.asm
BIN = $(BUILD_DIR)/main.bin

all: $(BIN)

$(BIN): $(SRC) | $(BUILD_DIR)
	$(ASM) $< -f bin -o $@

# Ensure build directory exists
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)/*.bin
