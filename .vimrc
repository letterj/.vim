" Basic
syntax on                       " syntax highlighting on
execute pathogen#infect()

" General
set tabstop=4
set shiftwidth=4
set expandtab

" Set <ESC> to jk
inoremap jk <ESC>

hi Comment ctermfg=LightBlue

"UI
set laststatus=2 " always show the status line
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

"Python Section
set term=builtin_ansi
"set verbose=9

au FileType py match BadWhitespace /^\t\+/
au FileType py match BadWhitespace /\s\+$/

" This shows what you are typing as a command.
set showcmd

" Remap jj to <Escape> in insert mode
inoremap jj <Esc>

"A little easier way to switch between buffers
map <C-j> :bprev<CR>
map <C-k> :bnext<CR>

"Disable Arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
