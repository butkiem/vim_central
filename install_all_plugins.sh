#!/bin/bash

cd
#ln -s ~/vim_github ~/.vim

# install pathogen (plugin manager)
mkdir -p ~/vim_github/autoload ~/vim_github/bundle && curl -LSso ~/vim_github/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/vim_github/bundle && git clone https://github.com/tpope/vim-sensible.git

#install plugins
cd ~/vim_github/
git submodule add --force git://github.com/ervandew/supertab.git bundle/supertab
git submodule add --force git://github.com/terryma/vim-multiple-cursors.git bundle/vim-multiple-cursors
git submodule add --force git://github.com/itchyny/lightline.vim.git bundle/lightline.vim
git submodule add --force git://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
git submodule add --force git://github.com/tomasr/molokai.git bundle/vim-colors-molokai

git submodule init
git submodule update
