#!/bin/bash

cd ~/.vim
##  Update pathogen from github raw file if needed
wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O autoload/pathogen.vim

##  Make the link to the file in the repo
#ln -s .vim/vimrc .vimrc
