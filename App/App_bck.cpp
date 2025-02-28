/*
 * Copyright (C) 2011-2019 Intel Corporation. All rights reserved.
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


#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <unistd.h>
#include <pwd.h>
#include "sgx_urts.h"
#include "App.h"
#include "Enclave_u.h"
#include <sys/mman.h>
#include <signal.h>
#include <sched.h>
#include <string.h>
#include "libsgxstep/enclave.h"
#include "libsgxstep/debug.h"
#include "libsgxstep/pt.h"
#include <stdlib.h>
#include <linux/types.h>
#include <stdarg.h>


# define MAX_PATH FILENAME_MAX
__attribute__((aligned(4096))) unsigned long output[1024] = {0};

/* Global EID shared by multiple threads */
sgx_enclave_id_t global_eid = 0;
int fault_fired = 0, aep_fired = 0;
void *a_pt;
int retval = 0;

unsigned long t1, t2, t;
__u64 rdtsc()
{
        __u32 lo,hi;

        __asm__ __volatile__
        (
         "rdtsc":"=a"(lo),"=d"(hi)
        );
        return (__u64)hi<<32|lo;
}


typedef struct _sgx_errlist_t {
    sgx_status_t err;
    const char *msg;
    const char *sug; /* Suggestion */
} sgx_errlist_t;

/* Error code returned by sgx_create_enclave */
static sgx_errlist_t sgx_errlist[] = {
    {
        SGX_ERROR_UNEXPECTED,
        "Unexpected error occurred.",
        NULL
    },
    {
        SGX_ERROR_INVALID_PARAMETER,
        "Invalid parameter.",
        NULL
    },
    {
        SGX_ERROR_OUT_OF_MEMORY,
        "Out of memory.",
        NULL
    },
    {
        SGX_ERROR_ENCLAVE_LOST,
        "Power transition occurred.",
        "Please refer to the sample \"PowerTransition\" for details."
    },
    {
        SGX_ERROR_INVALID_ENCLAVE,
        "Invalid enclave image.",
        NULL
    },
    {
        SGX_ERROR_INVALID_ENCLAVE_ID,
        "Invalid enclave identification.",
        NULL
    },
    {
        SGX_ERROR_INVALID_SIGNATURE,
        "Invalid enclave signature.",
        NULL
    },
    {
        SGX_ERROR_OUT_OF_EPC,
        "Out of EPC memory.",
        NULL
    },
    {
        SGX_ERROR_NO_DEVICE,
        "Invalid SGX device.",
        "Please make sure SGX module is enabled in the BIOS, and install SGX driver afterwards."
    },
    {
        SGX_ERROR_MEMORY_MAP_CONFLICT,
        "Memory map conflicted.",
        NULL
    },
    {
        SGX_ERROR_INVALID_METADATA,
        "Invalid enclave metadata.",
        NULL
    },
    {
        SGX_ERROR_DEVICE_BUSY,
        "SGX device was busy.",
        NULL
    },
    {
        SGX_ERROR_INVALID_VERSION,
        "Enclave version was invalid.",
        NULL
    },
    {
        SGX_ERROR_INVALID_ATTRIBUTE,
        "Enclave was not authorized.",
        NULL
    },
    {
        SGX_ERROR_ENCLAVE_FILE_ACCESS,
        "Can't open enclave file.",
        NULL
    },
};

void aep_cb_func(void)
{
    info("begin cb");
//    gprsgx_region_t gprsgx;
//    uint64_t erip = edbgrd_erip() - (uint64_t) get_enclave_base();
//    info("Hello world from AEP callback with erip=%#llx! Resuming enclave..  %lx %lx", erip, sgx_step_eresume_cnt, sgx_step_tcs);
//    edbgrd(get_enclave_ssa_gprsgx_adrs(), &gprsgx, sizeof(gprsgx_region_t));
//    dump_gprsgx_region(&gprsgx);

    aep_fired++;
    int retval = 0xff;
//    ASSERT( enclave_read_data(eid, &retval) );
    if(aep_fired>1)
	return;
//    ecall_thread_functions();
//    enclave_read_data(global_eid, &retval);
    info("a at %lx", retval);
    return;
}

