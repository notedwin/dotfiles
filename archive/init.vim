" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).

autocmd VimEnter * NERDTree
set nocompatible
set termguicolors " Opaque Background
set number
set encoding=UTF-8
" set relativenumber
syntax on
set background=dark
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set wrap breakindent
set title
set emoji
set history=1000
set linebreak
set showmatch
set cursorline


" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'fenetikm/falcon'

Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()

let g:rainbow_active = 1
colorscheme falcon

let g:falcon_airline = 1
let g:airline_theme = 'falcon'
