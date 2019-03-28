# Assembly X86_64
## Table of Contents  
- [Nasm installation](#nasm-installation)  
  * [Arch based system](#arch-based-systems)  
  * [Debian based system](#debian-based-systems)  
- [How to run?](#how-to-run)  
## Nasm installation  
### (Arch based systems)  
```
sudo pacman -S nasm
```
### (Debian based systems) 
```
sudo apt-get install nasm
```
## How to run?  
```
nasm -f elf64 <name>.asm
ld <name>.o -o <name>
./<name>
```
