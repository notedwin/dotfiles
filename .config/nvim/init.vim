syntax on
set ruler               " Show the line and column numbers of the cursor.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set linespace=0         " Set line-spacing to minimum.
set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup            	" Don't create annoying backup files
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set autoindent
set tabstop=4 shiftwidth=4 expandtab

set nocompatible
set termguicolors " Opaque Background
set number
set background=dark
filetype plugin indent on
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
" git 
Plug 'airblade/vim-gitgutter'

"cool things
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'

"autocomplete or typing
Plug 'tpope/vim-surround'

" themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'morhetz/gruvbox'
"Plug 'fenetikm/falcon'
"Plug 'luochen1990/rainbow'

""" tmux
"Plug 'tmux-plugins/vim-tmux'
"Plug 'edkolev/tmuxline.vim'
"Plug 'thewtex/tmux-mem-cpu-load'

Plug 'dense-analysis/ale'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()

" autocmd VimEnter * NERDTree
""" NERDTree
let NERDTreeShowHidden=1

""" Gitgutter
let g:gitgutter_enabled=1
let g:gitgutter_signs=1
let g:gitgutter_highlight_lines=1
