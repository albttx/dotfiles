
CONFIGDIR=$(HOME)/dotfiles

.PHONY:	ohmyzsh brew link source
# install oh-my-zsh && syntax highlighting plugin
all:
	mkdir ~/.vim/.swp
	source ~/.zshrc

ohmyzsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH}/custom/plugins/zsh-syntax-highlighting

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
	ln -Fs $(CONFIGDIR)/vim			$(HOME)/.vim
	ln -fs $(CONFIGDIR)/vim/vimrc		$(HOME)/.vimrc
	ln -fs $(CONFIGDIR)/zshrc		$(HOME)/.zshrc
	ln -fs $(CONFIGDIR)/alias		$(HOME)/.alias
	ln -fs $(CONFIGDIR)/tmux/tmux.conf	$(HOME)/.tmux.conf
	ln -Fs $(CONFIGDIR)/irssi		$(HOME)/.irssi
	ln -Fs $(CONFIGDIR)/weechat		$(HOME)/.weechat

