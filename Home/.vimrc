set nocompatible

filetype off

set rtp+=~/.dots/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts=1
let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
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

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1

Plugin 'rakr/vim-one'

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
set relativenumber

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
set termguicolors
set background=dark
let g:one_allow_italics = 1
colorscheme one

if has('nvim')
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

set gcr=a:blinkoff0

if has("unix")
    let s:uname = system("uname")
    if s:uname =~ "Darwin"
"       set macligatures
        set guifont=Hack:h12
        if empty($TMUX)
            let &t_SI = "\<esc>]50;cursorshape=1\x7"
            let &t_EI = "\<esc>]50;cursorshape=0\x7"
            let &t_SR = "\<esc>]50;cursorshape=2\x7"
        else
            let &t_SI = "\<esc>ptmux;\<esc>\<esc>]50;cursorshape=1\x7\<esc>\\"
            let &t_EI = "\<esc>ptmux;\<esc>\<esc>]50;cursorshape=0\x7\<esc>\\"
            let &t_SR = "\<esc>ptmux;\<esc>\<esc>]50;cursorshape=2\x7\<esc>\\"
        endif
    else
        set guifont=Hack\ 12
    endif
endif

set clipboard=unnamedplus,unnamed

set noshowmode

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

nnoremap <Del> "_x
vmap <Del> "_x
vmap r "_dP

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nnoremap <TAB>      <C-w>w
nnoremap <S-TAB>    <C-w>W

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

nnoremap [q    :cprevious<cr>
nnoremap ]q    :cnext<cr>
nnoremap [Q    :cfirst<cr>
nnoremap ]Q    :clast<cr>

nnoremap [l    :lprevious<cr>
nnoremap ]l    :lnext<cr>
nnoremap [L    :lfirst<cr>
nnoremap ]L    :llast<cr>

nnoremap [b    :bprevious<cr>
nnoremap ]b    :bnext<cr>
nnoremap [B    :bfirst<cr>
nnoremap ]B    :blast<cr>

nnoremap [t    :tabprevious<cr>
nnoremap ]t    :tabnext<cr>
nnoremap [T    :tabfirst<cr>
nnoremap ]T    :tablast<cr>

map s :s/
map S :%s/
vmap S :s/

set splitbelow
set splitright

set modifiable

set list
set listchars=tab:▸\ ,trail:·

