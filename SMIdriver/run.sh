#!/bin/bash

echo "make smi driver module"
make

echo "complier the test code"
gcc smitest.c -o smitest

echo "insmod smi driver"
sudo insmod smid.ko

sudo mknod /dev/smidrive c 231 0

echo "run test"
sudo ./smitest

echo "remove smi driver"
sudo rmmod smid
sudo rm -rf /dev/smidrive

echo "Hello, world!"
