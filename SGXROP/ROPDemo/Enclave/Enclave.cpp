/*
 * Copyright (C) 2011-2016 Intel Corporation. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in
 *     the documentation and/or other materials provided with the
 *     distribution.
 *   * Neither the name of Intel Corporation nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */


#include <stdarg.h>
#include <stdio.h>      /* vsnprintf */

#include "Enclave.h"
#include "Enclave_t.h"  /* print_string */

#include <string.h>
#include "Crypto.h"
#include "sgx_spinlock.h"
#include <sgx_uae_service.h>
#include <sgx_ukey_exchange.h>
#include <sgx_uae_quote_ex.h>
#include <sgx_tseal.h>
#include <sgx_utils.h>
#include <sgx_urts.h>
#include <sgx_tkey_exchange.h>
#include <string>
#include "trts_inst1.h"


void mem_cpy( unsigned long *dst, unsigned long *src, unsigned long size );
#define PAGE_OFFSET 0xFFFFFFFFFFFFF000
unsigned long datapoint = 0xccc;


/*
 * printf:
 *   anchor function with rdi rsi rdx // acturally, no need the parameters, because we pass the para with register
 *   before we jump, we directly config the general registers.
 */
//extern "C" int anchor_function(void *addr1, void *addr2, void *addr3);
extern "C" int anchor_function();
extern "C" int do_ereport_define(sgx_target_info_t *addr1, sgx_report_data_t *addr2, sgx_report_t *addr3);

/* 
 * printf: 
 *   Invokes OCALL to display the enclave buffer to the terminal.
 */
void printf(const char *fmt, ...)
{
    char buf[BUFSIZ] = {'\0'};
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, BUFSIZ, fmt, ap);
    va_end(ap);
    ocall_print_string(buf);
}


int inner_function()
{
    anchor_function();
    return 0;
}

void redirect_mem_to_noepc(unsigned long *dst, unsigned long tcs )  //vaddr is a point for two pages, the second page for a lock scheme
{
    unsigned long *ssa_address;
    ssa_address = tcs+ (unsigned long *)4096;
    memcpy(ssa_address, dst, 3916);

    unsigned long lock = lock+516;

    if(lock == 0x1)
    {
        memcpy(dst, ssa_address, 3916);
    }
    else
    {
        return;
    }

    if(lock == 0x1)
    {
        unsigned long *c1;
        c1 = (unsigned long *)redirect_mem_to_noepc;
        unsigned long addr = (unsigned long) c1;
        addr = addr&PAGE_OFFSET;
        c1 = (unsigned long *)addr;
        memcpy(dst, c1, 4096);
    }
    else
    {
        return;
    }

    return;
}

void print_data_from_v(unsigned long *adrs)
{

    unsigned long *unknown_data;
    unknown_data = &datapoint;
    unknown_data -= 0x0;
    //     datapoint = 0xddd;
    *(adrs)= (unsigned long)(unknown_data);

    *(adrs+1)= *(unsigned long *)(unknown_data);
}


void print_code_from_v(unsigned long *adrs)
{

    unsigned long *func_entry;
    func_entry = (unsigned long *)print_data_from_v;

    *adrs= (unsigned long)(func_entry+900);

    *(adrs+1)= *((unsigned long *)(func_entry+900));

}


#define BUFLEN 2048
#define SGX_AESGCM_MAC_SIZE 16
#define SGX_AESGCM_IV_SIZE 12

#define SGX_AES_CTR_SIZE 16
#define AES_CTR_INC_BITS 32


#define ONE_TIME_CONTEXT_SIZE 1000

