BOARD := esp32:esp32:esp32cam
PORT := /dev/ttyACM0
SKETCH := example.ino
BUILD_DIR := build

.PHONY: all compile upload clean serial

all: upload

compile:
	arduino-cli compile --fqbn $(BOARD) --output-dir $(BUILD_DIR) $(SKETCH)

upload: compile
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) --input-dir $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

serial:
	screen $(PORT) 115200
