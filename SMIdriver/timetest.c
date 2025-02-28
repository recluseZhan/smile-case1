#include <fcntl.h>
#include <stdio.h>

static int i= 0, j = 0;

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


int main(void)
{
    unsigned long a[1000];

    unsigned long t1, t2;
    unsigned long t;
    for( i= 0; i<1000000; i++)
    {
	
   	 t1 = read_cpu_cycle();
         int k;
         for(k = 0; k <100000; k++)
         {
	      j++;	
	 }
	 t2 = read_cpu_cycle();
         t = t2-t1;
         if(t>800000)
	 	printf("%d, %ld \n", i, t2-t1);
    }

    return 0;
}
