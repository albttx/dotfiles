# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Mes alias sont dans .myzshrc
source ~/.alias
export MAIL42=ale-batt@student.42.fr
export USER42=ale-batt
export AGNOSTER_USER=ale-batt

# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_THEME="agnoster"
DEFAULT_USER="aera_style"

plugins=(git)
plugins=(git ruby sublime zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Mes alias sont dans .myzshrc

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(docker-machine env default)"

# Pour GVM
[[ -s "/Users/albertlebatteux/.gvm/scripts/gvm" ]] && source "/Users/albertlebatteux/.gvm/scripts/gvm"
