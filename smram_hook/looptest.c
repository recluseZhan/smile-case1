#include "smi3.h"

int loop1(void){
	
	int i,j;
	int a=0;
	for(i=0;i<100000;i++){
	 for(j=0;j<100000;j++)
	 {
		if(j%2 == 0)
		   a=1;
		else 
		   a=0;
         }
	}


//	for(i=0; i<2;i++)
//		a++;
   return a;
}


int loop2(void){
	
	int i,j;
	int a=0;
	for(i=0;i<100000;i++){
	 for(j=0;j<10000;j++)
	 {
		if(j%2 == 0)
		   a=1;
		else 
		   a=0;
         }
	}


//	for(i=0; i<2;i++)
//		a++;
   return a;
}


