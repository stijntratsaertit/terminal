# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load.
ZSH_THEME="spaceship"

# Set auto-update behavior
zstyle ':omz:update' mode auto

# Set auto-update frequence (in days)
zstyle ':omz:update' frequency 14

# Set list of plugins to load
plugins=(
terraform
git
docker
kubectl
pyenv
python
docker-compose
zsh-syntax-highlighting
zsh-autosuggestions
fzf
)

# Set spaceship theme options
SPACESHIP_DOCKER_SHOW=false
