
CONFIGDIR=$(HOME)/dotfiles

.PHONY:	ohmyzsh brew link source
# install oh-my-zsh && syntax highlighting plugin
all:
	mkdir ~/.vim/.swp
	source ~/.zshrc

ohmyzsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH}/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

link:
	ln -fs $(CONFIGDIR)/vimrc			$(HOME)/.vimrc
	ln -fs $(CONFIGDIR)/zshrc			$(HOME)/.zshrc
	ln -fs $(CONFIGDIR)/gitconfig		$(HOME)/.gitconfig
	ln -fs $(CONFIGDIR)/tmux/tmux.conf	$(HOME)/.tmux.conf
	ln -Fs $(CONFIGDIR)/irssi			$(HOME)/.irssi
	ln -Fs $(CONFIGDIR)/weechat			$(HOME)/.weechat
	ln -Fs $(CONFIGDIR)/xprofile		$(HOME)/.xprofile
