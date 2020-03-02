# -*- mode: sh -*-

ZSH_THEME="agnoster"
# DEFAULT_USER="albttx"

export FZF_TMUX=0
export FZF_BASE="$(whereis fzf)"
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"

# Oh-my-zsh plugin list
plugins=(
	git
	aws
	docker
	vagrant
	fzf
	zsh-syntax-highlighting
	zsh-autosuggestions
	alias-tips
)
source $ZSH/oh-my-zsh.sh

# My aliases
source $HOME/.alias

42Only export MACHINE_STORAGE_PATH="/sgoinfre/goinfre/Perso/ale-batt/machine/"

run-fzf-widget() fzf
zle -N run-fzf-widget

bindkey -e
bindkey '^f' run-fzf-widget

# alias tfzf='fzf-tmux'

# Set the docker environment variable needed
#eval $(docker-machine env default)

eval "$(direnv hook zsh)"


if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/nomad nomad

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
