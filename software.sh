#!/bin/bash

# Packages
packages="mc wget curl bash zsh zip unzip \
gnupg nano sudo git nload htop"
debian="python3 python3-dev python3-pip \
openssh-client openssh-server"
arch="python openssh"

source colors.sh
if [ -f /etc/debian_version ] ; then
    printf "${INFO} ${ORANGE}Ubuntu/Debian${NC} detected\n"
    sleep 1
    printf "${INFO} Running full upgrade...\n"
    apt update && sudo apt upgrade
    printf "${INFO} Installing software...\n"
    apt install $packages $debian && printf "${SUCCESS} Your Ubuntu/Debian is ready!\n" && exit 0
fi

if [ -f /etc/arch-release ] ; then
    printf "${INFO} ${CYAN}Arch Linux${NC} detected\n"
    sleep 1
    printf "${INFO} Running full upgrade...\n"
    pacman -Syu
    printf "${INFO} Installing software...\n"
    pacman -S $packages $arch && printf "${SUCCESS} Your Arch Linux is ready!\n" && exit 0
fi

printf "${ERROR} Some error occured\n"
exit 1
