let &t_EI = "\1\e[2 q\2"
let &t_SI = "\e[1 q"

set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set list
set listchars=tab:▸·, trail:·,space:·
set ruler
set wildignorecase
set incsearch
set hls ic
set laststatus=2
set statusline=%f
set statusline+=%m
set statusline+=%<%h%r%=%b\ 0x%B\ \%l,%v\ %P
set mouse=a

set hidden

syntax on
:filetype indent on

:syntax on
:filetype indent on
:colorscheme retrobox

" Remaps
let mapleader = " "
nnoremap <leader>vp :Vex<CR>
nnoremap <leader><CR> :so .<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-e> :copen<CR>

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
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/async.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'machakann/vim-highlightedyank'
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
