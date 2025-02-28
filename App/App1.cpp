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
#include <pthread.h>
#include <sys/stat.h>
#include <fcntl.h>
//#include <thread> 

# define MAX_PATH FILENAME_MAX



int psize = 50;
__attribute__((aligned(4096))) unsigned long output[1024] = {0};
__attribute__((aligned(4096))) unsigned long cpyopt[5][1024] = {0};

/* Global EID shared by multiple threads */
sgx_enclave_id_t global_eid = 0;
int fault_fired = 0, aep_fired = 0;
void *a_pt;
int retval = 0;
unsigned long l1addr = 0;


int cflag=0, sflag =1;  //init current flag 1, and storing flag = 1
int current_step = 0;
unsigned long *base; 
unsigned long *limit;    
unsigned long *ssa;
unsigned long *tcs;
unsigned long *flag;


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
//    sgx_destroy_enclave(global_eid);
//    aep_fired++;
//    int retval = 0xff;
//    ASSERT( enclave_read_data(eid, &retval) );
 //   if(aep_fired>1)
//	return;
//    ecall_thread_functions();
//    enclave_read_data(global_eid, &retval);
 //   sleep(3);
    memcpy(cpyopt[cflag], output, sizeof(output));
    int i;
    for(i=0; i<psize; i++)
    {
	cpyopt[cflag][i] = output[i];
    }
    cflag++;
    output[0]= cflag;
    l1addr ++;
   // flag = &l1addr;
 //   info("a at %lx", retval);
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


//OCall functions 
void ocall_print_string(const char *str)
{
 // Proxy/Bridge will check the length and null-terminate 
 //    * the input string to prevent buffer overflow. 

  //  sleep(10);
    printf("Enclave output: %s\n", str);
}

void ocall_print_ul(unsigned long *a)
{
 // Proxy/Bridge will check the length and null-terminate 
 //    * the input string to prevent buffer overflow. 

  //  sleep(10);
    printf("Enclave output 2: %lx\n", *a);
}

void ocall_print_int(int *a)
{
 // Proxy/Bridge will check the length and null-terminate 
 //    * the input string to prevent buffer overflow. 

  //  sleep(10);
    printf("Enclave output 3: %d\n", *a);
}




pthread_mutex_t mutex;

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


// the simulated thread for simulating the SMM for changing the flags
void *monitor_flags(void *arg){
	
        unsigned long read_flags= 0;
	if(set_cpu(1))
	{
		printf("set cpu error\n");
	}
	
	do{
		do{
			read_flags = output[300];
				
		}while(read_flags == 0);

                printf("m1!\n");

		if (pthread_mutex_lock(&mutex)!=0){
		
			printf("lock eror!\n");
		}
		cflag++;
		sflag= cflag;
		memcpy(cpyopt, output, sizeof(cpyopt));
		memset(output, 0, sizeof(output));
		
	//	__asm__ __volatile__(
       	//		  "mov %0, %%r8\n\t"::"r"(cflag):
        //	);
		output[0] = sflag;
		pthread_mutex_unlock(&mutex);

	}while(sflag==0x5);
	
	return ((void *)0);
	
}


void *enclave_run(void *arg){

	if(set_cpu(3))
	{
		printf("set cpu error\n");
	}
	t1 = rdtsc();
	SGX_ASSERT(print_data_from_e(global_eid, output, base, tcs, 798, flag));
	t2 = rdtsc();
	t = t2-t1;
	printf("two times of rdtsc : %lx\n", t);
	return ((void *)0);

}
	
void enclave_exec(void){
    t1 = rdtsc();
    SGX_ASSERT(print_data_from_e(global_eid, output, base, tcs, 798, flag));
    t2 = rdtsc();
    t = t2-t1;
    printf("two times of rdtsc : %lx\n", t);
    return;
} 

void console_input(const char *str, unsigned long value){
/*
    char buf[BUFSIZ] = { '\0' };
    
    if(value){
       sprintf(buf, "echo %s:  %lx. >>/home/ray/console",str, value);
    }else 
       sprintf(buf, "echo print log  >>/home/ray/console");

    system(buf);
*/
return; 
}


void *thread_attestation(void *arg)
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
    tcs += 513;
     
    printf("t_thread: debug base %lx, size %lx, tcs %lx \n",  base, size, tcs);
//    console_input("Encl: debug base", (unsigned long)&base);
//    console_input("Encl: debug size", (unsigned long)size);
//    console_input("Encl: debug tcs ", (unsigned long)&tcs);
  
    int i=1;
    for(i=0; i<100;i++)
    {
        output[i] = rand();
    }
    

