" ========= VimPlug Plugins =========
call plug#begin('$HOME/.vim/plugged')

" Actually writing code
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] }
Plug 'jparise/vim-graphql', { 'for': ['graphql', 'gql'] }
Plug 'tweekmonster/gofmt.vim', { 'for': ['go'] }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" File browsing
Plug 'scrooloose/nerdtree'

if has('mac')
  Plug '/usr/local/opt/fzf'
elseif has('unix')
  Plug '/home/linuxbrew/.linuxbrew/opt/fzf'
endif
Plug 'sashaweiss/fzf.vim', { 'branch': 'preview_fix' } " Use my fork which implements the community's solution to https://github.com/junegunn/fzf.vim/issues/751

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


" *** Polyglot ***

let g:polyglot_disabled = ['markdown']


" *** Airline ***

let g:airline_theme='cool'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename


" *** Airline symbols ***

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


" *** NERDTree ***

let NERDTreeMapOpenSplit='\t'
let NERDTreeRespectWildIgnore=1
let g:NERDTreeWinSize=25
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFocus<CR>


" *** Auto-Pairs ***

let g:AutoPairsMultilineClose = 0
let g:AutoPairs = {'{':'}'}


" *** GitGutter ***
"
set updatetime=300


" *** Subword motion ***

let g:wordmotion_mappings = {
			\ 'w' : 'gw',
			\ 'b' : 'gb',
			\ 'e' : 'ge',
			\ 'ge' : '',
			\ 'aw' : '',
			\ 'iw' : ''
\ }


" *** GoFmt ***

let g:gofmt_exe = 'goimports'


" *** FZF ***

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Override :Files - add toggleable (w/ Space) preview
command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nmap <C-p> :Files<CR>

" Search for highlighted text
vnoremap // y:Rg <C-R>"<CR>
