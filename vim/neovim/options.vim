" ========= General Options =========

" Use UTF-8
set encoding=utf-8

" Highlight
syntax on
set hlsearch

" Line numbers
set number

" Delete like normal
set backspace=indent,eol,start

" Don't beep on errors
set visualbell
set t_vb=

" Map leader to backslash
let mapleader="\\"

" Word wrap on line break
set linebreak

" Wrap lines by default
set wrap

" Keep gutter open
set signcolumn=yes

" Show as much of wrapped lines going off the screen as possible
set display+=lastline

" Minimum window height/width
set winheight=4 winminheight=4
set winwidth=15 winminwidth=15

" Allow unsaved buffers to be hidden
set hidden

" Completion style
set completeopt=longest,menuone

" Map .md files to markdown
au BufNewFile,BufFilePre,BufRead *.md setlocal filetype=markdown

" Map .mm files to objc
au BufNewFile,BufFilePre,BufRead *.mm setlocal filetype=objc

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" New panes to right and bottom
set splitright

" Tabs and indents
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set smarttab
set autoindent
set cindent
set smartindent

" Four space tabs for some languages
autocmd FileType python setlocal tabstop=4 shiftwidth=4
autocmd FileType swift setlocal tabstop=4 shiftwidth=4
autocmd FileType objc setlocal tabstop=4 shiftwidth=4
autocmd FileType cmake setlocal tabstop=4 shiftwidth=4
autocmd FileType groovy setlocal tabstop=4 shiftwidth=4

" Disable auto-indenting for Markdown, since it's got funky ideas
autocmd FileType markdown set indentexpr=

" Mark JSON as jsonc to allow comments
autocmd FileType json setlocal filetype=jsonc

" Search case-sensitive if capital in pattern, otherwise insensitive
set ignorecase
set smartcase

" Incremental search
set incsearch

" Bash-style completions for file names
set wildmode=longest,list,full
set wildmenu

" Ignores
set wildignore+=*.pyc,*.o,*.class,*.lo,.git,out,node_modules,dist,venv,vendor,*.swp

" Buffer space around cursor when scrolling
set scrolloff=1

" Use angle brackets as a match pair
set matchpairs=(:),{:},[:],<:>
