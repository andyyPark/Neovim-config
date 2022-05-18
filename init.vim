" Author: Andy Park
" Last Update: May 10 2022

" --- Init autocmd
autocmd!

" --- Set script encoding
scriptencoding utf-8


" --- Enable Syntax Processing
filetype plugin on
filetype indent on
syntax on

" --- Spaces & Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " tabs are spaces
set autoindent
set smartindent
set cindent

" --- UI Configuration
set number relativenumber
set showcmd
set title
set cursorline
set ruler
set wildmenu
set lazyredraw
set showmatch
set splitbelow
set splitright
set signcolumn=yes
set colorcolumn=" "

highlight Visual cterm=NONE ctermbg=238 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=NONE ctermfg=240 guifg=#2b506e guibg=#000000

" augroup BgHighlight
"     autocmd!
"     autocmd WinEnter * set cul
"     autocmd WinLeave * set nocul
" augroup End

" --- Searching Configuration
set incsearch
set nohlsearch
set ignorecase
set smartcase

" --- Vim Configuration
let mapleader=" "
set nocompatible
set encoding=utf-8
set backspace=indent,eol,start
set noerrorbells
set spelllang=en_us
set spell
set mouse=a
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set wildignore+=*/node_modules/*

if has('nvim')
    set inccommand=split
endif
"
" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

if exists("&termguicolors") && exists("&winblend")
    syntax enable
    " This is only necessary if you use "set termguicolors".
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
    let g:neosolarized_termtrans=1
    runtime ./colors/NeoSolarized.vim
    colorscheme nord
endif


function! ToggleColorScheme()
    if (g:colors_name == "NeoSolarized")
        colorscheme seoul256
    else
        colorscheme NeoSolarized
    endif
endfunction

if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

runtime ./maps.vim
runtime ./plug.vim
