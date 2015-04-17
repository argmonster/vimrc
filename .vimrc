set guicursor=n-v-c:block-Cursor

set ff=unix

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set smartindent
set shiftwidth=3
set softtabstop=3

set expandtab

filetype indent on

syntax on

set wildmenu

set hlsearch

set backspace=indent,eol,start

set showcmd
set showmatch
set hlsearch

nnoremap ,<space> :nohlsearch<cr>
nnoremap B ^
nnoremap E $

map Y y$

inoremap kj <esc>

set ignorecase
set smartcase

set ruler

set laststatus=2

set number

set pastetoggle=<f11>

let $src = '~/src/vim-usc'
set runtimepath^=$src

set directory=.,$TEMP
