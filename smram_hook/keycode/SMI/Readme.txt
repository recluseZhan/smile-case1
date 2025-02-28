#preparing work, using the Intel DCI channel to insert code to SMRAM

1) every binary segments are inserted into corresponding SMI entry.


2) change the cr3 and vaddr at core 0 segment. 
   cr3   offset:0x8     size:0x8     value: (cr3-PAGE_OFFSET1)
   vaddr offset:0x3e    size:0x8     value: (vaddr)


3) change the value-pre-context ()
  pre-context offset: 0x5 size:0xa  value: 48 b8 xx xx xx xx xx xx xx xx

4) core 2-3-wait file insert to two cores' entry.


#the workflow                                               ----SMM  ....Host
*************************************************************************************
core0 [---remap-->|++TLB remap+++|...........enclave.................................>]

core1 [---wait--->|-------read----->|---rollback-->|---loop read------>|....host.....>]

core2 [---wait------------------------------------>|........................host.....>]

core3 [---wait------------------------------------>|........................host.....>]
*************************************************************************************
so core1 has a longest time to stay in SMM. more cores except core0 and core1 has the similarly workflow as the core2 and core3.


#Note that, we just develop a prototype, thus, some complex steps like automaticly sharing a virual address and fetching out the corresponding CR3 are missed right now, and it will be are follow-up work. 


#To implement a test enclave, we build the sgx platform with sgx-step project.

#To get the cr3 and virtual, we install the virtual to physical address translate module, and task_struct travese program. 


#In sgx AEX trampoline.S, we add the TLB instructions and because the sgx-step driver is complied into a driver, which is installed  in a fixed memory space. Then, the program in SMM can replace the value in such instructions with a fixed address. 









