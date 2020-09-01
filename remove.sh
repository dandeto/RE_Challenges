#!/bin/bash

#remove radare2 packages
r2pm -u r2dec
r2pm -u r2ghidra-dec

#remove packages installed from kali repos
sudo apt remove gccgo pkg-config libssl-dev bc libreoffice python3-venv cmake bison mingw-w64 -y

#remove all packages that remain that are no longer needed
sudo apt autoremove -y

#remove all manually installed tools
cd ~/
rm /usr/bin/cutter
rm ~/cutter
rm -rf ~/ghidra_9.0.4
rm /usr/bin/ghidra
rm -rf ~/GdbShellPipe
rm -rf ~/radare2
rm -rf ~/peda
rm -rf ~/RE_Challenges
