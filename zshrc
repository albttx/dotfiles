# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export MAIL42=ale-batt@student.42.fr
export USER42=ale-batt
export AGNOSTER_USER=ale-batt

export DOTFILES="$HOME/dotfiles"

ZSH_THEME="agnoster"
DEFAULT_USER="aera_style"

# Oh-my-zsh plugin list
plugins=(git ruby docker zsh-syntax-highlighting alias-tips)
source $ZSH/oh-my-zsh.sh

# My aliases
source $DOTFILES/alias

42Only   export PATH="$HOME/.brew/bin:$PATH"
homeOnly export PATH="/usr/local/sbin:$PATH"

# PATH for RVM 
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.gem/bin"

# PATH for Personal script
export PATH="$PATH:$DOTFILES/script"

# PATH for GO 
export GOPATH="$HOME/golang"
export PATH="$PATH:$GOPATH/bin"
#export GOROOT="$GOPATH"

# PATH for curl (with http2)
export PATH="/usr/local/opt/curl/bin:$PATH"

42Only export MACHINE_STORAGE_PATH="/goinfre/machine"
42Only export MACHINE_STORAGE_PATH="/sgoinfre/goinfre/Perso/ale-batt/machine/"

# Set the docker environment variable needed
eval $(docker-machine env default)

# Load Homebrew config script
42Only source $HOME/.brewconfig.zsh
