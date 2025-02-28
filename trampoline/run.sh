#!/bin/bash

echo "make smi driver module"
make

echo "complier the test code"
gcc trampoline1.c -o trampoline1

echo "insmod smi driver"
sudo insmod trampoline1.ko

sudo mknod /dev/smitdrive c 231 0

echo "run test"
sudo ./smitest

echo "remove smi driver"
sudo rmmod trampoline1
sudo rm -rf /dev/smitdrive

echo "Hello, world!"
