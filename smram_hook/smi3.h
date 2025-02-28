#include <stdio.h>
#include <stdbool.h>
#include <string.h>#include<linux/init.h>
#include<linux/module.h>
#include<linux/sched.h>
#include "func.h"

#define SMBASE 0xB83C6000
#define PTE_PFN_MASK 0xffffffffff000
#define PAGE_MASK    0xfffffffffffff000
#define PAGE_OFFSET  0xffff963140000000

#define PRE_CONTEXT   0xaabbccdd
//define a fix address
#define NEW_MAP_PTE 0x111110000

__attribute__((aligned(4096)))int array[4096] ={0};



//static unsigned long cr0,cr3;
unsigned long cr3 = 0xffff963b245f8000;
unsigned long vaddr= 0x7ffe65879314;
bool Rtag =1;
unsigned long ori_map_pte=0, new_remap_pte=0; //unmapping test
unsigned long *old_phy_pte;
unsigned long phys_addr= NULL;

//process for initialization handler in smi handler.
extern int sera_launch_smi(void);
extern int sera_monitor_smi(void);
