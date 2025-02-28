#include <linux/module.h>
#include "func.h"

unsigned long handler1_read(unsigned long paddr){
	
        unsigned int context;
	int iscontext= 0;
	paddr = phys_addr;
	
	if(!paddr){
		return 0;
	}

	__asm__ volatile("mov %0, %%eax \n\t"
			 "mov (%%eax), %1\n\t"
			 :"=r"(context)
	                 :"r"(paddr)
                         :);
	
        iscontext = PRE_CONTEXT | context;

        while(iscontext) {  //not equal
        	__asm__ volatile("mov %0, %%eax \n\t"
			 "mov (%%eax), %1\n\t"
			 :"=r"(context)
	                 :"r"(paddr)
                         :);
        }

	Rtag = 0;
	return iscontext;
}
EXPORT_SYMBOL(handler1_read);

unsigned long handler1_recover(unsigned long vaddr, unsigned long cr3){
    unsigned long paddr=0;
    unsigned long page_addr=0;
    unsigned long P_OFFSET=0;
    unsigned long *pgd, *pud, *pmd, *pte;
    unsigned long *pte_c;
    unsigned long pte_mask;
    
    printk("vaddr = 0x%lx,  cr3 = 0x%lx  \n", vaddr, cr3);

    pgd = (unsigned long *)(cr3 - PAGE_OFFSET1);
    pgd = pgd + ((vaddr>>39) & 0x1FF);

    pud = (unsigned long *)((unsigned long)*pgd & PTE_PFN_MASK1);
    pud = pud + ((vaddr>>30) & 0x1FF);


    pmd = (unsigned long *)((unsigned long)*pud & PTE_PFN_MASK1) ;
    pmd = pmd + ((vaddr>>21) & 0x1FF);
 
    pte = (unsigned long *)((unsigned long)*pmd & PTE_PFN_MASK1);
    pte = pte + ((vaddr>>12) & 0x1FF);


    pte_c = pte;

    pte_c = (unsigned long *)old_phy_pte;   //give a self-defined pte address;
    pte_mask = *pte & 0xfff; 
    pte_c = pte_c + 0xfff;                  //exchange a random physical paddr

    page_addr= (*pte) & PAGE_MASK1;
    P_OFFSET=vaddr&~PAGE_MASK1;
    paddr=page_addr|P_OFFSET;
    printk("vaddr=0x%lx,paddr=0x%lx\n",vaddr,paddr);
    __asm__ volatile("rsm":::);
    return paddr;
}

EXPORT_SYMBOL(handler1_recover);

unsigned long handler3_4_wait(bool mask){
	mask = Rtag;
	while(mask){
		__asm__ volatile("nop":::);
                mask = Rtag;
        }
       
        __asm__ volatile("rsm":::);
	return 0;
}

EXPORT_SYMBOL(handler3_4_wait);

unsigned long handler0(unsigned long vaddr, unsigned long cr3){
    unsigned long paddr=0;
    unsigned long page_addr=0;
    unsigned long P_OFFSET=0;
    unsigned long *pgd, *pud, *pmd, *pte;
    unsigned long *pte_c;
    unsigned long pte_mask;


    pgd = (unsigned long *)(cr3);
    pgd = pgd + ((vaddr>>39) & 0x1FF);
    printk("pgd = 0x%lx *pgd = 0x%lx  \n", pgd, *pgd);

    pud = (unsigned long *)(((unsigned long)*pgd & PTE_PFN_MASK) + PAGE_OFFSET);
//  printk("*pgd & PTE_PFN_MASK + PAGE_OFFSET = 0x%lx  \n", ((unsigned long)*pgd & PTE_PFN_MASK) + PAGE_OFFSET);
    pud = pud + ((vaddr>>30) & 0x1FF);
//    printk("pud = 0x%lx  \n", pud);
   
    printk("pud = 0x%lx *pud = 0x%lx  \n", pud, *pud);
    

    pmd = (unsigned long *)(((unsigned long)*pud & PTE_PFN_MASK) + PAGE_OFFSET);
    pmd = pmd + ((vaddr>>21) & 0x1FF);
    printk("pmd = 0x%lx *pmd = 0x%lx  \n", pmd, *pmd);

    pte = (unsigned long *)(((unsigned long)*pmd & PTE_PFN_MASK) + PAGE_OFFSET);
    pte = pte + ((vaddr>>12) & 0x1FF);
    printk("pte = 0x%lx *pte = 0x%lx  \n", pte, *pte);


    pte_c = pte;


    pte_c = (unsigned long *)NEW_MAP_PTE;   //give a self-defined pte address;
    pte_mask = *pte & 0xfff; 
    pte_c = pte_c + 0xfff;                  //exchange a random physical paddr

    page_addr= (*pte) & PAGE_MASK1;
    P_OFFSET=vaddr&~PAGE_MASK1;
    paddr=page_addr|P_OFFSET;
    printk("page_addr=0x%lx,page_offset=0x%lx\n",page_addr,P_OFFSET);
    printk("vaddr=0x%lx,paddr=0x%lx\n",vaddr,paddr);
 //   __asm__ volatile("rsm":::);
    return paddr;
}


