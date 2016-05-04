#!/usr/bin/ruby

def link_value(name)
	system "mv ~/.#{name} ~/.#{name}.old"
	system "ln -s #{__dir__}/#{name} #{ENV['HOME']}/.#{name}"
end

def install_ohmyzsh
	# install oh my zsh
	system "sh -c \"$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\""

	# install zsh-plugin for syntax highlighting
	system "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
end

def install_neovim
	system "brew install neovim"
	system "brew tap neovim/homebrew-neovim"
	system "brew install --HEAD neovim"
end

def brew_i_package
	pagage = ['docker', 'docker-machine', 'node']
	package += ['tig', 'tmux', 'tree', 'htop', 'sl', 'tty_clock', 'colordiff']
	package += ['cask']
	system "brew install #{package.join(" ")}"
end

# ~~~~~~~~~~~ START ~~~~~~~~~~~~ #

link_value("zshrc")
link_value("vimrc")
link_value("myvimrc")
link_value("alias")
puts "OK - Symlink Created !"


#system "rm -rf ~/.atom"
#system "git clone http://github.com/ale-batt/dotatom ~/.atom"
