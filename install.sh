#!/bin/bash

#essential
sudo -E apt-get update
sudo -E apt-get install software-properties-common 
sudo -E add-apt-repository ppa:neovim-ppa/unstable
sudo -E apt-get update
sudo -E apt-get -y install git zsh curl tmux vim neovim

#oh-my-zsh
sh -c "$(curl -fsSLk https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd install;
./link.sh


