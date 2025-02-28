	.file	"timetest.c"
	.text
	.globl	i
	.bss
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.text
	.globl	read_cpu_cycle
	.type	read_cpu_cycle, @function
read_cpu_cycle:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 10 "timetest.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, -16(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	read_cpu_cycle, .-read_cpu_cycle
	.section	.rodata
.LC0:
	.string	"%d, %ld \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8048, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, i(%rip)
	jmp	.L4
.L8:
	call	read_cpu_cycle
	movq	%rax, -8040(%rbp)
	movl	$0, -8044(%rbp)
	jmp	.L5
.L6:
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
	addl	$1, -8044(%rbp)
.L5:
	cmpl	$99999, -8044(%rbp)
	jle	.L6
	call	read_cpu_cycle
	movq	%rax, -8032(%rbp)
	movq	-8032(%rbp), %rax
	subq	-8040(%rbp), %rax
	movq	%rax, -8024(%rbp)
	cmpq	$800000, -8024(%rbp)
	jbe	.L7
	movq	-8032(%rbp), %rax
	subq	-8040(%rbp), %rax
	movq	%rax, %rdx
	movl	i(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L4:
	movl	i(%rip), %eax
	cmpl	$999999, %eax
	jle	.L8
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
