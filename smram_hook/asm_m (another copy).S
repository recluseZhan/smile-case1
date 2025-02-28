/*
 *  This work is depending on the sgx-step project
 *  The address 0xB80A1020 is the same to the used in the asm_i.S
    The 0x15581847 is the original pte, same to smi3.c, keep the same
    The 0x15581198 is the original physical page, same to smi3.c, keep the same
    The 0xB80A1120 is the same signal address to the used in asm_n.S
*/
.text
.global asmcode
.type asmcode @function

asmcode:
	mov $0xB840420, %rax
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
/*
	mfence
	mov $0xB84004A0, %r10
	mov $0xB84004A8, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)
*/


.l1:
	mov $0xB84000C0, %r9  //check if the launcher done
	mov (%r9), %r8
	mov $0x1, %rax
	cmp %rax, %r8
	jnz .l1

.l2: 
	mov $0xB84000C0, %r9 //check if the get the erange\ ssa code and code page 1
	mov (%r9), %r8
	mov $0x2, %rax
	cmp %rax, %r8
	jnz .l2

/*
//	call loop1

	mov $0xB84004B0, %r10
	mov $0xB84004B8, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)
        mfence
*/
	mov $0xB8400420, %rax
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
        .byte 0x48,0x83,0xc4,0x20
        .byte 0x48, 0x0f, 0xae, 0x0c, 0x24
	rsm
	.byte 0x66,0x66,0x66,0x66
	.byte 0x0F,0x1F,0x84,0x00,0x00,0x00,0x00,0x00
	.byte 0xF8,0xDF,0x38,0xB8,0x18,0x00,0x00,0x00
