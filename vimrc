" VimPlug plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'
Plug 'keith/swift.vim'
Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'dahu/vim-fanfingtastic'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-commentary'

call plug#end()

" Highlight
syntax on
set hlsearch

" Don't beep on errors
set visualbell

" Map leader to space
let mapleader=" "

" Colors
set background=dark
set t_Co=256
let g:solarized_termcolors=256
"colorscheme jellybeans
"colorscheme desert
"colorscheme molokai
"colorscheme peachpuff
"colorscheme ron
colorscheme slate
"colorscheme afterglow

" Something related to molokai
let g:molokai_original = 1

" Don't highlight with terrible colors
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi MatchParen cterm=NONE ctermfg=grey ctermbg=blue

" Airline
let g:airline_theme='cool'

set laststatus=2
let g:airline_powerline_fonts = 1
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename

" NERDTree
nmap <leader>` :NERDTreeToggle<cr>
let NERDTreeMapOpenSplit='\t'

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview'

map <leader>t :YcmCompleter GetType<CR>

" Typescript
let g:typescript_indent_disable = 0

" Typescript autocomplete
autocmd FileType typescript setlocal completeopt+=menu,preview

" Buffers
nmap <leader>T :enew<cr>
nmap <leader>2 :bnext<cr>
nmap <leader>1 :bprevious<cr>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>w :bp <BAR> bd #<cr>

" New panes to right and bottom
set splitright
"set splitbelow

" Line numbers
set number
set relativenumber

" Tabs and indents
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set autoindent
set cindent
set smartindent

" Search as you type into search string
set incsearch

" Word wrap on line break
set linebreak

" Enter command mode
inoremap jk <esc>

" Delete like normal
set backspace=indent,eol,start

" Insert
noremap n i
noremap m n

" Insert with correct indent
noremap M N
noremap N cc

" Move with right-hand wasd
noremap l l
noremap i k
noremap k j
noremap j h
noremap <C-i> gk
noremap <C-k> gj
noremap <C-j> h
noremap <C-l> l
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <C-f> <C-D>
noremap <C-B> <C-U>

" Buffer space around cursor when scrolling
set scrolloff=7

" Subword motion
let g:wordmotion_mappings = {
			\ 'w' : 'W',
			\ 'b' : 'B',
			\ 'e' : 'E',
			\ 'ge' : '',
			\ 'aw' : '',
			\ 'iw' : ''
\ }

" Jump by paragraph
noremap K }
noremap I {

" Remap commenting
nmap cc gc

" Scroll window by multiple lines at a time
noremap <C-E> 3<C-E>
noremap <C-Y> 3<C-Y>

" Nuke scroll wheel spam characters
noremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelDown> <nop>

" Move delete so I stop killing lines
"noremap d w
"noremap w d

" Jump around lines
noremap z $
noremap Z ^

" Copy to system
noremap <leader>y "*y

" Change pane
nnoremap <leader>j <C-w><Left>
nnoremap <leader>k <C-w><Down>
nnoremap <leader>i <C-w><Up>
nnoremap <leader>l <C-w><Right>

" Map .md files to markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Download VimPlug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

