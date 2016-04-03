#!/bin/bash

mv ~/.vimrc ~/.vimrc.old
mv ~/.myvimrc ~/.myvimrc.old
mv ~/.alias ~/.alias.old
mv ~/.zshrc ~/.zshrc.old


ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/myvimrc ~/.myvimrc

ln -s ~/.vim/zshrc ~/.zshrc
ln -s ~/.vim/alias ~/.alias

printf "SymLink SET !\n"
