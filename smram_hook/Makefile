CC1 = gcc -m16 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic
CC2 = gcc -m16 -nostdlib -static -e main -Wl,-Ttext=0xB80A0000


test: clean all
				
all:
	echo 'build .o file' 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -c asm.S -o asm.o 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -c smi3.c 
	echo 'build elf'
	gcc -m64 -nostdlib -static -e asmcode -Wl,-Ttext=0xB8400000 -o tsmi.elf asm.o smi3.o
	objcopy -O binary -j .text -j .rodata tsmi.elf tsmi.bin	
	objdump -d tsmi.elf>tsmi.txt


	echo 'build .o file' 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -ffunction-sections -fdata-sections  -c asm_i.S -o asm_i.o 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -ffunction-sections -fdata-sections  -c asm_m.S -o asm_m.o 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -ffunction-sections -fdata-sections  -c asm_n1.S -o asm_n1.o 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -ffunction-sections -fdata-sections  -c asm_n2.S -o asm_n2.o 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -ffunction-sections -fdata-sections -c smi3.c 
	gcc -m64 -ffreestanding -fno-asynchronous-unwind-tables -fno-pic -ffunction-sections -fdata-sections -c looptest.c 

	echo 'build elf'
	gcc -m64 -nostdlib -static -e asmcode -Wl,--gc-section,-Ttext=0xB8400100 -o tsmi.elf asm_i.o smi3.o
	gcc -m64 -nostdlib -static -e asmcode -Wl,--gc-section,-Ttext=0xB8400500 -o msmi.elf asm_m.o  smi3.o  #looptest.o
	gcc -m64 -nostdlib -static -e asmcode -Wl,--gc-section,-Ttext=0xB8400900 -o n1smi.elf asm_n1.o looptest.o
	gcc -m64 -nostdlib -static -e asmcode -Wl,--gc-section,-Ttext=0xB80A0C00 -o n2smi.elf asm_n2.o

	objcopy -O binary -j .text -j .rodata tsmi.elf c1smi.bin	
	objcopy -O binary -j .text -j .rodata msmi.elf c2smi.bin	
	objcopy -O binary -j .text -j .rodata n1smi.elf c3smi.bin	
	objcopy -O binary -j .text -j .rodata n2smi.elf c4smi.bin	

	objdump -d tsmi.elf>tsmi.txt
	objdump -d msmi.elf>msmi.txt
	objdump -d n1smi.elf>n1smi.txt
	objdump -d n2smi.elf>n2smi.txt

	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	-rm *.o *.elf *.bin *.txt $(objects)  
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

