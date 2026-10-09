# C Project Makefile (MinGW/GCC)
CC       = gcc
CFLAGS   = -g -Wall -Wextra -std=c17
LDFLAGS  =

SRC_DIR  = src
INC_DIR  = include
BUILD_DIR = build

SRCS     = $(wildcard $(SRC_DIR)/*.c)
OBJS     = $(SRCS:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)
TARGET   = $(BUILD_DIR)/main.exe

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(OBJS)
	@echo "[LINK] $@"
	$(CC) $(OBJS) -o $@ $(LDFLAGS)
	@echo "Build complete: $@"

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@if not exist "$(BUILD_DIR)" mkdir "$(BUILD_DIR)"
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

clean:
	@echo "Cleaning..."
	@if exist "$(BUILD_DIR)" rmdir /s /q "$(BUILD_DIR)"
	@echo "Clean done."

run: all
	@echo "--- Running $(TARGET) ---"
	@$(TARGET)
