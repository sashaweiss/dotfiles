" ========= VimPlug Plugins =========

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
Plug 'alvan/vim-closetag'
Plug 'mustache/vim-mustache-handlebars'
Plug 'terryma/vim-smooth-scroll'

call plug#end()


" ========= General Options =========

" Highlight
syntax on
set hlsearch

" Line numbers
set number
set relativenumber

" Delete like normal
set backspace=indent,eol,start

" Don't beep on errors
set visualbell

" Map leader to space
let mapleader=" "

" Word wrap on line break
set linebreak

" Map .md files to markdown
au BufNewFile,BufFilePre,BufRead *.md setlocal filetype=markdown

" Four space tabs for Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Autoremove trailing spaces when saving the buffer
autocmd FileType c,cpp,elixir,eruby,html,java,javascript,php,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e


" ========= Colors =========

" Background color
set background=dark

" Colors
colorscheme slate
"colorscheme jellybeans
"colorscheme desert
"colorscheme molokai
"colorscheme peachpuff
"colorscheme ron
"colorscheme vibrantink
"colorscheme afterglow

" Terminal color adjustments
set t_Co=256
let g:solarized_termcolors=256

" Something related to molokai
let g:molokai_original = 1

" Don't highlight with terrible colors
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi MatchParen cterm=NONE ctermfg=grey ctermbg=blue
hi Error cterm=NONE ctermfg=white ctermbg=red
hi SpellBad cterm=NONE ctermfg=white ctermbg=red

" New panes to right and bottom
set splitright

" Tabs and indents
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set autoindent
set cindent
set smartindent

" Incremental search
set incsearch

" Bash-style completions for file names
set wildmode=longest,list,full
set wildmenu

" Ignores
set wildignore+=*.pyc,*.o,*.class,*.lo,.git,out,node_modules,dist,venv

" Buffer space around cursor when scrolling
set scrolloff=7


" ========= Plugin Configuration =========

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

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1
set completeopt-=preview'

" Typescript
let g:typescript_indent_disable = 0
autocmd FileType typescript setlocal completeopt+=menu,preview  " autocomplete

" Autoclose HTML
let g:closetag_filenames = "*.html, *.hbs, *.handlebars"

" Smooth Scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll*2/3, 0, 6)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll*2/3, 0, 6)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2*2/3, 0, 12)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2*2/3, 0, 12)<CR>


" ========= Remappings =========

" Enter command mode
inoremap jk <esc>

" Buffers
nmap <leader>t :enew<cr>
nmap <leader>2 :bnext<cr>
nmap <leader>1 :bprevious<cr>
nmap <leader>w :bp <BAR> bd #<cr>

" Scroll window by multiple lines at a time
noremap <C-E> 3<C-E>
noremap <C-Y> 3<C-Y>

" Nuke scroll wheel spam characters
noremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelDown> <nop>

" Jump paragraphs using capital J and K
noremap K {
noremap J }

" Jump around lines
noremap z $
noremap Z ^

" Jump between panes with leader
map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>l <C-W>l

" Copy to system (only applicable on Mac)
noremap <leader>y "*y

" Infer type
map <leader>gt :YcmCompleter GetType<CR>

" Toggle NERDTree
nmap <leader>nt :NERDTreeToggle<cr>

" Subword motion
let g:wordmotion_mappings = {
			\ 'w' : 'gw',
			\ 'b' : 'gb',
			\ 'e' : 'ge',
			\ 'ge' : '',
			\ 'aw' : '',
			\ 'iw' : ''
\ }


" ========= Custom Commands =========

" Invoke prettier for TS
command! Prettier silent %!prettier --stdin --trailing-comma all --single-quote


" ========= Notes =========

" Download VimPlug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

