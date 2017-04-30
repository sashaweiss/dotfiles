" VimPlug plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

call plug#end()

" Highlight
syntax on

" Don't beep on errors
set visualbell

" Map leader to space
let mapleader=" "

" Colors
set background=dark
set t_Co=256
colorscheme molokai
let g:molokai_original = 1

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename

" Buffers
nmap <leader>T :enew<cr>
nmap <leader>2 :bnext<cr>
nmap <leader>1 :bprevious<cr>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>w :bp <BAR> bd #<cr>

" NERDTree
nmap <leader>` :NERDTreeToggle<cr>
let NERDTreeMapOpenSplit='\t'

" New panes to right and bottom
set splitright
set splitbelow

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
"noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Nuke scroll wheel spam characters
noremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelDown> <nop>

" Change pane
nnoremap <leader>j <C-w><Left>
nnoremap <leader>k <C-w><Down>
nnoremap <leader>i <C-w><Up>
nnoremap <leader>l <C-w><Right>

" Map .md files to markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

