#!/bin/bash
source colors.sh
printf "${INFO} Downloading dotfiles...\n"
mkdir ~/Develop
git clone git@github.com:MikeWent/dotfiles.git ~/Develop/dotfiles
cd ~/Develop/dotfiles
printf "${GRAY}\n"
cat ./install.sh
printf "${NC}\n"
printf "${CONFIRM} Run install script? [press any key] "
read -n 1
./install.sh
printf "${SUCCESS} Dotfiles installed\n"
