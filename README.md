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
1. Clone the repository
```bash
git clone git@github.com:stijntratsaertit/terminal.git && cd terminal
```
3. Run the script
```bash
./setup.sh
```
