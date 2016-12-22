#!/bin/bash

# install pathogen (plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-sensible.git

#install plugins
git submodule add git://github.com/ervandew/supertab.git bundle/supertab
git submodule add git://github.com/terryma/vim-multiple-cursors.git bundle/vim-multiple-cursors
git submodule add git://github.com/itchyny/lightline.vim.git bundle/lightline.vim
git submodule add git://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
