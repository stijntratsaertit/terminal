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

# Create symlinks
ln -s -f $(pwd)/.zshrc ~/.zshrc

# Change shell
zsh

# Install spaceship theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Finalize installation
source ~/.zshrc
cd ~/