void fault_handler(int signal)
{
    fault_fired++;
    info("The %dth ---Caught fault %d! Restoring access rights..", fault_fired, signal);
    ASSERT(!mprotect(a_pt, 4096, PROT_READ | PROT_WRITE));
//    ASSERT(!mprotect(a_pt, 4096, PROT_NONE));
 //   print_pte_adrs(a_pt);
    info("current works in fault_handler");
    return ;
}


void fault_handler1(int signal)
{
    info("Caught fault %d! this page doesnot existing anymore.", signal);
}


/* Check error conditions for loading enclave */
void print_error_message(sgx_status_t ret)
{
    size_t idx = 0;
    size_t ttl = sizeof sgx_errlist/sizeof sgx_errlist[0];

    for (idx = 0; idx < ttl; idx++) {
        if(ret == sgx_errlist[idx].err) {
            if(NULL != sgx_errlist[idx].sug)
                printf("Info: %s\n", sgx_errlist[idx].sug);
            printf("Error: %s\n", sgx_errlist[idx].msg);
            break;
        }
    }
    
    if (idx == ttl)
    	printf("Error code is 0x%X. Please refer to the \"Intel SGX SDK Developer Reference\" for more details.\n", ret);
}

/* Initialize the enclave:
 *   Call sgx_create_enclave to initialize an enclave instance
 */
int initialize_enclave(void)
{
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
    sgx_launch_token_t token = {0};
    int  updated = 0;
    /* Call sgx_create_enclave to initialize an enclave instance */
    /* Debug Support: set 2nd parameter to 1 */
    ret = sgx_create_enclave(ENCLAVE_FILENAME, 1, &token, &updated, &global_eid, NULL);
    register_aep_cb(aep_cb_func);
 //   register_aep_cb(aep_cb_func);
    if (ret != SGX_SUCCESS) {
        print_error_message(ret);
        return -1;
    }
//    register_aep_cb(aep_cb_func);
    return 0;
}

/*
//OCall functions 
void ocall_print_string(const char *str)
{
 // Proxy/Bridge will check the length and null-terminate 
 //    * the input string to prevent buffer overflow. 

//    sleep(1);
    printf("%s\n", str);
}
*/

