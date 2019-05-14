" ========= VimPlug Plugins =========
call plug#begin('~/.vim/plugged')

" Languages
Plug 'fatih/vim-go', { 'for': 'go' }

" Actually writing code
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" File browsing
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  } | Plug 'junegunn/fzf.vim'

" HUD annotations
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Typing
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml'] }
Plug 'jiangmiao/auto-pairs'

" Colors
Plug 'mhartington/oceanic-next'

call plug#end()


" ========= Plugin Configuration =========

" Polyglot
let g:polyglot_disabled = ['markdown']

" Airline
let g:airline_theme='cool'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" NERDTree
let NERDTreeMapOpenSplit='\t'
let NERDTreeRespectWildIgnore=1
let g:NERDTreeWinSize=25
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Vim-Go
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0

" Auto-Pairs
let g:AutoPairsMultilineClose = 0
let g:AutoPairs = {'{':'}'}

" GitGutter
set updatetime=300
