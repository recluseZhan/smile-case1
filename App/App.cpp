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
#include <pthread.h>
# include <unistd.h>
# include <pwd.h>
# define MAX_PATH FILENAME_MAX
#include <sys/mman.h>
#include <signal.h>
#include <sched.h>
#include <string.h>
#include "libsgxstep/enclave.h"
#include "libsgxstep/debug.h"
#include "libsgxstep/pt.h"
#include "sgx_urts.h"
#include "App.h"
#include "Enclave_u.h"

/* Global EID shared by multiple threads */
sgx_enclave_id_t global_eid = 0;
void *a_pt;
int fault_fired = 0, aep_fired = 0;
void test_attestation(int flag);

int ocall_limit= 100;

typedef struct _sgx_errlist_t
{
    sgx_status_t err;
    const char *msg;
    const char *sug; /* Suggestion */
} sgx_errlist_t;

unsigned long urdtsc()
{
    unsigned int lo,hi;

    __asm__ __volatile__
    (
        "rdtsc":"=a"(lo),"=d"(hi)
    );
    return (unsigned long)hi<<32|lo;
}


extern "C" void sgx_reporter_enter(void *req, void *entry);

extern "C" void sgx_reporter_enter2(void *tcs, const long fn, void *ocall_table, void *output, unsigned long size, void *addr);




/* Error code returned by sgx_create_enclave */
static sgx_errlist_t sgx_errlist[] =
{
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
    gprsgx_region_t gprsgx;
    uint64_t erip = edbgrd_erip() - (uint64_t) get_enclave_base();
    info("Hello world from AEP callback with erip=%#llx! Resuming enclave..", erip);
     test_attestation(1);
    edbgrd(get_enclave_ssa_gprsgx_adrs(), &gprsgx, sizeof(gprsgx_region_t));
    dump_gprsgx_region(&gprsgx);

    aep_fired++;
}

