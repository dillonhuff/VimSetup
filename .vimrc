set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()
filetype plugin indent on

inoremap jk <ESC> 
let mapleader = " "
syntax on
set autoindent
set cindent