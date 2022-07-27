# for x86 assembly development
.PHONY: setup build run clean

setup:
	sudo apt update; \
	sudo apt install libc6-dev-i386;
build:
	mkdir -p build dist; \
	as $(ARGS).asm --32 -o ./build/$(ARGS).o; \
	gcc -o ./dist/$(ARGS).elf -m32 ./build/$(ARGS).o -nostdlib
run:
	./dist/$(ARGS).elf
clean:
	rm -rf build dist