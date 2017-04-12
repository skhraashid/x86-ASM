#!/bin/bash
echo '[+] Assembly with NASM ...'
nasm -f elf32 -o $1.o $1.nasm

echo '[+] Linking ...'
ld -o $1 $1.o
echo '[+] Done'
