# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export MAIL42=ale-batt@student.42.fr
export USER42=ale-batt
export AGNOSTER_USER=ale-batt

export DOTFILES="$HOME/dotfiles"
export LANG=en

export GPG_TTY=$(tty)

ZSH_THEME="agnoster"
DEFAULT_USER="aera_style"

# Oh-my-zsh plugin list
plugins=(git ruby docker zsh-syntax-highlighting alias-tips)
source $ZSH/oh-my-zsh.sh

# My aliases
source $DOTFILES/alias

42Only   export PATH="$HOME/.brew/bin:$PATH"
VPOnly   export PATH="$HOME/.brew/bin:$PATH"
homeOnly export PATH="/usr/local/sbin:$PATH"

# PATH for RVM 
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.gem/bin"

# PATH for Personal script
export PATH="$PATH:$DOTFILES/script"

# PATH for GO 
export GOPATH="$HOME/golang"
export GOPROFILE="$GOPATH/src/github.com/ale-batt"
export PATH="$PATH:$GOPATH/bin"
#export GOROOT="$GOPATH"

# PATH for curl (with http2)
export PATH="/usr/local/opt/curl/bin:$PATH"

VPOnly export MACHINE_STORAGE_PATH="/goinfre/machine"
42Only export MACHINE_STORAGE_PATH="/sgoinfre/goinfre/Perso/ale-batt/machine/"

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude node_modules --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--preview 'chroma {}'"
export FZF_TMUX=1

run-fzf-widget() fzf
zle -N run-fzf-widget

bindkey -e
bindkey '^f' run-fzf-widget

alias tfzf='fzf-tmux'

# Set the docker environment variable needed
eval $(docker-machine env default)

# Load Homebrew config script
42Only source $HOME/.brewconfig.zsh
