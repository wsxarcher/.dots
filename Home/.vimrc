set nocompatible

filetype off

set rtp+=~/.dots/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts=1
let g:airline_theme='hybridline'
set laststatus=2
set timeoutlen=1000 ttimeoutlen=10

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup = 1
map <C-n> :NERDTreeTabsToggle<CR>

Plugin 'ervandew/supertab'
Plugin 'dietsche/vim-lastplace'
Plugin 'Yggdroot/indentLine'
let g:indentLine_color_term = 239

Plugin 'gabrielelana/vim-markdown'
let g:markdown_enable_spell_checking = 0

Plugin 'scwood/vim-hybrid'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

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
colorscheme hybrid
set background=dark

if has("unix")
    let s:uname = system("uname")
    if s:uname =~ "Darwin"
        set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
    else
        set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
    endif
endif

set clipboard=unnamedplus,unnamed

set noshowmode

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

nnoremap <Del> "_x
vmap <Del> "_x
vmap r "_dP

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left>  :tabp<CR>
nnoremap <C-c>     :tabc<CR>

nnoremap <C-Up>    :tabn<CR>
nnoremap <C-Down>  :tabp<CR>

map ; :

map Q :qa<CR>

command! W w
command! Q qa
command! Wq wq
command! WQ wqa
map U <C-R>

noremap H 10h
noremap J 20j
noremap K 20k
noremap L 10l

map s :s/
map S :%s/
vmap S :s/

set splitbelow
set splitright

set modifiable

set list
set listchars=tab:▸\ ,trail:·

