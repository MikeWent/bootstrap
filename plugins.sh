#!/bin/zsh
source colors.sh
printf "${INFO} Downloading plugins...\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
echo
printf "Add this to your plugins list: ${CYAN}
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting${NC}\n"
printf "${CONFIRM} Ready? [press any key] "
read -n 1
nano ~/.zshrc
source ~/.zshrc
