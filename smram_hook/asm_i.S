/*
 *  This work is depending on the sgx-step project
 *  1 save the state, start launcher, restore the state and rsm.
 *  
*/
.text
.global asmcode
.type asmcode @function

asmcode:
	sub $0x80, %rsp
	mov %rbx, 0x0(%rsp)
	mov %rcx, 0x8(%rsp)
	mov %rdx, 0x10(%rsp)
	mov %rsi, 0x18(%rsp)
	mov %rdi, 0x20(%rsp)
	mov %rbp, 0x28(%rsp)
	mov %r8, 0x30(%rsp)
	mov %r9, 0x38(%rsp)
	mov %r10, 0x40(%rsp)
	mov %r11, 0x48(%rsp)
	mov %r12, 0x50(%rsp)
	mov %r13, 0x58(%rsp)
	mov %r14, 0x60(%rsp)
	mov %r15, 0x68(%rsp)
        mov %rax, 0x70(%rsp)

/*	mfence
	mov $0xB84000A0, %r10
	mov $0xB84000A8, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)


        mov $0x55d8c4482000,%rsi            //share page, a example address for storing the trampoline code
	mov $55555575e000,  %rdi           //trampoline code store page
        mov $0x31B4, %rcx
	rep movsd                          //load trampoline
*/
        //jump to the trampoline
        mov $0xB83D5F48, %rax               //set the state save map cr3
	movq $0x2086CC000,(%rax)

        mov $0xB83D5FF0, %rax               //set the state save map rip
	movq $0xffffffffc07eb000,(%rax)


       mov $0xffffffff81c00928,%rax
	mov %1,(%rax)                       //open the switch to hook the interrupt_entry


        //release a symbol to start interrogator
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
	mov 0x0(%rsp), %rbx
	mov 0x8(%rsp), %rcx
	mov 0x10(%rsp), %rdx
	mov 0x18(%rsp), %rsi
	mov 0x20(%rsp), %rdi
	mov 0x28(%rsp), %rbp
	mov 0x30(%rsp), %r8
	mov 0x38(%rsp), %r9
	mov 0x40(%rsp), %r10
	mov 0x48(%rsp), %r11 
	mov 0x50(%rsp), %r12
	mov 0x58(%rsp), %r13 
	mov 0x60(%rsp), %r14
	mov 0x68(%rsp), %r15
	mov 0x70(%rsp), %rax
	add $0x80, %rsp
	rsm
	.byte 0x66,0x66,0x66,0x66
	.byte 0x0F,0x1F,0x84,0x00,0x00,0x00,0x00,0x00
	.byte 0xF8,0xDF,0x38,0xB8,0x18,0x00,0x00,0x00
