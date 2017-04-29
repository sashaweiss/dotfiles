" Highlight
syntax on

" Don't beep on errors
set visualbell

" Colors
set background=dark
"colorscheme desert
colorscheme afterglow
"colorscheme jellybeans

" Line numbers
set number
set relativenumber

" Tabs and indents
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set autoindent

" Search as you type into search string
set incsearch

" Word wrap on line break
set linebreak

" Enter command mode
inoremap jk <esc>

" Insert
noremap ; i

" Move with right-hand wasd
noremap l l
noremap i k
noremap k j
noremap j h
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Nuke scroll wheel spam characters
noremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelUp> <nop>
"<C-Y>
noremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelDown> <nop>
"<C-E>

" Map .md files to markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" VimPlug plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'

