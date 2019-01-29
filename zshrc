ZSH_THEME="agnoster"
DEFAULT_USER="aera_style"

# Oh-my-zsh plugin list
plugins=(git docker zsh-syntax-highlighting alias-tips)
source $ZSH/oh-my-zsh.sh

# My aliases
source $HOME/.alias

42Only export MACHINE_STORAGE_PATH="/sgoinfre/goinfre/Perso/ale-batt/machine/"

run-fzf-widget() fzf
zle -N run-fzf-widget

bindkey -e
bindkey '^f' run-fzf-widget

alias tfzf='fzf-tmux'

# Set the docker environment variable needed
#eval $(docker-machine env default)

eval "$(direnv hook zsh)"

# Load Homebrew config script
42Only source $HOME/.brewconfig.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
