set visualbell
syntax on
set background=dark
colorscheme desert
set number
set relativenumber
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set incsearch

inoremap jk <esc>

noremap hi i
noremap l l
noremap i k
noremap k j
noremap j h
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

