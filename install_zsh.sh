#!/bin/bash

# Install dependencies
sudo apt update && sudo apt install -y \
    curl \
    zsh \
    git \
    fzf

# Install oh-my-zsh if the folder doesn't exist
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install powerline-fonts
git submodule update --init --recursive
./powerline-fonts/install.sh

# Create symlink
ln -s -f $(pwd)/.zshrc ~/.zshrc

# Change default shell
chsh -s $(which zsh)

# Load shell
zsh
