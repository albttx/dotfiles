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

homeOnly export PATH="$HOME/.brew/bin:$PATH"
42Only   export PATH="/usr/local/sbin:$PATH"

# PATH for RVM 
export PATH="$PATH:$HOME/.rvm/bin"

# PATH for Personal script
export PATH="$PATH:$DOTFILES/script"

# PATH for GO 
export GOPATH="$HOME/golang"
export PATH="$PATH:$GOPATH/bin"

42Only export MACHINE_STORAGE_PATH="/goinfre/machine"
eval $(docker-machine env default)
