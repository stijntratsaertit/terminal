# Terminal

## Usage
Works on Linux (Debian/Ubuntu, via `apt`) and macOS (via Homebrew, which the install script sets up if it's missing).

1. Install git

Linux:
```bash
sudo apt-get install git -y
```
macOS:
```bash
xcode-select --install
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
4. Run the installation script (installs the dependencies, oh-my-zsh, the Spaceship theme and the zsh plugins)
```bash
./install_zsh.sh
```
5. Finalize the installation
```bash
source ~/.zshrc
cd ~
```
