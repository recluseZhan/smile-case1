#include<linux/init.h>
#include<linux/module.h>
#include<linux/mm.h>
#include<linux/mm_types.h>
#include<linux/sched.h>
#include<linux/export.h>
#include<linux/init_task.h>
#include<linux/slab.h>
#include<linux/smp.h>
#include <asm/io.h>
#include <linux/fs.h>


#define SMBASE 0xB83C6000
//define a fix address
#define NEW_MAP_PTE 0x111110000
#define TRI_MODE_DRI 231
#define DEVICE_NAME "smitdrive"

static unsigned long cr0,cr3;
static unsigned long vaddr=0;

unsigned long app_baseaddr;
unsigned long app_size;
unsigned long secs_addr;
unsigned long erlange;
unsigned long romdompage_addr;
unsigned long paddr=0;
unsigned long page_addr=0;
unsigned long page_offset=0;


int app_pid;
struct mm_struct *c_mm;
int   index;


struct PageInfo{
   unsigned long vir_addr;
   unsigned long phy_addr;
};

__attribute__((aligned(4096))) int random_data_page[1024]={0xaa};


static void get_pgtable_macro(void)
{
    cr0=read_cr0();
    cr3=__read_cr3();

    printk("cr0=0x%lx,cr3=0x%lx\n",cr0,cr3);

    printk("PGDIR_SHIFT=%d\n",PGDIR_SHIFT);
    printk("P4D_SHIFT=%d\n",P4D_SHIFT);
    printk("PUD_SHIFT=%d\n",PUD_SHIFT);
    printk("PMD_SHIFT=%d\n",PMD_SHIFT);
    printk("PAGE_SHIFT=%d\n",PAGE_SHIFT);
    printk("PAGE_OFFSET=%Lx\n",PAGE_OFFSET);
    printk("PTRS_PER_PGD=%d\n",PTRS_PER_PGD);
    printk("PTRS_PER_P4D=%d\n",PTRS_PER_P4D);
    printk("PTRS_PER_PUD=%d\n",PTRS_PER_PUD);
    printk("PTRS_PER_PMD=%d\n",PTRS_PER_PMD);
    printk("PTRS_PER_PTE=%d\n",PTRS_PER_PTE);
    printk("PAGE_MASK=0x%lx\n",PAGE_MASK);
}



unsigned long get_phys_addr(unsigned long vaddr){
    unsigned long  caddr;
    unsigned long  *p4e, *pdpte, *pde, *pte;
    caddr = (cr3&0xffffffffff000)+((vaddr>>36)&0xff8);
    p4e = phys_to_virt(caddr);
    caddr = ((*p4e)&0xffffffffff000)+((vaddr>>27)&0xff8);
    pdpte = phys_to_virt(caddr);

    unsigned int ps_flag = (*pdpte>>7)&0x1;
    if(ps_flag == 1)  // 1G page
    {
       unsigned long page = (*pdpte)&0xfffffc0000000 + (vaddr>>30);
       return page;
    }

    caddr = ((*pdpte)&0xffffffffff000)+((vaddr>>18)&0xff8);
    pde=phys_to_virt(caddr);
    
    ps_flag = ((*pde)>>7)&0x1;
    if(ps_flag == 1)  // 2M page
    {
       unsigned long page1 = (*pde&0xfffffffc00000) + (vaddr>>20);
       return page1;
    }

    caddr = ((*pde)&0xffffffffff000)+((vaddr>>9)&0xff8);
    pte = phys_to_virt(caddr);

    unsigned long page3 = ((*pte)&0xffffffffff000)+(vaddr&0xfff);
    unsigned long *paddr = phys_to_virt(page3);

  
   return 0;
}

