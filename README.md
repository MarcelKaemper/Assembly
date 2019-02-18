# Assembly  
## Nasm installation  
```
(Arch based systems)
sudo pacman -S nasm
(Debian based systems)
sudo apt-get install nasm
```
## How to run?  
```
nasm -f elf64 <name.asm>
ld <name.o> -o <name>
./<name>
```