//    console_input("t_thread:Host create random page", 1);
    for(i=0; i<120;i++)
    {
       printf("%lx  ", output[i]);
    }
    
    int fd;
    int val = 1;

    fd = open("/dev/smitdrive", O_RDWR);
    if(fd < 0){
        printf("can't open!\n");
    }

//    console_input("Host debug random page addr: ", (unsigned long)&output);
    output[0]=1;  //set a flag:

    unsigned long *code2;
    code2 = base+513;
//    console_input("Encl: debug code page 2 addr: ", (unsigned long)&code2);
    
    //simulate the reporter halting......
    //getchar();
    //ASSERT(!mprotect(ssa, 4096, PROT_NONE));

    flag = &l1addr;
    printf("t_thread:the code 2 page address: %lx\n", code2); 
    for (i=0; i<1; i++){
   	 t1= rdtsc();
   	 t2 = rdtsc();
    	 unsigned long mid_t= t2-t1;
   	 printf("two times of rdtsc : %ld\n", mid_t);
	//console_input("Host debug two time interval ", mid_t);
    
    	//do the worker page check..... then goes to key attestation.
    	t1 = rdtsc();
    	flag = base+194;
   	printf("t_thread:begin enclave execute\n");

    	sgx_status_t ret = SGX_ERROR_UNEXPECTED;
    	ret = print_data_from_e(global_eid, output, base, tcs, 798, flag);
  
    	if (ret != SGX_SUCCESS)
       		 abort();

    	t2 = rdtsc();
    	t = t2-t1;
    	printf("t_thread:one time attesstation : %ld\n", t-mid_t);
    	//long t0 = (long)(t-mid_t);
     	//console_input("Host debug enclave_read time ", t0);
    }

}



void *thread_general(void *arg)
{
    int sum;
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
    ret= addint(global_eid, &sum, 11,12);
    if (ret != SGX_SUCCESS)
        abort();
    printf("t_general:begin enclave execute %d\n", sum);
}



/* Application entry */
int SGX_CDECL main(int argc, char *argv[])
{
    (void)(argc);
    (void)(argv);

    char out[4012];
    char *tty;

    /* Initialize the enclave */
    if(initialize_enclave() < 0){
        printf("Enter a character before exit ...\n");
        getchar();
        return -1; 
    }
    
    console_input("Host:************* Start Enclave**********", 1);

    unsigned long value = 100;
//    console_input("Host debug value", value);
    print_enclave_info();
//	pthread_t t_attest, t_general;
//	pthread_create(&t_attest, NULL, thread_attestation, NULL);
//	pthread_create(&t_general, NULL, thread_general, NULL);
//	pthread_join(t_attest, NULL);	
//	pthread_join(t_general, NULL);

/*
    thread thread1(thread_attestation);
    thread thread2(thread_general);

    thread1.join();
    thread2.join();
*/
    int i;
    printf("Host: last content reading from Enclave page:\n");
    for(i=0; i<100;i++)
    {
        output[i] = rand();
    }
    
    for(i=0; i<10;i++)
    {
       printf("%lx  ", output[i]);
    }

    printf("\nHost: begin to read the enclave function: \n");
    unsigned long *base; 
    unsigned long *limit;
    base = (unsigned long *)get_enclave_base();
    int size = (int)get_enclave_size();
    limit = base+size/0x8;
    unsigned long *ssa;
    ssa = (unsigned long *)get_enclave_ssa_gprsgx_adrs();

    unsigned long *tcs;
    tcs = (unsigned long *)sgx_get_tcs();
    tcs += 513;

    flag = base+194;
 //    ret = print_data_from_e(global_eid, output, base, tcs, 798, flag);
//     SGX_ASSERT(attested_reporter(global_eid, output));
    manage_rsa(global_eid);
//    SGX_ASSERT(manage_rsa(global_eid));
//     int sum;

 //    SGX_ASSERT(addint(global_eid,&sum, 1,2));

/*   
    int j; 
    for(j =0; j<5;j++)
    {
	printf("\nthe page %d is the following \n", j);
   	for(i =0; i<psize;i++)
   	{
 		printf("%lx  ", cpyopt[j][i]);
	}
    }
    
    printf("\n end code page print\n");
*/
    /* Destroy the enclave */
   
    SGX_ASSERT(sgx_destroy_enclave(global_eid));
    
    printf("\n************End the test**************.\n");
//    getchar();  //for progress halt
   
}

