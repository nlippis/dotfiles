""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Key Remappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

imap jj <Esc>                       " Use JJ as Prefix
let mapleader = "\<Space>"          " Use space as leader

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Search Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch                        " Highlight your searches
set ic                              " Case insensitive searches
set incsearch                       " Find while typing
set scs                             " Smart case search

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Indentation Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ai                              " Auto Indent
set expandtab                       " Use Spaces instead of tabs
set shiftwidth=4                    " 1 tab == 2 Spaces
set smarttab
set tabstop=4                       " 1 tab == 2 Spaces

filetype plugin indent on           " Activate indenting based on file type
autocmd Filetype bash setlocal ts=2 sts=2 sw=2
autocmd Filetype sh setlocal ts=2 sts=2 sw=2
autocmd Filetype zsh setlocal ts=2 sts=2 sw=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Code Fold/Split Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldmethod=manual
set splitbelow                      " All horizontal splits open downward
set splitright                      " All vertical splits open to the right

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Ephemeral VIM Based File Creation Policies 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup                        " Do Not Create Backup Files
set noswapfile                      " Do Not Create Swap Files
set nowritebackup

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Mouse Usage Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a                         " Enable Mouse Usage
set ttymouse=xterm2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Miscelaneous Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable                       " Syntax Highlighting
set autoread                        " Reread file if written to elsewhere
set backspace=indent,eol,start
set colorcolumn=80                  " Mark Column 80 as max line width
set laststatus=2                    " Show grey status bar at the bottom
set number                          " Show line numbers
set scrolloff=2                     " Always show at least 2 lines below cursor
set showcmd                         " Show incomplete commands
set encoding=utf-8                  " Set encoding in case $LANG isnt set
set termencoding=utf-8              " Set encoding in case $LANG isnt set


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Plugins 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Code Navigation
Plug 'scrooloose/nerdtree'
Plug 'kshenoy/vim-signature'

" Autocompletion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Plug 'jiangmiao/auto-pairs'        " TODO Add this when relevant

" Appearance
Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'

" Languagues
Plug 'klen/python-mode'             " Python
Plug 'stephpy/vim-yaml'             " Yaml

" Git
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'          " TODO Add this when relevant

" Miscelaneous
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/syntastic'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'terryma/vim-multiple-cursors'" TODO Add this when relevant


call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugin Specific Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTree Settings
let NERDTreeIgnore = ['\.pyc$']

" Airline Settings
let g:airline_theme='base16'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_y=''
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1

" Pymode Settings
let g:pymode_folding=0
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_lint_checkers=['flake8', 'mccabe']

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" GitGutter Settings
highlight clear SignColumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Colorscheme Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let base16colorspace=256
set background=dark
colorscheme base16-tomorrow