/* Application entry */
int SGX_CDECL main(int argc, char *argv[])
{
    (void)(argc);
    (void)(argv);


    /* Initialize the enclave */
    if(initialize_enclave() < 0){
        printf("Enter a character before exit ...\n");
        getchar();
        return -1; 
    }
    
    unsigned long value = 100;
    printf("the value 100's virtual address : 0x%lx ...\n", &value);
    
    /* Utilize trusted libraries */
   // ecall_libc_functions();
   // ecall_libcxx_functions();

    info("Print Enclave Information ...");
    print_enclave_info();
    
    unsigned long *base; 
    unsigned long *limit;
    base = (unsigned long *)get_enclave_base();
    int size = (int)get_enclave_size();
    limit = base+size/0x8;
    unsigned long *ssa;
    ssa = (unsigned long *)get_enclave_ssa_gprsgx_adrs();

    unsigned long *tcs;
    tcs = (unsigned long *)sgx_get_tcs();

    printf("the base: %lx, size = %lx, and the limit: %lx \n",base, size, limit);

//    unsigned long output[120]={0};
  /*
    //test ssa
    ssa = ssa-1;
    printf("the crrent enclave's ssa : %lx\n", ssa);
    printf("the crrent enclave's ssa value : %lx\n", *ssa);

    printf("just log ssa success! \n");

    SGX_ASSERT(print_data_from_v(global_eid, ssa));
   printf("write ssa space: \n");
   SGX_ASSERT(print_data_from_v(global_eid, ssa));
 //   printf("write ssa space: \n");
//    SGX_ASSERT(print_data_from_v(global_eid, ssa));
     printf("the crrent enclave's ssa value : %lx\n", *ssa);


    //test tcs
    printf("the crrent enclave's tcs : %lx\n", tcs);
    printf("the crrent enclave's tcs value : %lx\n", *tcs);

    printf("just log tcs success! \n");

    SGX_ASSERT(print_data_from_v(global_eid, tcs));
    printf("the crrent enclave's tcs value : %lx\n", *tcs);

    //test al ah
    a_pt = &value;
    printf("the crrent value's addr: %lx\n", &value);
  

    unsigned long *Al, *Ah;
    Al = base-1;
    Ah = limit+1;

  //   SGX_ASSERT(print_data_from_v(global_eid, &value));
    /*
    printf("the crrent Al's addr: %lx\n", Al);
    printf("the crrent Al's value: %lx\n", *Al);
  //    ASSERT(!mprotect(Al, 4096, PROT_NONE));
    SGX_ASSERT(print_data_from_v(global_eid, Al));
    printf("the crrent Al's value: %lx\n\n", *Al); 
    
    printf("the crrent Ah's addr: %lx\n", Ah);

    getchar();
    printf("the crrent Ah's value: %lx\n", *Ah);
    

    SGX_ASSERT(print_data_from_v(global_eid, Ah));
    printf("the crrent Ah's value: %lx\n", *Ah);


    printf("the crrent value's addr: %lx\n", &value);
    printf("the crrent value's value: %lx\n", value);
    SGX_ASSERT(print_data_from_v(global_eid, &value));
    printf("the crrent sgx page's value: %lx\n", value);
   */
    int i=1;
    for(i=0; i<100;i++)
    {
        output[i] = rand();
    }
    
    printf("the crrent sgx code page's data:\n");
    for(i=0; i<120;i++)
    {
       printf("%lx  ", output[i]);
    }
    
    printf("\n end code page print\n");

    printf("the crrent output's addr: %lx\n", output);
    printf("the crrent output's value: %lx\n", output[0]);
    output[0]=1;
    t1= rdtsc();
    t2 = rdtsc();
    t= t2-t1;
    printf("two times of rdtsc : %lx\n", t);
    t1 = rdtsc();
    SGX_ASSERT(print_data_from_e(global_eid, output));
    t2 = rdtsc();
    t = t2-t1;
    printf("two times of rdtsc : %lx\n", t);

    printf("the crrent sgx code page's data:\n");
    for(i=0; i<512;i++)
    {
       printf("%lx  ", output[i]);
    }
    
    printf("\n end code page print\n");
/*
    memset(output, 0, sizeof(output));
    SGX_ASSERT(print_data_from_e(global_eid, output));
    printf("the crrent sgx data page's data:\n");
    for(i=0; i<10;i++)
    {
       printf("%lx  ", output[i]);
    }
    
    printf("\nend data page print\n");


    unsigned long a_p;
    a_p =output[0];  //-0x1000, 0, +0x1000
    printf("%lx\n", a_p);
    
    void *cstsrt;
    cstsrt = (void **)&a_p; 
     printf("%lx\n", *(void**)cstsrt);
   
    //limit the access control of page
//    ASSERT(!mprotect(*(void**)cstsrt, 4096, PROT_NONE));
    ASSERT(!mprotect(*(void**)cstsrt, 4096, PROT_READ));

    //re-access the limited page.
    SGX_ASSERT(print_data_from_e(global_eid, output));
    printf("the crrent sgx data page's data:\n");
    for(i=0; i<10;i++)
    {
       printf("%lx  ", output[i]);
    }
    
    printf("\nend data page print\n");
*/
    /* Destroy the enclave */
    SGX_ASSERT(sgx_destroy_enclave(global_eid));
    
    printf("Info: SampleEnclave successfully returned.\n");

    printf("Enter a character before exit ...\n");
    getchar();
    return 0;
}

