" General Settings
let g:mapleader = "\<Space>"  
syntax enable
set relativenumber 
set cursorline
set shiftwidth=4
set showtabline=2
set encoding=utf-8    
set fileencoding=utf-8 
set cmdheight=2       
set hlsearch
set mouse=a
set autoindent
set smartindent
set splitright
set splitbelow
set ruler
set noshowmode
set t_Co=256
set clipboard=unnamedplus
set autochdir  

"Calling pluggins
call plug#begin('~/.config/nvim/plugged')
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'fladson/vim-kitty'
Plug 'Fymyte/rasi.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

"Setting Themes
colorscheme gruvbox
set background=dark
set termguicolors
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

