let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set scrolloff=8
set relativenumber

set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set autoindent
set smartindent
set list
set listchars=tab:⍿·,extends:>,trail:·

set fileformat=unix
set encoding=utf8

set wildignorecase
set incsearch
set ignorecase
set smartcase
set hlsearch

set ruler
set mouse=a
set belloff=esc

set termguicolors
set laststatus=2
set statusline=%f
set statusline+=%m
set statusline+=%<%h%r%=%b\ 0x%B\ \%l,%v\ %P
set clipboard=unnamedplus
set showcmd
set history=10000

set hidden

syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Remaps
let mapleader = " "
nnoremap <leader>vp :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-e> :copen<CR>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary', {'branch': 'master'}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'machakann/vim-highlightedyank'
Plug 'dense-analysis/ale', {'branch': 'master'}
Plug 'junegunn/seoul256.vim'
call plug#end()

let g:seoul256_background = 233
colorscheme seoul256
set colorcolumn=88
