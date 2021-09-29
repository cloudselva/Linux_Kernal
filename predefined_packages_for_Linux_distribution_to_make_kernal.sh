#!/bin/sh

#upgrade system
echo "Your system is upgradingi!..."
sudo apt upgrade
#update system
echo "Your system is updating!...."
sudo apt update
#binutils
echo "Installing binutils!...."
sudo apt install binutils
#gcc
echo "Installing gcc!....."
sudo apt install gcc
#grub-common
echo "Installing gcc-common!....."
sudo apt install grub-common
#make
echo "Installing make!....."
sudo apt install make
#nasm
echo "Installing nasm!......"
sudo apt install nasm
#xorriso
echo "Installing xorriso!...."
sudo apt install xorriso
echo "linux distribution like kernal making predefined packages are successfully installed."

