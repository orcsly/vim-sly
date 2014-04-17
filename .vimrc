set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" " alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'fholgado/minibufexpl.vim'

set backspace=2

let mapleader = ","

filetype off 
filetype plugin indent on    " enable loading indent file for filetype

syntax on
" set t_Co=256
" set term=xterm-256Color
" set background=dark
" colorscheme solarized

" set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " an hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set mouse=a
set showmatch
set number
set hidden
set hlsearch
set undolevels=1000
set title
set nobackup
set noswapfile

let NERDTreeIgnore = ['\.pyc$', '\.swp$', '\.DS_Store$', '\.o$']
let g:NERDTreeDirArrows=0

" remap jj to the escape key to make moving from insert to normal mode easier
inoremap jj <ESC>

" navigating panes
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd VimEnter * wincmd w

" numbers config
let g:numbers_exclude = ['minibufexpl']

" pyflakes
"let g:pyflakes_use_quickfix = 0

" pep8
"let g:pep8_map='<leader>8'

" go to
"map <leader>j :RopeGotoDefinition<CR>

"map <leader>td <Plug>TaskList

" jedi
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1

" auto xmlint
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