static unsigned long disable_using_page(unsigned long vaddr, struct PageInfo pinfo)
{
    pgd_t *pgd;
    p4d_t *p4d;
    pud_t *pud;
    pmd_t *pmd;
    pte_t *pte;
    struct mm_struct *m1;
    unsigned long paddr=0;
    unsigned long page_addr=0;
    unsigned long page_offset=0;
    m1 = c_mm;
    pgd=pgd_offset(m1,vaddr);
    printk("pgd_offset=0x%lx,pgd_index=%lu\n",pgd_val(*pgd),pgd_index(vaddr));
    if(pgd_none(*pgd))
    {
        return -1;
    }
    p4d=p4d_offset(pgd,vaddr);
    if(p4d_none(*p4d))
    {
        return -1;
    }
    pud=pud_offset(p4d,vaddr);
    if(pud_none(*pud))
    {
        return -1;
    }

    pmd=pmd_offset(pud,vaddr);
    if(pmd_none(*pmd))
    {
        return -1;
    }

    pte=pte_offset_kernel(pmd,vaddr);
    printk("1 pte_offset=0x%lx,pte_index=%lu\n",pte_val(*pte),pte_index(vaddr));
    unsigned long  *pte_value;
    pte_value =(unsigned long *)pte;
     pinfo.vir_addr = vaddr;
     pinfo.phy_addr = *pte_value;

    *pte_value = 0;               //disable the page
   __flush_tlb_all();
    if(pte_none(*pte))
    {
        return -1;
    }

    page_addr=pte_val(*pte)&PAGE_MASK;
    page_offset=vaddr&~PAGE_MASK;
    paddr=page_addr|page_offset;


  flush_cache_mm(m1);
//  flush_tlb_mm(m1);
    return paddr;
}

static unsigned long enable_using_page(unsigned long vaddr, unsigned long phy_addr)
{
    pgd_t *pgd;
    p4d_t *p4d;
    pud_t *pud;
    pmd_t *pmd;
    pte_t *pte;
    struct mm_struct *m1;
    m1 =c_mm;
 //   getmm(mm);
    pgd=pgd_offset(m1,vaddr);
    if(pgd_none(*pgd))
    {
        return -1;
    }

    p4d=p4d_offset(pgd,vaddr);
    if(p4d_none(*p4d))
    {
        return -1;
    }

    pud=pud_offset(p4d,vaddr);
    if(pud_none(*pud))
    {
        printk("not mapped in pud\n");
        return -1;
    }

    pmd=pmd_offset(pud,vaddr);
    if(pmd_none(*pmd))
    {
        return -1;
    }


    pte=pte_offset_kernel(pmd,vaddr);
    printk("1 pte_offset=0x%lx,pte_index=%lu\n",pte_val(*pte),pte_index(vaddr));
    unsigned long  *pte_value;
    pte_value =(unsigned long *)pte;
    *pte_value = phy_addr;               //disable the page
    __flush_tlb_all();
    if(pte_none(*pte))
    {
        return -1;
    }

    page_addr=pte_val(*pte)&PAGE_MASK;
    page_offset=vaddr&~PAGE_MASK;
    paddr=page_addr|page_offset;

   flush_cache_mm(m1);
   flush_tlb_mm(m1);
    return paddr;
}


struct PageInfo pinfo[100];

//the function works to disable the application pages except the tcs, ssa and first responder page
static unsigned long laucher_disable_page(unsigned long app_baseaddr){

   unsigned long page_size = 0x1000;
   //
   unsigned long current_vaddr;
   int i = 0;
   for(page_size=0; page_size<app_size; page_size= page_size+0x1000)
   {

        current_vaddr = app_baseaddr + page_size;

        //left the random page can be using.
        if(current_vaddr = &random_data_page){
            break;
        }

        disable_using_page(current_vaddr, pinfo[i]);
         i++;
   }

   //the first 3 epc pages need keep working at first stages.
   for(page_size=0x3000; page_size<erlange; page_size= page_size+0x1000)
   {

        current_vaddr = secs_addr + page_size;
        disable_using_page(current_vaddr, pinfo[i]);
        i++;
   }



   return 0;
}

