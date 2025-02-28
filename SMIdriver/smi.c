#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/io.h>

#define    HELLO_MAJOR     231
#define    DEVICE_NAME     "smidrive"

unsigned long read_cpu_cycle(void)
{
    unsigned int lo,hi;
    unsigned long time;
    __asm__ __volatile__(
        "rdtsc":"=a"(lo),"=d"(hi)
    );
    time = ((unsigned long)hi<<32|lo);
    return time;

}

static int smid_trigger(struct inode *inode, struct file *file){
    int i = 0;
//    for(i=0; i<100;i++)
    unsigned long t1, t2, s1, s2;
    int j = 0; 
    int k = 0;	
   
    for(k =0; k<10000; k++)
    {
    	t1 = read_cpu_cycle();
   	 for(i =0; i<100000;i++)
    	{
    		j++;
    	}
 //       j = k;
 //       __asm__ __volatile__("mov %%cr3, %%rax\n\t":::);
   	 outb(0x31, 0xb2);
   	 t2 = read_cpu_cycle();
   	 printk(KERN_EMERG DEVICE_NAME "%d without smi %d.\n", k, t2-t1);
    }
/*    s1 = read_cpu_cycle();
    outb(0xd5, 0xb2);
    s2 = read_cpu_cycle();
    printk(KERN_EMERG DEVICE_NAME "2 with smi %d.\n", s2-s1);
    t1 = read_cpu_cycle();
    outb(0x1, 0xb2);
    t2 = read_cpu_cycle();
    printk(KERN_EMERG DEVICE_NAME "3 without smi %d.\n", t2-t1);
*/   
    return 0;
}


static struct file_operations smid_flops = {
    .owner  =   THIS_MODULE,
    .open   =   smid_trigger,     
//    .write  =   smid_write,
};

static int __init smid_init(void){
    int ret;
    
    ret = register_chrdev(HELLO_MAJOR,DEVICE_NAME, &smid_flops);
    if (ret < 0) {
      printk(KERN_EMERG DEVICE_NAME " can't register major number.\n");
      return ret;
    }
    printk(KERN_EMERG DEVICE_NAME " initialized.\n");
    return 0;
}

static void __exit smid_exit(void){
    unregister_chrdev(HELLO_MAJOR, DEVICE_NAME);
    printk(KERN_EMERG DEVICE_NAME " removed.\n");
}

module_init(smid_init);
module_exit(smid_exit);
MODULE_LICENSE("GPL");
