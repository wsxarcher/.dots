set nocompatible

filetype off 

set rtp+=~/.dots/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'
set laststatus=2
set timeoutlen=1000 ttimeoutlen=10

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'bling/vim-bufferline'
let g:bufferline_echo = 0

Plugin 'ervandew/supertab'
Plugin 'moll/vim-bbye'
Plugin 'dietsche/vim-lastplace'

call vundle#end()

filetype plugin indent on
syntax on

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,latin1

set ignorecase
set smartcase

set autoindent

set ruler

set number

set mouse=a

set shiftwidth=4
set softtabstop=4
set expandtab

map Y y$

set backspace=indent,eol,start

set hidden
 
set wildmenu
 
set showcmd

set cursorline

set hlsearch

set t_Co=256
colorscheme tayra

set clipboard=unnamedplus

set noshowmode

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

nnoremap <Del> "_x
vmap r "_dP

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd FileType nerdtree noremap <buffer> <C-Right> <nop>
autocmd FileType nerdtree noremap <buffer> <C-Left> <nop>

nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left>  :bprevious<CR>
nnoremap <C-c>     :Bdelete<CR>

nnoremap <C-Up>    :tabn<CR>
nnoremap <C-Down>  :tabp<CR>

map Q :qa<CR>

map ; :

command! W w
command! Q q
command! Wq wq
command! WQ wq
map U <C-R>

noremap H 10h
noremap J 20j
noremap K 20k
noremap L 10l

set splitbelow
set splitright

set modifiable

autocmd VimEnter * NERDTree
if argc() > 0
    autocmd VimEnter * wincmd p
endif
