export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Path to your oh-my-zsh installation.
export AGNOSTER_USER=albttx
export ZSH=$HOME/.oh-my-zsh

# PATH for GO 
export GOPATH="$HOME/golang"
export GOPROFILE="$GOPATH/src/github.com/albttx"
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE=on

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude node_modules --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--preview 'chroma {}'"
export FZF_TMUX=1


export DOTFILES="$HOME/dotfiles"
export LANG=en

export GPG_TTY=$(tty)

export PATH="/usr/local/sbin:$PATH"
# PATH for RVM 
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.gem/bin"

# PATH for Personal script
export PATH="$PATH:$DOTFILES/script"

# PATH for curl (with http2)
export PATH="/usr/local/opt/curl/bin:$PATH"


