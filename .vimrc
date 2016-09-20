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
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

" for NerdCommenter
filetype plugin on

" Custom keys
let mapleader=","

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Buffer navigation
nnoremap <leader><Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Strips whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Select pasted text
nnoremap <leader>v V`]

" Status Line on 
set laststatus=2

map <F2> :NERDTreeToggle<CR>
set pastetoggle=<F12>

" Turn on numbering
set nu

syntax on

" Theme stuff
colorscheme wombat256
nnoremap <leader>1 :colorscheme zenburn<cr>
nnoremap <leader>2 :colorscheme github<cr>
nnoremap <leader>3 :colorscheme atom<cr>
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
