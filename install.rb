#!/usr/bin/ruby

# system "sh -c \"$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\""
puts "OK - Install Oh-My-Zsh ..."

def link_value(name)
	system "mv ~/.#{name} ~/.#{name}.old"
	system "ln -s #{__dir__}/#{name} #{ENV['HOME']}/.#{name}"
end
link_value("zshrc")
link_value("vimrc")
link_value("myvimrc")
link_value("alias")
puts "OK - Symlink Created !"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

system "rm -rf ~/.atom"
system "git clone http://github.com/ale-batt/dotatom ~/.atom"
