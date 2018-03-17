#!/bin/bash
source colors.sh
if [ ! -d ~/.oh-my-zsh ]; then
    printf "${INFO} Downloading oh-my-zsh...\n"
    wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O robbyrussell-install.sh
    printf "${GRAY}\n"
    cat robbyrussell-install.sh
    printf "${NC}\n"
    printf "${INFO} Run this script? [press any key] "
    read -n 1
    bash ./robbyrussell-install.sh
else
    printf "${ERROR} oh-my-zsh is already installed\n"
fi
