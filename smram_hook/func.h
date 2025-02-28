#ifndef __TEST_H
#define __TEST_H

#define SMBASE 0xB83C6000
#define PTE_PFN_MASK1 0xffffffffff000
#define PAGE_MASK1    0xfffffffffffff000
#define PAGE_OFFSET1  0xffff963140000000

#define PRE_CONTEXT   0xaabbccdd

//define a fix address
#define NEW_MAP_PTE 0x111110000

//extern unsigned long cr3;
//extern unsigned long vaddr;
extern bool Rtag; //core 3, core 4 tag for resume from smm: 0, out, 1 stay.
extern unsigned long new_remap_pte; //self-defined
extern unsigned long *old_phy_pte;
extern unsigned long phys_addr;

//unsigned long handler0_remap(unsigned long vaddr, unsigned long cr3);
unsigned long handler0(unsigned long vaddr, unsigned long cr3);

unsigned long handler3_4_wait(bool mask);

unsigned long handler1_read(unsigned long paddr);
unsigned long handler1_recover(unsigned long vaddr, unsigned long cr3);

unsigned long handler_remap(unsigned long vaddr, unsigned long paddr);
unsigned long handler_map(unsigned long vaddr);
#endif


