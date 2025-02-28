/*
 *  This work is depending on the sgx-step project
 *  1 save the state, start launcher, restore the state and rsm.
 *  
*/
.text
.global asmcode
.type asmcode @function

asmcode:
	mov $0xB8400020, %rax
	mov %rbx, 0x8(%rax)
	mov %rcx, 0x10(%rax)
	mov %rdx, 0x18(%rax)
	mov %rsi, 0x20(%rax)
	mov %rdi, 0x28(%rax)
	mov %rsp, 0x30(%rax)
	mov %rbp, 0x38(%rax)
	mov %r8, 0x40(%rax)
	mov %r9, 0x48(%rax)
	mov %r10, 0x50(%rax)
	mov %r11, 0x58(%rax)
	mov %r12, 0x60(%rax)
	mov %r13, 0x68(%rax)
	mov %r14, 0x70(%rax)
	mov %r15, 0x78(%rax)

/*	mfence
	mov $0xB84000A0, %r10
	mov $0xB84000A8, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)
*/
        //jump to the trampoline
        mov $0xB83D5FF0, %rax
	movq $0xffffffffc07eb000,(%rax)
        //release a symbol to start monitor
	mov $0xB84000C0, %eax 
	movl $0x1,(%eax)

/*
	mov $0xB84000B0, %r10
	mov $0xB84000B8, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)
        mfence
*/
	mov $0xB8400020, %rax
	mov 0x8(%rax), %rbx
	mov 0x10(%rax), %rcx
	mov 0x18(%rax), %rdx
	mov 0x20(%rax), %rsi
	mov 0x28(%rax), %rdi
	mov 0x30(%rax), %rsp
	mov 0x38(%rax), %rbp
	mov 0x40(%rax), %r8
	mov 0x48(%rax), %r9
	mov 0x50(%rax), %r10
	mov 0x58(%rax), %r11 
	mov 0x60(%rax), %r12
	mov 0x68(%rax), %r13 
	mov 0x70(%rax), %r14
	mov 0x78(%rax), %r15
	rsm
	.byte 0x66,0x66,0x66,0x66
	.byte 0x0F,0x1F,0x84,0x00,0x00,0x00,0x00,0x00
	.byte 0xF8,0xDF,0x38,0xB8,0x18,0x00,0x00,0x00