unsigned long handler_remap(unsigned long vaddr, unsigned long paddr){
    unsigned long page_addr=0;
    unsigned long P_OFFSET=0;
    unsigned long *pgd, *pud, *pmd, *pte;
    unsigned long *pte_c;
    unsigned long pte_mask;
    unsigned long smmbase, cr3;
    
    smmbase = 0xb83cdef00;
    cr3 = smmbase +0x7ff8;
    
    pgd = (unsigned long *)(cr3);
    pgd = pgd + ((vaddr>>39) & 0x1FF);
    printk("pgd = 0x%lx *pgd = 0x%lx  \n", pgd, *pgd);

    pud = (unsigned long *)(((unsigned long)*pgd & PTE_PFN_MASK) + PAGE_OFFSET);
//  printk("*pgd & PTE_PFN_MASK + PAGE_OFFSET = 0x%lx  \n", ((unsigned long)*pgd & PTE_PFN_MASK) + PAGE_OFFSET);
    pud = pud + ((vaddr>>30) & 0x1FF);
//    printk("pud = 0x%lx  \n", pud);
   
    printk("pud = 0x%lx *pud = 0x%lx  \n", pud, *pud);
    

    pmd = (unsigned long *)(((unsigned long)*pud & PTE_PFN_MASK) + PAGE_OFFSET);
    pmd = pmd + ((vaddr>>21) & 0x1FF);
    printk("pmd = 0x%lx *pmd = 0x%lx  \n", pmd, *pmd);

    pte = (unsigned long *)(((unsigned long)*pmd & PTE_PFN_MASK) + PAGE_OFFSET);
    pte = pte + ((vaddr>>12) & 0x1FF);
    printk("pte = 0x%lx *pte = 0x%lx  \n", pte, *pte);


    pte_c = pte;


    pte_c = (unsigned long *)paddr;   //give a self-defined pte address;
    pte_mask = *pte & 0xfff; 
    pte_c = pte_c + 0xfff;                  //exchange a random physical paddr

    page_addr= (*pte) & PAGE_MASK1;
    P_OFFSET=vaddr&~PAGE_MASK1;
    paddr=page_addr|P_OFFSET;
    printk("page_addr=0x%lx,page_offset=0x%lx\n",page_addr,P_OFFSET);
    printk("vaddr=0x%lx,paddr=0x%lx\n",vaddr,paddr);
 //   __asm__ volatile("rsm":::);
    return paddr;
}


unsigned long handler_map(unsigned long vaddr){
    unsigned long page_addr=0, paddr;
    unsigned long P_OFFSET=0;
    unsigned long *pgd, *pud, *pmd, *pte;
    unsigned long *pte_c;
    unsigned long pte_mask;
    unsigned long smmbase, cr3;
    
    smmbase = 0xb83cdef00;
    cr3 = smmbase +0x7ff8;
    
    pgd = (unsigned long *)(cr3);
    pgd = pgd + ((vaddr>>39) & 0x1FF);
    printk("pgd = 0x%lx *pgd = 0x%lx  \n", pgd, *pgd);

    pud = (unsigned long *)(((unsigned long)*pgd & PTE_PFN_MASK) + PAGE_OFFSET);
//  printk("*pgd & PTE_PFN_MASK + PAGE_OFFSET = 0x%lx  \n", ((unsigned long)*pgd & PTE_PFN_MASK) + PAGE_OFFSET);
    pud = pud + ((vaddr>>30) & 0x1FF);
//    printk("pud = 0x%lx  \n", pud);
   
    printk("pud = 0x%lx *pud = 0x%lx  \n", pud, *pud);
    

    pmd = (unsigned long *)(((unsigned long)*pud & PTE_PFN_MASK) + PAGE_OFFSET);
    pmd = pmd + ((vaddr>>21) & 0x1FF);
    printk("pmd = 0x%lx *pmd = 0x%lx  \n", pmd, *pmd);

    pte = (unsigned long *)(((unsigned long)*pmd & PTE_PFN_MASK) + PAGE_OFFSET);
    pte = pte + ((vaddr>>12) & 0x1FF);
    printk("pte = 0x%lx *pte = 0x%lx  \n", pte, *pte);

/*
    pte_c = pte;


    pte_c = (unsigned long *)paddr;   //give a self-defined pte address;
    pte_mask = *pte & 0xfff; 
    pte_c = pte_c + 0xfff;                  //exchange a random physical paddr
*/
    page_addr= (*pte) & PAGE_MASK1;
    P_OFFSET=vaddr&~PAGE_MASK1;
    paddr=page_addr|P_OFFSET;
    printk("page_addr=0x%lx,page_offset=0x%lx\n",page_addr,P_OFFSET);
    printk("vaddr=0x%lx,paddr=0x%lx\n",vaddr,paddr);
 //   __asm__ volatile("rsm":::);
    return paddr;
}


MODULE_LICENSE("GPL");


