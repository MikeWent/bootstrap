#!/bin/bash

source colors.sh
if [ ! -n "$(pacman -Qs trizen)" ]; then
    printf "${INFO} Downloading trizen...\n"
    git clone https://aur.archlinux.org/trizen.git
    cd trizen
    makepkg -si
    printf "${SUCCESS} Installed trizen\n"
else
    printf "${ERROR} Trizen is already installed\n"
fi
