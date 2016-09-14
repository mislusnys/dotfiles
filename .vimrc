set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'flazz/vim-colorschemes'  
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

" Custom keys
let mapleader=","

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Strips whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Select pasted text
nnoremap <leader>v V`]

" Status Line on 
set laststatus=2

map <F2> :NERDTreeToggle<CR>
nnoremap K :help <C-r><C-w><CR>

"turn on numbering
set nu

syntax on

colorscheme wombat256
" Theme stuff
nnoremap <leader>1 :colorscheme obsidian<cr>
nnoremap <leader>2 :colorscheme molokai<cr>
nnoremap <leader>3 :colorscheme badwolf<cr>
nnoremap <leader>4 :colorscheme wombat256<cr>

" OPTIONS
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber
set undofile

" Search
set incsearch
set showmatch
set hlsearch

" Wrap
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=120
"set list
"set listchars=tab:▸\ ,eol:¬

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
