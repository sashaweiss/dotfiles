" ========= VimPlug Plugins =========
call plug#begin('$HOME/.vim/plugged')

" Syntax highlighting for pretty much every language
Plug 'sheerun/vim-polyglot'

" ...except GraphQL
Plug 'jparise/vim-graphql', { 'for': ['graphql', 'gql'] }

" Better navigation support for editing markdown
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] }

" IDE-like features via the Language Server Protocol, supporting almost every language
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" ...except Go
Plug 'tweekmonster/gofmt.vim', { 'for': ['go'] }

" File browsing
Plug 'scrooloose/nerdtree'

" FZF for fuzzy-matching files, search results, etc.
if has('mac')
  Plug '/usr/local/opt/fzf'
elseif has('unix')
  Plug '/home/linuxbrew/.linuxbrew/opt/fzf'
endif
Plug 'sashaweiss/fzf.vim', { 'branch': 'preview_fix' } " Use my fork which implements the community's solution to https://github.com/junegunn/fzf.vim/issues/751

" Show line-based git-status in the gutter
Plug 'airblade/vim-gitgutter'

" Show a nice statusline at the bottom
Plug 'bling/vim-airline'

" Themes for said statusline
Plug 'vim-airline/vim-airline-themes'

" Move by 'subword', i.e. through camelCase and snake_case words
Plug 'chaoren/vim-wordmotion'

" Add commands for commenting code
Plug 'tpope/vim-commentary'

" Automatically close tags in *ml languages
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml'] }

" Automatically close brackets and stuff
Plug 'jiangmiao/auto-pairs'

" Use `gr` in place of `d`, `c`, `y` - anything that places text in the paste
" register - to both do the action and paste from the register so you don't
" blow away the register.
Plug 'vim-scripts/ReplaceWithRegister'

" OceanicNext colorscheme
Plug 'mhartington/oceanic-next'

call plug#end()


" ========= Plugin Configuration =========


" *** Polyglot ***

let g:polyglot_disabled = ['markdown']
let g:rust_recommended_style = 0 " Manually manage spacing config


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
