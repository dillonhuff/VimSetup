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

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap ( ()<Left>
inoremap <expr> ) strpart(getline('.'), col('.') - 1, 1) == ")" ? "\<Right>" : ")"

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

set number

set showcmd

set cursorline
set incsearch
set hlsearch

set ignorecase
set smartcase








