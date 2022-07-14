" ========= Plugin Load =========

" Install Vim-Plug if not installed
if empty(glob("$HOME/.local/share/nvim/site/autoload/plug.vim"))
  !curl --create-dirs -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim"
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" ========= VimPlug Plugins =========
call plug#begin('$HOME/.vim/plugged')

" Syntax highlighting for pretty much every language
Plug 'sheerun/vim-polyglot'

" Except JSONC
Plug 'neoclide/jsonc.vim'

" File browsing
Plug 'scrooloose/nerdtree'

" FZF for fuzzy-matching files, search results, etc.
Plug 'junegunn/fzf'
Plug 'sashaweiss/fzf.vim', { 'branch': 'preview_fix' } " Use my fork which implements the community's solution to https://github.com/junegunn/fzf.vim/issues/751

" Show line-based git-status in the gutter
Plug 'airblade/vim-gitgutter'

" Show a nice statusline at the bottom
Plug 'bling/vim-airline'

" Themes for said statusline
Plug 'vim-airline/vim-airline-themes'

" Move by 'subword', i.e. through camelCase and snake_case words
Plug 'chaoren/vim-wordmotion'

" Comment blocks of code
Plug 'preservim/nerdcommenter'

" Automatically close tags in *ml languages
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml'] }

" Automatically close brackets and stuff
Plug 'jiangmiao/auto-pairs'

" OceanicNext colorscheme
Plug 'mhartington/oceanic-next'

call plug#end()


" ========= Plugin Configuration =========

" *** Airline ***

set laststatus=2
let g:airline_theme='base16_ashes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename

let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_b = airline#section#create(['file', ' ', 'readonly'])
let g:airline_section_c = airline#section#create([])
let g:airline_section_x = airline#section#create(['ffenc'])
let g:airline_section_y = airline#section#create(['filetype'])
let g:airline_section_z = airline#section#create(['Ln: %l of %L, Col: %c'])
let g:airline_section_warning = airline#section#create([])
let g:airline_section_error = airline#section#create([])


" *** NERDTree ***

nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFocus<CR>


" *** NERDCommenter ***

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 'swift': { 'left': '//', 'right': '' } }

map <leader>cc <plug>NERDCommenterInvert


" *** Auto-Pairs ***

let g:AutoPairsMultilineClose = 0
let g:AutoPairs = {'{':'}'}


" *** GitGutter ***

set updatetime=300
command GitNext GitGutterNextHunk
command GitPrev GitGutterPrevHunk


" *** Subword motion ***

let g:wordmotion_mappings = {
			\ 'w' : 'gw',
			\ 'b' : 'gb',
			\ 'e' : 'ge',
			\ 'ge' : '',
			\ 'aw' : '',
			\ 'iw' : ''
\ }


" *** FZF ***

let g:fzf_preview_window = ['down:70%']
