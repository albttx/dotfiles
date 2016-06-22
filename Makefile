
CONFIGDIR=~/config

.PHONY:	ohmyzsh brew link source
# install oh-my-zsh && syntax highlighting plugin
source:
	env
	source ~/.zshrc

ohmyzsh:
	sh -c `curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh`
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# If OSX install brew and some nice soft
brew:
	if [ -x brew ] ; then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		echo "Updating && upgrading brew..."
		brew update && brew upgrade
	fi
	brew install docker docker-machine docker-compose
	brew install tig tmux tree htop sl tty_clock colordiff vim
	brew install cask
	brew tap homebrew/services

link:
	rm -rf ~/.vim ~/.vimrc
	ln -s $(CONFIGDIR)/vim ~/.vim
	ln -s $(CONFIGDIR)/vim/vimrc ~/.vimrc
	rm -rf ~/.zshrc
	ln -s $(CONFIGDIR)/zsh/zshrc ~/.zshrc

