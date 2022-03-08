" General Settings
set guifont=monospace:5
set relativenumber 
set nu
set hidden
set cursorline
set shiftwidth=4
set tabstop=4
set softtabstop=4
set scrolloff=8
set signcolumn=yes
set showtabline=2
set encoding=utf-8    
set fileencoding=utf-8 
set spelllang=en_us
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

" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

" Bracket pair colorizer.
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

" Allow files to be saved as root when forgetting to start Vim using sudo.
command Sw :execute ':silent w !sudo tee % > /dev/null' | :edit!
