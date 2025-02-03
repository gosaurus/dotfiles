let &t_EI = "\1\e[2 q\2"
let &t_SI = "\e[1 q"
"set vi-cmd-mode-string \1\e[2 q\2
"set vi-ins-mode-string \e[1 q

set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set list
set listchars=tab:▸·
set listchars=trail:·
set incsearch
set wildmode=list:longest,list:full

set laststatus=2
set statusline=%f
set statusline+=%m
set statusline+=%<%h%r%=%b\ 0x%B\ \%l,%l%V\ %P
set hidden

:syntax on
:filetype indent on
:colorscheme habamax

" Remaps
let mapleader = " "
nnoremap <leader>vp :Vex<CR>
nnoremap <leader><CR> :so /c/Users/SteChi<CR>
nnoremap <C-p> :GFiles<CR>

" Plugins
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzt#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'

call plug#end()
echo '\(>^.^<)'