/* Check error conditions for loading enclave */
void print_error_message(sgx_status_t ret)
{
    size_t idx = 0;
    size_t ttl = sizeof sgx_errlist/sizeof sgx_errlist[0];

    for (idx = 0; idx < ttl; idx++)
    {
        if(ret == sgx_errlist[idx].err)
        {
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

    /* Call sgx_create_enclave to initialize an enclave instance */
    /* Debug Support: set 2nd parameter to 1 */
    ret = sgx_create_enclave(ENCLAVE_FILENAME, 1, NULL, NULL, &global_eid, NULL);
//  ret = sgx_create_enclave(ENCLAVE_FILENAME, SGX_DEBUG_FLAG, NULL, NULL, &global_eid, NULL);
    if (ret != SGX_SUCCESS)
    {
        print_error_message(ret);
        return -1;
    }
    register_aep_cb(aep_cb_func);
    print_enclave_info();
    return 0;
}


__attribute__((aligned(4096))) unsigned long output[0x10000] = {0};
__attribute__((aligned(4096))) unsigned long cpyopt[1024] = {0};

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

inline int set_cpu(int i)
{
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(i, &mask);
    printf("thread %u, i = %d\n", pthread_self(), i);
    if(-1 == pthread_setaffinity_np(pthread_self(), sizeof(mask), &mask))
    {
        return -1;
    }
    return 0;
}


int flag = 1;

/*
* argu_list:
*   [0] = flag;
*   [1] = output address
*   [2] = base address of first dumping page
*   [3] = counter of first dumping page
*   [4] = base address of second dumping page
*   [5] = counter of second dumping page
*/
unsigned long argu_list[6] = {0};



void test_attestation(int flag)
{
    unsigned long *base;
    unsigned long *limit;
    base = (unsigned long *)get_enclave_base();
    int size = (int)get_enclave_size();
    limit = base+size/0x8;
    unsigned long *ssa;
    ssa = (unsigned long *)get_enclave_ssa_gprsgx_adrs();

    unsigned long *tcs;

    tcs = (unsigned long *)sgx_get_tcs();
    printf("tcs. frame ==  %lx, %lx, %lx\n", (unsigned long)tcs[0], (unsigned long)tcs[1],(unsigned long)tcs[2]);
//   tcs += 513;
 //   tcs = tcs-0x8800;     //different layout make diff  tcs , carefully
 //   tcs = tcs-0x206800;
    tcs = tcs-0x206800;
//	tcs = tcs-0x4400;

    memset(output, 0, sizeof(output));
    memset(argu_list, 0, sizeof(argu_list));

    argu_list[0] = flag;
    argu_list[1] = (unsigned long)&(output);
    argu_list[2] = (unsigned long )&ssa;
    argu_list[3] = 30;
    argu_list[4] = (unsigned long )&ssa;
    argu_list[5] = 40;

    printf("MAIN: t_attestation %lx, %lx, %lx\n", tcs, output,argu_list);

    printf("MAIN: begin ENCLAVE ECALL: ------\n\n");
    memset(output, 0, sizeof(output));
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
    ret = SGX_SUCCESS;
    unsigned long a = 12;
    unsigned long b = 13;
    int sum;



    unsigned long ms[2]= {0};
    ms[0] = (unsigned long)&output;
//    printf("\nMAIN:  t_attestation sim ms parameter: %lx, %lx \n", ms[0], ms[1]);
//    ret= attested_reporter1(global_eid, output,argu_list, &a, &b);

    unsigned long sharebuff[100] = {0};
    sharebuff[0]=0x200;
//tcs---rdi   1 ----rsi   NULL----rdx    output---rcx    0x1000---r8 -->r10, (%r9)
    int p, mid1= 0, mid2 =0 , s=0;
   for(p=0;p<1;p++){
    unsigned long t1, t2;
          int i;
unsigned long t =0;
    t1 = urdtsc();
    t2 = urdtsc();
//    printf("Host: two times of urdtsc time : %f \n ", (t2-t1)/3.4);
   
    t1=0;
    t2=0;

    t1 = urdtsc();
    sgx_reporter_enter2 (tcs, 1, NULL,  output, sharebuff[0], sharebuff );
    t2 = urdtsc();
      t= t2-t1; 
    mid1 = (mid1+t)/2;
    t1 = urdtsc();
    for(i=0; i<0x40; i++)
    {
        if (cpyopt[i]== output[i])
		s++;
    }
    t2 = urdtsc();
          t= t2-t1; 
    mid2 = (mid2+t)/2;

 //   sgx_reporter_enter2 (tcs, 1, NULL,  output, sharebuff[0], sharebuff );


  

 //   memset(output, 0, sizeof(output));
 //   sleep(1);
    }

    printf("Host: current report time : %f \n  verfied time : %f \n and test loop: %d \n", mid1/3.4, mid2/3.4, s);

//    printf(" mr_enclave: ");
   int i;
    for(i=1; i<6; i++){
    	printf(" 0x%lx ", sharebuff[i]);

        }
 //    printf(" mr_enclave: end \n\n");

    
    printf("\nT_attest: get target thread SSA: \n");
    for(i=0; i<0x40; i++)
    {
        printf("%016lx ", output[i]);
        if(i%4 ==0)
            printf("\n");

    }

//    printf("RAX:    %lx\n", output[12]);
    printf("RCX:    %lx\n", output[12]);
    printf("RDX:    %lx\n", output[13]);
    printf("RBX:    %lx\n", output[14]);
    printf("RSP:    %lx\n", output[15]);
    printf("RBP:    %lx\n", output[16]);
    printf("RSI:    %lx\n", output[17]);
    printf("RDI:    %lx\n", output[18]);

    if (ret != SGX_SUCCESS)
        abort();

}

void *thread_attestation(void *arg)
{
/*
    if (pthread_mutex_lock(&mutex)!=0)
    {

        printf("lock eror!\n");
    }
*/

    if(set_cpu(3))
    {
        printf("set cpu error\n");
    }

    unsigned long *base;
    unsigned long *limit;
    base = (unsigned long *)get_enclave_base();
    int size = (int)get_enclave_size();
    limit = base+size/0x8;
    unsigned long *ssa;
    ssa = (unsigned long *)get_enclave_ssa_gprsgx_adrs();

    unsigned long *tcs;
    tcs = (unsigned long *)sgx_get_tcs();
    printf("tcs. frame ==  %lx, %lx, %lx\n", (unsigned long)tcs[0], (unsigned long)tcs[1],(unsigned long)tcs[2]);
//   tcs += 513;
    tcs = tcs-0x206800;
//	tcs = tcs-0x4400;

    memset(output, 0, sizeof(output));
    memset(argu_list, 0, sizeof(argu_list));

    argu_list[0] = flag;
    argu_list[1] = (unsigned long)&(output);
    argu_list[2] = (unsigned long )&ssa;
    argu_list[3] = 30;
    argu_list[4] = (unsigned long )&ssa;
    argu_list[5] = 40;

    printf("MAIN: t_attestation: %lx, %lx, %lx\n", tcs, output,argu_list);

    printf("MAIN: t_attestation: begin ENCLAVE ECALL: ------\n\n");
    memset(output, 0, sizeof(output));
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
    ret = SGX_SUCCESS;

    unsigned long ms[2]= {0};
    ms[0] = (unsigned long)&output;
    printf("\nMAIN: t_attestation:  sim ms parameter: %lx, %lx \n", ms[0], ms[1]);
    unsigned long sharebuff[100] = {0};
    sharebuff[0]=0x200;
//tcs---rdi   1 ----rsi   NULL----rdx    output---rcx    0x1000---r8 -->r10, (%r9)

        unsigned long t1, t2;

    t1 = urdtsc();
    t2 = urdtsc();
    printf("----Host: two times of urdtsc time : count: %d,  time: %f\n ", (t2-t1), (t2-t1)/3400);
   
    t1=0;
    t2=0;

    t1 = urdtsc();
    sgx_reporter_enter2 (tcs, 1, NULL,  output, sharebuff[0], sharebuff );
   


    t2 = urdtsc();
    printf("====Host: current dumping time : count: %d, time: %f\n ", (t2-t1), (t2-t1)/3400);

      int i;

    printf("MAIN: t_attestation:  mr_enclave: start\n ");
      for(i=1; i<6; i++){
    	printf(" 0x%lx ", sharebuff[i]);

        }
    printf("\nMAIN: t_attestation: mr_enclave: end \n\n ");

 
    for(i=0; i<0x50; i++)
    {
        printf("%016lx ", output[i]);
        if(i%4 ==0)
            printf("\n");
    }
 

//   if (ret != SGX_SUCCESS)
 //       abort();  
 //   pthread_mutex_unlock(&mutex);
}


void *thread_general(void *arg)
{
//    if (pthread_mutex_lock(&mutex)!=0)
//    {
//        printf("lock eror!\n");
  //  }

    int sum;
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
//  ret= addint(global_eid, &sum, 11,12);

    unsigned long read_flags= 0;
    unsigned long a = 12;
    unsigned long b = 13;


    printf("\nMAIN: t_general: start general thread\n ");
    if(set_cpu(1))
    {
        printf("set cpu error\n");
    }
/*
    do
    {
        read_flags= output[0];
    }
    while(read_flags!=0);


    flag ++;

*/
    memset(output, 0, sizeof(output));

    ret = addint(global_eid,&sum, a,b, output);

    printf("\nMAIN: t_general: the mr_enclave data:\n");
    int i;
    for(i=0; i<4; i++)
    {
        printf(" 0x%lx ", output[i]);

    }

    printf("\n");

  //  pthread_mutex_unlock(&mutex);
    printf("MAIN: ******t_general: end execution with result:%d\n", sum);
    if (ret != SGX_SUCCESS)
        abort();
  //  printf("MAIN: t_general: end execution with result:%d\n", sum);
}


void thread_general1(void)
{
    int sum;
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
//  ret= addint(global_eid, &sum, 11,12);

    unsigned long read_flags= 0;
    unsigned long a = 12;
    unsigned long b = 13;


    printf("\nMAIN: t_general1: start general thread\n ");
    if(set_cpu(1))
    {
        printf("set cpu error\n");
    }

    memset(output, 0, sizeof(output));
    unsigned long t1, t2, t=0;

    int p;
    unsigned long mid1 = 0, mid2=0, s=0;
    unsigned long mr_encl[4] = {0xf586b9df737b6b35,0x1064f84839ddab91,0x438e33d4e2792e0d,0xc577d3a582be92d4};
    for(p=0; p<1; p++){
  
    int i;

    t1 = urdtsc();
    t2 = urdtsc();
//    printf("----Host- general: two times of urdtsc time : count: %d,  time: %f\n ", (t2-t1), (t2-t1)/3.4);
   
    t1=0;
    t2=0;

    t1 = urdtsc();
    ret = addint(global_eid,&sum, a,b, output);
 /*   for(i=0; i<0x50; i++)
    {
        if (mr_encl[i]== output[i])
		s++;
    }
  */ 
    t2 = urdtsc();
    t= t2-t1;   
    if(t>0)
       mid1 = (mid1+t)/2;
    t1 = urdtsc();
    for(i=0; i<0x8; i++)
    {
        if (mr_encl[i]== output[i])
		s++;
    }
    t2 = urdtsc();
     t= t2-t1; 
     if(t>0)
        mid2 = (mid2+t)/2;

 //   sleep(1);
  //  memset(output, 0, sizeof(output));
    }
    printf("====Host - general: current report time : count: %d, time: %f\n and result = %d\n", mid1, mid1/3.4, s);
    printf("====Host - general: current verify time : count: %d, time: %f\n and result = %d\n", mid2, mid2/3.4, s);


 //   printf("\nMAIN: t_general1: the mr_enclave data:\n");
printf("\nTarget Thread SSA:  \n");
   for(p=0; p<0x40; p++)
    {
        printf("%016lx ", output[p]);
             if(p%4 ==0)
            printf("\n");

    }

//    printf("RAX:    %lx\n", output[12]);
    printf("RCX:    %lx\n", output[12]);
    printf("RDX:    %lx\n", output[13]);
    printf("RBX:    %lx\n", output[14]);
    printf("RSP:    %lx\n", output[15]);
    printf("RBP:    %lx\n", output[16]);
    printf("RSI:    %lx\n", output[17]);
    printf("RDI:    %lx\n", output[18]);


//    memset(output, 0, sizeof(output));
    printf("\n");
    printf("MAIN: ******t_general: end execution with result:%d\n", sum);
    if (ret != SGX_SUCCESS)
        abort();

}


//test 
void thread_general2(void)
{
    int sum;
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
//  ret= addint(global_eid, &sum, 11,12);

    unsigned long read_flags= 0;
    unsigned long a = 12;
    unsigned long b = 13;


    printf("\nMAIN: t_general1: start general thread\n ");
    if(set_cpu(1))
    {
        printf("set cpu error\n");
    }

    memset(output, 0, sizeof(output));
    unsigned long t1, t2, t=0;

    int p;
    unsigned long mid1 = 0, mid2=0, s=0;
    unsigned long mr_encl[4] = {0xf586b9df737b6b35,0x1064f84839ddab91,0x438e33d4e2792e0d,0xc577d3a582be92d4};
    for(p=0; p<1; p++){
  
    int i;

    t1 = urdtsc();
    t2 = urdtsc();
//    printf("----Host- general: two times of urdtsc time : count: %d,  time: %f\n ", (t2-t1), (t2-t1)/3.4);
   
    t1=0;
    t2=0;
 //   memset(output, 0, sizeof(output));
    t1 = urdtsc();
    ret = addint(global_eid,&sum, a,b, output);
 /*   for(i=0; i<0x50; i++)
    {
        if (mr_encl[i]== output[i])
		s++;
    }
  */ 
    t2 = urdtsc();
    t= t2-t1;   
    if(t>0)
       mid1 = (mid1+t)/2;
    t1 = urdtsc();
    for(i=0; i<0x4; i++)
    {
        if (mr_encl[i]== output[i])
		s++;
    }
    t2 = urdtsc();
     t= t2-t1; 
     if(t>0)
        mid2 = (mid2+t)/2;

  //  cacheflush(output, int, 0x10000);

   // clflush(output+1);
    __asm__ __volatile__("clflush (%0)\n"
			::"r"(output)
			:);
 //  sleep(1);
//    memset(output, 0, sizeof(output));
    }
    printf("====Host - general: current report time : count: %d, time: %f\n and result = %d\n", mid1, mid1/3.4, s);
    printf("====Host - general: current verify time : count: %d, time: %f\n and result = %d\n", mid2, mid2/3.4, s);


//    printf("\nMAIN: t_general1: the mr_enclave data:\n");


   printf("\nTarget threads SSA:\n");
   for(p=0; p<80; p++)
    {
        printf(" 0x%016lx \n", output[p]);
        output[p] = 0;

    }

    memset(output, 0, sizeof(output));
    printf("\n");
    printf("MAIN: ******t_general: end execution with result:%d\n", sum);
    if (ret != SGX_SUCCESS)
        abort();

}

/* OCall functions */
void ocall_print_string(const char *str)
{
    /* Proxy/Bridge will check the length and null-terminate
     * the input string to prevent buffer overflow.
     */

    printf("Ocall: %lx ========>  %s", urdtsc(), str);
        ocall_limit --;
   if(ocall_limit <2)
    {
	sleep(10);
        test_attestation(1);
	ocall_limit= 100;
    }
}



/* Application entry */
int SGX_CDECL main(int argc, char *argv[])
{
    (void)(argc);
    (void)(argv);


    /* Initialize the enclave */
    if(initialize_enclave() < 0)
    {
        printf("Enter a character before exit ...\n");
        return -1;
    }

    if(set_cpu(3))
    {
        printf("set cpu error\n");
    }

    printf("Host: the output address %lx.\n", output);

    int i;
/*
    for(i = 0; i<1; i++)
    {
        test_attestation(i);
    }*/
   //  thread_general2();
 //      thread_general1();
  //       thread_general1();
         thread_general1();
       test_attestation(1);
/*

    	pthread_t t_attest1, t_attest2, t_general;
   	pthread_create(&t_general, NULL, thread_general, NULL);
        pthread_create(&t_attest1, NULL, thread_attestation, NULL);
        pthread_create(&t_attest2, NULL, thread_attestation, NULL);
  	pthread_join(t_general, NULL);
        pthread_join(t_attest1, NULL);
        pthread_join(t_attest2, NULL);
  //      pthread_join(t_attest, NULL);
  //      pthread_join(t_attest, NULL);
        test_attestation(1);
//       test_attestation(1);
//       test_attestation(1);
 */
    /* Destroy the enclave */
       pthread_mutex_destroy(&mutex);
//    thread_general1();


    SGX_ASSERT( sgx_destroy_enclave(global_eid));

    printf("Info: SampleEnclave successfully returned.\n");
    getchar();
    return 0;
}


/*

Once the error:
[sig_handler sig_handler.cpp:93] signal handler is triggered
[sig_handler sig_handler.cpp:149] NOT enclave signal
Makefile:240: recipe for target 'run' failed
make: *** [run] Segmentation fault


please check two reasons: 1 anchor_funciton in layout of enclave.so is changed 
                          2 tcs address layout is changed 

*/
