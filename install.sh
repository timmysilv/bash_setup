#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

rm -rf ~/dotfiles/.git/
cp ~/dotfiles/.* ~/
source ~/.bashrc
