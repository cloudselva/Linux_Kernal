# Linux_Kernal

### Making Operting System Linux kernal

selvaraj@selvaraj-ubuntu:~/kernal$ ls                                                                                                                                   

boot.asm  grub.cfg  kernel.c  linker.ld


### COMPILATION TIME							

Build the boot.asm into an object file

selvaraj@selvaraj-ubuntu:~/kernal$ nasm -f elf32 boot.asm -o boot.o

Build the kernal.c into an object file

selvaraj@selvaraj-ubuntu:~/kernal$ gcc -m32 -c kernel.c -o kernel.o

Link both object files and create the executable program(kernal)

selvaraj@selvaraj-ubuntu:~/kernal$ ld -m elf_i386 -T linker.ld -o kernel boot.o kernel.o

Now complied file in same working directory

selvaraj@selvaraj-ubuntu:~/kernal$ ls

boot.asm  boot.o  grub.cfg  kernel  kernel.c  kernel.o  linker.ld

Complied file your kernal and Boot so on.


###  BUILDING BOOTABLE ISO IMAGE

Create a Stage environment on following Envirnoment

selvaraj@selvaraj-ubuntu:~/kernal$ mkdir -p iso/boot/grub

Let's double-check the kernal is mutiboot file type

selvaraj@selvaraj-ubuntu:~/kernal$ grub-file --is-x86-multiboot kernel

Now, copy the kernel into your iso/boot directory:

selvaraj@selvaraj-ubuntu:~/kernal$ cp kernel iso/boot/

And, copy your grub.cfg into the iso/boot/grub directory:

selvaraj@selvaraj-ubuntu:~/kernal$ cp grub.cfg iso/boot/grub/

Make the Final ISO image pointing to your iso subdirectory in your current working directory path

selvaraj@selvaraj-ubuntu:~/kernal$ grub-mkrescue -o selvarajkuppusamylinux_23-Apr-2021.iso iso/

xorriso 1.5.2 : RockRidge filesystem manipulator, libburnia project.

Drive current: -outdev 'stdio:selvarajkuppusamylinux_23-Apr-2021.iso'

Media current: stdio file, overwriteable

Media status : is blank

Media summary: 0 sessions, 0 data blocks, 0 data,  131g free

Added to ISO image: directory '/'='/tmp/grub.1c9cgt'

xorriso : UPDATE :     290 files added in 1 seconds

Added to ISO image: directory '/'='/home/selvaraj/kernal/iso'

xorriso : UPDATE :     294 files added in 1 seconds

xorriso : NOTE : Copying to System Area: 512 bytes from file '/usr/lib/grub/i386-pc/boot_hybrid.img'

ISO image produced: 2495 sectors

Written to medium : 2495 sectors at LBA 0

Writing to 'stdio:selvarajkuppusamylinux_23-Apr-2021.iso' completed successfully.

Now check iso image create or not

selvaraj@selvaraj-ubuntu:~/kernal$ ls

boot.asm  boot.o  grub.cfg  iso  kernel  kernel.c  kernel.o  linker.ld  selvarajkuppusamylinux_23-Apr-2021.iso

Find!

Next text your Linux kernal in Virtual box or any suitable application

