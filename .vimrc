let mapleader= ","
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>
imap jj <ESC>

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'

call pathogen#infect()
call pathogen#helptags()
set nocompatible
"filetype off
filetype plugin indent on
nmap <silent> <C-T> :NERDTreeToggle<CR>

syntax on
set background=dark
set showcmd
set showmode
set nofoldenable
set showmatch

set virtualedit=all

set incsearch
set hlsearch
set ignorecase

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set cindent
set autoindent
set nowrap
set copyindent
set backspace=indent,eol,start

set shiftround

set cursorline
set cursorcolumn

"set wildmenu
"set wildmode=list:longest

set wrap!
set bs=2
set number
set hidden
set cmdheight=2
set mouse=a

colorscheme solarized
call togglebg#map("<F5>")
nnoremap <F1> :set paste<CR>
nnoremap <F2> :set nopaste<CR> 
nnoremap <F3> :set hlsearch!<CR>
set foldmethod=indent
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <F10> zA

"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

set backupdir=$HOME/.vim/backup//
set directory=$HOME/.vim/backup//

     set statusline=%F%m%r%h%w%y[%p%%][%04l,%03v]
     "              | | | | |  |      |  |     |    |
     "              | | | | |  |      |  |     |    + current
     "              | | | | |  |      |  |     |       column
     "              | | | | |  |      |  |     +-- current line
     "              | | | | |  |      |  +-- current % into file
     "              | | | | |  |      +-- current syntax in
     "              | | | | |  |          square brackets
     "              | | | | |  +-- current fileformat
     "              | | | | +-- preview flag in square brackets
     "              | | | +-- help flag in square brackets
     "              | | +-- readonly flag in square brackets
     "              | +-- rodified flag in square brackets
     "              +-- full path to file in the buffer
 " }
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\    execute "normal g'\"" |
\ endif
