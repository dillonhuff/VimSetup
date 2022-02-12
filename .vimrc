set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'skywind3000/vim-auto-popmenu'

" enable this plugin for filetypes, '*' for all files.
let g:apc_enable_ft = {'*': 1, 'text':1, 'markdown':1, 'php':1, 'cpp':1}

" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c

Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/vim-haskell-indent'
Plugin 'kien/ctrlp.vim'
Plugin 'derekelkins/agda-vim'

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

set backspace=indent,eol,start




" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"

