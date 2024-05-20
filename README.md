# Terminal

## Usage
1. Install git
```bash
sudo apt-get install git -y
``` 
2. [Create and add a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
cat ~/.ssh/id_ed25519.pub
# Copy the key to your clipboard and add it to your GitHub account
```
3. Clone the repository
```bash
git clone git@github.com:stijntratsaertit/terminal.git && cd terminal
```
4. Run the installation script
```bash
./install_zsh.sh
```
5. Upon completion, install the Spaceship theme
```bash
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
6. Install the zsh plugins
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```
7. Finalize the installation
```bash
source ~/.zshrc
cd ~
```
