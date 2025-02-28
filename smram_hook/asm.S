/*
 *  This work is depending on the sgx-step project
 *  
*/
.text
.global asmcode
.type asmcode @function

asmcode:
	sub  $0x80, %rsp
	mov %rax, -0x0(%rbp)
	mov %rbx, -0x8(%rbp)
	mov %rcx, -0x10(%rbp)
	mov %rdx, -0x18(%rbp)
	mov %rsi, -0x20(%rbp)
	mov %rdi, -0x28(%rbp)
	mov %rsp, -0x30(%rbp)
	mov %rbp, -0x38(%rbp)
	mov %r8, -0x40(%rbp)
	mov %r9, -0x48(%rbp)
	mov %r10, -0x50(%rbp)
	mov %r11, -0x58(%rbp)
	mov %r12, -0x60(%rbp)
	mov %r13, -0x68(%rbp)
	mov %r14, -0x70(%rbp)
	mov %r15, -0x78(%rbp)
	mov $0xB80A1000, %r10
	mov $0xB80A1008, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)
	call sera_launch_smi
	mov $0xB80A1010, %r10
	mov $0xB80A1018, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)
	mov -0x0(%rbp), %rax
	mov -0x8(%rbp), %rbx
	mov -0x10(%rbp), %rcx
	mov -0x18(%rbp), %rdx
	mov -0x20(%rbp), %rsi
	mov -0x28(%rbp), %rdi
	mov -0x30(%rbp), %rsp
	mov -0x38(%rbp), %rbp
	mov -0x40(%rbp), %r8
	mov -0x48(%rbp), %r9
	mov -0x50(%rbp), %r10
	mov -0x58(%rbp), %r11 
	mov -0x60(%rbp), %r12
	mov -0x68(%rbp), %r13 
	mov -0x70(%rbp), %r14
	mov -0x78(%rbp), %r15
	add $0x80, %rsp
	mov %rbx, 0x8(%rsp)
	mov $0xB8074CAD, %r10
	jmp *%r10
