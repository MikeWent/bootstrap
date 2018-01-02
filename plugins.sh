#!/bin/bash
echo "Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "zsh-autosuggestions zsh-syntax-highlighting"
read -n 1
nano ~/.zshrc