static unsigned long monitor_enable_page(struct PageInfo pinfo[index]){

    int i;
    for(i=0; i<index; i++)
    {
            enable_using_page(pinfo[i].vir_addr, pinfo[i].phy_addr);
    }
    return 0;

}


static void create_random_data_page(int *data){
   int i =0;
   for (i=0; i<1024; i++){
	get_random_bytes(&data[i],sizeof(int));
   }

}

void clear_ifg(void *info)
{
	__asm("cli \n"
		:
		:
		:
		);
     unsigned int cpu;
     cpu = task_cpu(current);
     printk("Trampoline: %x",cpu);
}

void start_ifg(void *info)
{
	__asm("sti \n"
		:
		:
		:
		);
}


static void trampoline1_sera(void){
    int i;
    app_pid = 7135; //for test;
    c_mm= (struct mm_struct*)kmalloc(sizeof(struct mm_struct),GFP_KERNEL);

    getmem_space(c_mm);

    unsigned long *taddr;
    taddr = (unsigned long)&trampoline1_sera;
    vaddr = &(*taddr);
    //create a page with rondom data
    //random page should be create in enclave application and heere is for demo
    create_random_data_page(random_data_page);
  
    //test the random page, -ok
/*
    for(i=0;i<1024;i++)
    {
       printk("%d ", random_data_page[i]);
    }
*/

    //disable the users application;
//* laucher_disable_page(app_baseaddr);

    //jump to the enclave entry;

//    char *argv[] = {"/bin/bash /home/ray/sgx/sgx-step/app/ssdemo3/run.sh",NULL,};
//    static char *envp[]={"HOME=/","TERM=linux","PATH=/sbin:/bin:/usr/sbin:/usr/bin",NULL};
    
    clear_ifg(NULL);
//    on_each_cpu(clear_ifg, NULL,1);
    char cmd[] = "/home/ray/sgx/sgx-step/app/ssdemo3/app";
    char *argv[]={cmd, NULL};
    static char *envp[]={"HOME=/","TERM=linux","PATH=/sbin:/bin:/usr/sbin:/usr/bin",NULL};

    int err = call_usermodehelper(cmd, argv, envp, 2);
    start_ifg(NULL);

//    on_each_cpu(start_ifg, NULL,1); //close the all Maskable interrupt on each cpu, but this will casue halting

//  monitor_enable_page(pinfo);    // this function move to monitor handler.

    printk("call user application err %d\n",err);
   
    printk("end the user call..\n");
    kfree(c_mm);
   return;
}

static int smid_trampoline(struct inode *inode, struct file *file){
 //   unsigned long vaddr=0;
	get_pgtable_macro();
	unsigned long *taddr;
	taddr = (unsigned long)&trampoline1_sera;
	vaddr = &(*taddr);

	unsigned long phys = virt_to_phys(taddr);
	printk("trampoline_sera phys addr:  %lx\n",phys);
	unsigned long virt = phys_to_virt(phys);
	printk("trampoline_sera virt addr:  %lx\n",virt);
	outb(0,0xb2);
	get_phys_addr(vaddr);
	trampoline1_sera();
	free_page(vaddr);
	return 0;
}

static struct file_operations v2p_flops = {
    .owner  =   THIS_MODULE,
    .open   =   smid_trampoline,     
//    .write  =   smid_write,
};


static int __init v2p_init(void)
{
    int ret;
    
    ret = register_chrdev(TRI_MODE_DRI,DEVICE_NAME, &v2p_flops);
    if (ret < 0) {
      return ret;
    }
    return 0;
}


static void __exit v2p_exit(void)
{
    unregister_chrdev(TRI_MODE_DRI, DEVICE_NAME);
	return 0;
}

module_init(v2p_init);
module_exit(v2p_exit);
EXPORT_SYMBOL(trampoline1_sera);
