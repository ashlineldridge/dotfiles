#!/usr/bin/env bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Set up CommandT plugin
cd ~/.vim/bundle/command-t/ruby/command-t/
ruby extconf.rb
make
