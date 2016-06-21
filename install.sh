#!/bin/bash

CONFIGDIR=~/config

# install oh-my-zsh && syntax highlighting plugin
if ! [ -d ~/.oh-my-zsh ]; then
	sh -c \"$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

exit
# If OSX install brew and some nice soft
if [[ $OSTYPE == darwin*  ]]; then
	if [ -x brew ] ; then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		echo "Updating && upgrading brew..."
		brew update && brew upgrade
	fi
	brew install docker docker-machine docker-compose
	brew install tig tmux tree htop sl tty_clock colordiff
	brew install cask
	brew tap homebrew/services
else
	echo "I should set all the apt-get install ..."
fi


