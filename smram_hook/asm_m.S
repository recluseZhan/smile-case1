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
/*
	mfence
	mov $0xB84004A0, %r10
	mov $0xB84004A8, %r11
	rdtsc
	mov %eax,(%r10)
	mov %edx,(%r11)

.l1:
	mov $0xB84000C0, %r9  //check if the launcher done
	mov (%r9), %r8
	mov $0x1, %rax
	cmp %rax, %r8
	jnz .l1

.l21: 
	mov $0xB84000C0, %r9 //check if the get the erange\ ssa code and code page 1
	mov (%r9), %r8
	mov $0x2, %rax
	cmp %rax, %r8
        jnz .l21
//      mov $0x55d8c4385000, %xax         // import a fixed virtual address from non-enclave page
	mov $0x2e654000, %rsi             //virtual address to physical address in SMM
	mov $0xB8402000, %rdi
	mov $0x1000, %rcx
	cld                             //forward 
	rep movsd
        
//	call hash_function              //check
	mov $2e654000, %rax
	mov $0x2,  (%rax)	        //set ok flag

.l22:
	mov $0xB84000D0, %r9 //check if the get the work page 1
	mov (%r9), %r8
	mov $0x2, %rax
	cmp %rax, %r8
	jnz .l22

//      mov $0x55d8c4385000, %xax         // import a fixed virtual address from non-enclave page
	mov $0x2e654000, %rsi             //virtual address to physical address in SMM
	mov $0xB8402000, %rdi
	mov $0x1000, %rcx
	cld                             //forward 
	rep movsd 
//	call hash_function              //check
	mov $2e654000, %rax             
	mov $0x3,  (%rax)               //set ok flag

*/

	mov $0x100000000000, %r9          //test the loop in interrogator
        mov $0xB8400400, %r8
	mov $0x0, %r10
 
.wait:       
        mov  $0x55d8c4384000,%r8       //get flag
	mov  (%r8),%rax
	cmp  $0x0, %rax
	jz .wait
	mov $0x0, %rcx                 //counter
	mov $0x1000, %rdx              //size
	mov $0x55d8c4384000,%rdi            //share page
	cmp $0x1, %rax
        jz .lssa
	cmp $0x2, %rax
	jz .lanchor
	cmp $0x3, %rax
	jz .lworker	
	cmp $0x4, %rax
	jz .lid
	jnz .wait	
        
.lssa:
	mov $0xB8401000,%rsi             //ssa  
	jmp .memcmp1  
 
.lanchor:
	mov $0xB8402000,%rsi             //anchor   
	jmp .memcmp0                     //recove the page

.lworker:
	mov $0xB8403000,%rsi             //worker  
	jmp .memcmp1    

.lid:
	mov $0xB8404000,%rsi             //id   
	mov $0x128,%rdx                   //mrenclave size
	jmp .memcmp1   

.memcmp0:                         
	mov (%rdi), rax
	mov (%rsi), rbx
	test %rax,%rbx
	jnz .error
	add $0x8, %rdi
	add $0x8, %rsi
	add $0x8, %rcx
	cmp %rdx,%rcx          //cmp 8bytes one times
	jz .lopenp             //recover page
	jmp .memcmp              //loop cmp

.memcmp1:                         
	mov (%rdi), rax
	mov (%rsi), rbx
	test %rax,%rbx
	jnz .error
	add $0x8, %rdi
	add $0x8, %rsi
	add $0x8, %rcx
	cmp %rdx,%rcx          //cmp 8bytes one times
	jz .l3
	jmp .memcmp              //loop cmp

.error:                          //out error
	mov  $0x55d8c4386000,%rax
	mov  $0xffff, %rbx
	mov  %rbx, (%rax)     

.lopenp:
	mov $0x55d8c4387000, %rax
	mov (%rax), %rsi      //get the store pte address
        mov 0x8(%rax), %rdi   //get the current pte address
        mov $0xd0, %rcx       //to change the page entries, for small enclave, only few entries need to change,other are 0
	rep movsd
        

.l3:	                     //judge if resume to host
	inc %r10
	mov %r10, (%r8)
	cmp %r10, %r9
	jne .l3

/*
//	call loop1

	mov $0xB84004B0, %r10
	mov $0xB84004B8, %r11
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
