#!/bin/bash
set -e

cd "$(dirname "$0")"

OS="$(uname -s)"

# Install dependencies
case "$OS" in
  Linux)
    sudo apt update && sudo apt install -y \
        curl \
        zsh \
        git \
        fzf
    ;;
  Darwin)
    # Install Homebrew if it isn't available yet
    if ! command -v brew >/dev/null 2>&1; then
      for brew_bin in /opt/homebrew/bin/brew /usr/local/bin/brew; do
        [ -x "$brew_bin" ] && eval "$("$brew_bin" shellenv)" && break
      done
    fi
    if ! command -v brew >/dev/null 2>&1; then
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      for brew_bin in /opt/homebrew/bin/brew /usr/local/bin/brew; do
        [ -x "$brew_bin" ] && eval "$("$brew_bin" shellenv)" && break
      done
    fi
    # zsh and curl ship with macOS
    brew install git fzf
    ;;
  *)
    echo "Unsupported OS: $OS" >&2
    exit 1
    ;;
esac

# Install oh-my-zsh if the folder doesn't exist
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install powerline-fonts
git submodule update --init --recursive
./powerline-fonts/install.sh

# Create symlink
ln -s -f "$(pwd)/.zshrc" ~/.zshrc

# Change default shell
ZSH_PATH="$(command -v zsh)"
if [ "$SHELL" != "$ZSH_PATH" ]; then
  if ! grep -qx "$ZSH_PATH" /etc/shells; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells >/dev/null
  fi
  chsh -s "$ZSH_PATH"
fi

# Load shell
exec zsh
