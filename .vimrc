set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set list
set listchars=tab:▸·,trail:·,space:·
set incsearch
set wildmode=list:longest,list:full
set hls ic

set laststatus=2
set statusline=%f
set statusline+=%m
set statusline+=%<%h%r%=%b\ 0x%B\ \%l,%l%V\ %P
set hidden

syntax enable
set background=dark
" set t_Co=16
filetype indent on
let g:solarized_termcolors=256
colorscheme retrobox

" Cursor for modes
let &t_EI = "\1\e[2 q\2"
let &t_SI = "\e[1 q"

" Remaps
let mapleader = " "
nnoremap <leader>vp :Vex<CR>
nnoremap <leader><CR> :so /c/Users/SteChi<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-e> :copen<CR>

" Close split
nnoremap <C-w>c :close<CR>
nnoremap <C-w>o :only<CR>

" New split
nnoremap <C-w>v :vsplit<CR>
nnoremap <C-w>n :new<CR>

" Esc insert alternatives: <C-[>
imap jh <Esc>

" For highlightedyank
if !exists('##TextYankPost')
  nmap y <Plug>(highlightedyank)
  xmap y <Plug>(highlightedyank)
  omap y <Plug>(highlightedyank)
endif

" Plugins
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzt#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'machakann/vim-highlightedyank'

Plug 'dense-analysis/ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/async.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
call plug#end()

" ESlint
let g:ale_fixers = {
\   'javascript':['eslint'],
\   'typescript':['eslint', 'tsserver'],
\}

let g:ale_linters= {
\   'javascript':['eslint'],
\   'typescript':['eslint', 'tsserver'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_options = '--max-line-length 88 --extend-ignore=E203'
