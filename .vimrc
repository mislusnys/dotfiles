set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'klen/python-mode'

"Ide
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"Colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

call vundle#end()            " required

filetype plugin indent on    " required

" Custom keys
let mapleader=" "

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Powerline on
set laststatus=2

map <F2> :NERDTreeToggle<CR>

call togglebg#map("<F5>")
"colorscheme zenburn
"set guifont=Monaco:h14

"turn on numbering
set nu

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_options_max_line_length = 120

" Line color
hi ColorColumn ctermbg=8
" Line on/off
" let g:pymode_options_colorcolumn = 0

" Don't autofold code
let g:pymode_folding = 0

" Set the default file encoding to UTF-8:
set encoding=utf-8

syntax on


