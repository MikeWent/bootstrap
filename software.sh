#!/bin/bash

# Packages
packages="mc wget curl bash zsh zip unzip \
gnupg nano sudo gnome-screenshot git xclip nload \
htop encfs sshfs"
debian="python3 python3-dev python3-pip \
openssh-client openssh-server"
arch="python python-pip openssh"

if [ -f /etc/debian_version ] ; then
    echo "Ubuntu/Debian detected"
    sleep 1
    echo "Running full upgrade..."
    sudo apt update && sudo apt upgrade
    echo "Installing software..."
    sudo apt install $packages $debian
    echo "Your Ubuntu/Debian is ready!"
fi

if [ -f /etc/arch-release ] ; then
    echo "Arch Linux detected"
    sleep 1
    echo "Running full upgrade..."
    sudo pacman -Syu
    echo "Installing software..."
    sudo pacman -S $packages $arch
    echo "Your Arch Linux is ready!"
fi
