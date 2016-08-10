# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export MAIL42=ale-batt@student.42.fr
export USER42=ale-batt
export AGNOSTER_USER=ale-batt

export DOTFILES="$HOME/dotfiles"

ZSH_THEME="agnoster"
DEFAULT_USER="aera_style"

# Oh-my-zsh plugin list
plugins=(git ruby sublime zsh-syntax-highlighting alias-tips)
source $ZSH/oh-my-zsh.sh

# My aliases
source $DOTFILES/alias

# Path for brew 
export PATH="/usr/local/sbin:$PATH"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Add my script to the PATH
export PATH="$PATH:$DOTFILES/script"

# Pour GVM
export GOPATH="$HOME/golang"
export PATH="$PATH:$GOPATH/bin"

eval $(docker-machine env default)

eval $(thefuck --alias)
