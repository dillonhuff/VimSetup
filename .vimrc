set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/vim-haskell-indent'
Plugin 'kien/ctrlp.vim'

call vundle#end()

filetype plugin indent on

inoremap jk <ESC> 
let mapleader = " "
syntax on
set autoindent


set cindent

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap <expr> } strpart(getline('.'), col('.') - 1, 1) == "}" ? "\<Right>" : "}"

inoremap ( ()<Left>
inoremap <expr> ) strpart(getline('.'), col('.') - 1, 1) == ")" ? "\<Right>" : ")"

inoremap [ []<Left>
inoremap <expr> ] strpart(getline('.'), col('.') - 1, 1) == "]" ? "\<Right>" : "]"

inoremap ' ''<Left>
inoremap <expr> ' strpart(getline('.'), col('.') - 1, 1) == "'" ? "\<Right>" : "'"

map a <S-a>
map s <C-w><C-w>

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

colorscheme desert
"set clipboard=unnamedplus