void manage_rsa(void)
{

    sgx_status_t ret = SGX_ERROR_UNEXPECTED;

    size_t byte_size = 256;
    size_t p_byte_size = byte_size/2;
    size_t e_byte_size = 4;
    unsigned char e[4] = {1, 0, 1};
    unsigned char *n =(unsigned char *)malloc(byte_size);
    unsigned char *d = (unsigned char *)malloc(byte_size);
    unsigned char *p = (unsigned char *)malloc(p_byte_size);
    unsigned char *q = (unsigned char *)malloc(p_byte_size);
    unsigned char *p_dmp1 = (unsigned char *)malloc(p_byte_size);
    unsigned char *p_dmq1 = (unsigned char *)malloc(p_byte_size);
    unsigned char *p_iqmp = (unsigned char *)malloc(p_byte_size);
    uint8_t *p_private = (uint8_t *)malloc(5*p_byte_size);
//   printf("begin key!\n");
    sgx_create_rsa_key_pair(byte_size, e_byte_size, n, d, e, p, q, p_dmp1, p_dmq1, p_iqmp);
    if ((ret = sgx_create_rsa_key_pair(byte_size, e_byte_size, n, d, e, p, q, p_dmp1, p_dmq1, p_iqmp)) != SGX_SUCCESS)
    {
        printf("\nTrustedApp: sgx_create_rsa_key_pair() failed !\n");

    }
//   printf("Enclave debug %p\n", manage_rsa);
    memcpy(p_private,p,p_byte_size);
    memcpy(p_private+p_byte_size,q,p_byte_size);
    memcpy(p_private+p_byte_size*2,p_dmp1,p_byte_size);
    memcpy(p_private+p_byte_size*3,p_dmq1,p_byte_size);
    memcpy(p_private+p_byte_size*4,p_iqmp,p_byte_size);

    uint8_t *pubkey = (uint8_t *)malloc(byte_size);
    memcpy(pubkey,n,byte_size);


    if (ret == SGX_SUCCESS)
    {
        printf("Successfully created rsa key pair!\n");

    }

    uint8_t *p_data;
    p_data = (uint8_t *)p_key;
    sgx_rsa3072_signature_t p_signature;
    ret = sgx_rsa3072_sign(p_data, 4, (sgx_rsa3072_key_t *)p_private, &p_signature);
//   if (ret == SGX_SUCCESS) printf("Encrypted!\n");

    sgx_rsa_result_t p_result;
    ret = sgx_rsa3072_verify(p_data, 4, (sgx_rsa3072_public_key_t  *)pubkey, &p_signature, &p_result);
//   if (ret == SGX_SUCCESS) printf("Decrypted!\n");
    //  if (p_result == SGX_RSA_VALID) printf("Valid!\n");

    free(n);
    free(d);
    free(p);
    free(q);
    free(p_dmp1);
    free(p_dmq1);
    free(p_iqmp);
    free(p_private);
    return;
}



int create_secret(uint8_t *p_src, uint8_t* p_dst)
{

    uint8_t p_ctr[16] = { 4, 3, 2, 1, 0 };
    uint32_t ctr_inc_bits = 16;
    uint32_t src_len = ONE_TIME_CONTEXT_SIZE;
    uint32_t dst_len = ONE_TIME_CONTEXT_SIZE;
    sgx_aes_ctr_encrypt((const sgx_aes_ctr_128bit_key_t*) p_key,
                        (const uint8_t*) p_src, src_len, p_ctr, ctr_inc_bits, p_dst);

    return 0;
}

int process_secret(uint8_t *p_dst,uint8_t *plaintxt)
{

    uint8_t p_ctr[16] = { 4, 3, 2, 1, 0 };
    uint32_t ctr_inc_bits = 16;
    uint32_t dst_len = ONE_TIME_CONTEXT_SIZE;
    uint8_t d_data[dst_len];
    sgx_aes_ctr_decrypt((const sgx_aes_gcm_128bit_key_t*) p_key, p_dst, dst_len,
                        p_ctr, ctr_inc_bits, plaintxt);

    return 0;

}

void one_time_dump_memory(int counter, unsigned long *dst)
{
    uint8_t *data = (uint8_t *) malloc(4096);
    unsigned long *pointer;
    pointer = (unsigned long *)worker+counter*4096;
    memcpy(data, pointer, ONE_TIME_CONTEXT_SIZE);

    uint8_t secret[ONE_TIME_CONTEXT_SIZE]= {0};
    uint8_t plaintext[ONE_TIME_CONTEXT_SIZE]= {0};
    uint8_t p_src[ONE_TIME_CONTEXT_SIZE] = { 2, 3, 2, 6 };


    printf("the current function address: %lx\n", pointer);
    create_secret((uint8_t *)data,secret);
    printf("the secret: %u \n", secret[0]);
    process_secret(secret,plaintext);


    printf("the plaintext: %u \n", plaintext[0]);
    memcpy(dst, plaintext, 20);

//	redirect_mem_to_noepc()
    free(data);
    return;
}

extern "C" void * __memset(void *dst, int c, size_t n);

