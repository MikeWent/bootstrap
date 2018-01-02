#!/bin/bash
mkdir ~/Develop
git clone git@github.com:MikeWent/dotfiles.git ~/Develop/dotfiles
cd ~/Develop/dotfiles
./install.sh
echo "Dotfiles installed"
