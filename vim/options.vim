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

" Wrap lines
set wrap

" Word wrap on line break
set linebreak

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

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Autoremove trailing spaces when saving the buffer
" Don't do it for Rust or Go; let (go|rust)fmt handle that
" Use g:StripWhitespace to temporarily disable this behavior
let g:StripWhitespace = 1

function! StripTrailingWhitespace()
  if g:StripWhitespace != 1
    return
  endif

  if &ft =~ 'rust'
    return
  endif

  let l = line(".")
  let c = col(".")
  :%s/\s\+$//e
  call cursor(l, c)
endfunction

autocmd BufWritePost * call StripTrailingWhitespace()

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