sgx_status_t sgx_create_report_define(const sgx_target_info_t *target_info, const sgx_report_data_t *report_data, sgx_report_t *report)
{
//    static_assert(sizeof(*target_info) == 512, "sgx_target_info_t");
//    static_assert(sizeof(*report_data) == 64, "sgx_report_data_t");
//   static_assert(sizeof(*report) == 432, "sgx_report_t");


    alignas(128) unsigned long tmp_report_data[16]= {0};
    alignas(512) unsigned long tmp_target_info[64]= {0};
    alignas(512) unsigned long tmp_report[64]= {0};

    // Do EREPORT
    auto failed = 0;
//	 printf("the do report out 0: %lx   %lx   %lx \n",&tmp_target_info , &tmp_report_data, &tmp_report);
//do_ereport_define(tmp_target_info, tmp_report_data, tmp_report);

    /*	__asm__ __volatile__("movq %0, %%rbx\n\t"
    			     "movq %1, %%rcx\n\t"
    			     "movq %2, %%rdx\n\t"
    			     "movq $0, %%rax\n\t"
    			     ".byte 0x0f, 0x01, 0xd7\n\t"
                ::"r"((void *)&tmp_target_info), "r"((void *)&tmp_report_data), "r"((void *)&tmp_report):);
    */
//  failed = do_ereport_define(&tmp_target_info, &tmp_report_data, &tmp_report);
    failed = do_ereport_define((sgx_target_info_t *)tmp_target_info, (sgx_report_data_t *)tmp_report_data, (sgx_report_t *)tmp_report);

//   failed = do_ereport(&tmp_target_info, &tmp_report_data, &tmp_report);
    // Copy data to the user buffer: *report = tmp_report;
    // Use a loop to avoid compiler to call memcpy,
    // which cannot be used during enclave initialization.
    // No need to cleanup the tmp_report as it is not secret.
    if (!failed)
    {
        //      static_assert(sizeof(*report) % sizeof(uint64_t) == 0, "sizeof(sgx_report_t) should be multiple of 8");
        for(size_t i = 0; i < sizeof(*report)/sizeof(uint64_t); i++)
        {
            ((uint64_t*)report)[i] = ((uint64_t*)&tmp_report)[i];
        }
    }


    return failed ? SGX_ERROR_UNEXPECTED : SGX_SUCCESS;
}

void worker(unsigned long *dst)
{
    //      anchor_function();
    sgx_target_info_t target_info; //it was allowed to be null
    sgx_report_data_t report_data;
    sgx_epid_group_id_t epid_gid;

  //  alignas(512) unsigned long report[64]= {0};
    sgx_report_t report;
 
     int a,b; 
	a =1;
	b=1;
	b = a+b;
//    sgx_create_report_define(&target_info, NULL, &report);

 //  printf("Enclave debug report %b\n", b);
    memcpy(dst, &report.body.mr_enclave, sizeof(sgx_measurement_t));
    /*
     printf("the output address: %lx \n", dst);   //rsa key
     manage_rsa();
     printf("the current function address: %lx\n", (unsigned long *)manage_rsa);

     int i, size = 2;
     for(i=0;i<size;i++)
    	   one_time_dump_memory(i, dst);
     */
   // return;
}

/*
int addint(unsigned long a, unsigned long b, unsigned long *dst)
{
    worker(dst);
    dst[5] = a+b;
    return a+b;
}
*/

/*
 * do_eexit:
 *   Invokes EEXIT (ENCLU) leaf instruction directly
 */
void do_eexit()
{
    unsigned long ptr = 0; /* pointer to the target function */
    unsigned long rbx = 0;
    ocall_get_ptr(&ptr);
    printf("ptr = %lx (in enclave)\n", ptr);
    __asm__ __volatile__(
            "mov %1, %%rbx\n"
            "mov %%rbx, %0\n"
            :"=m" (rbx):"m" (ptr));
    printf("rbx = %lx (in enclave)\n", rbx);
    __asm__ __volatile__(
            "mov %0, %%rbx\n"
            "xor %%rax, %%rax\n"
            "mov $0x4, %%eax\n"
            ".byte 0x0f, 0x01, 0xd7\n"
            ::"m" (ptr));
    printf("rbx = %lx (in enclave)\n", rbx);
}

#include <string.h>
/*
 * do_eexit_by_rop:f
 *   Invokes EEXIT (ENCLU) leaf instruction using ROP
 */
extern "C" void gadget1();
extern "C" void gadget2();
extern "C" void gadget3();
unsigned long secret = 0x123456789;
void do_eexit_by_rop()
{
    unsigned long payload[7];
    ocall_build_payload(payload, 5 * sizeof(unsigned long));
    memcpy((void *)((unsigned long)&payload + 9 * sizeof(unsigned long)),
            payload, sizeof(unsigned long) * 5);
    __asm__ __volatile__(
            "mov %0, %%rbx\n"
            ::"r" (&secret));

   printf("the secret %lx :\n", secret);
}

void enclave_main()
{
    do_eexit_by_rop();
    do_eexit();
}
