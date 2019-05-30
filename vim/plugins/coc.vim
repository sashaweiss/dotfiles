" << completion >>
" ref - https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#improve-completion-experience

" trigger completion w/ <c-s>
inoremap <silent><expr> <c-s> coc#refresh()

" confirm completion w/ <c-space>
" `<c-g>u` means break undo chain at current position
inoremap <expr> <c-space> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<c-space>"

nmap <leader>cn <Plug>(coc-diagnostic-next)
nmap <leader>cp <Plug>(coc-diagnostic-prev)

" go to definition
nmap <silent> gd <Plug>(coc-definition)

" go to declaration
nmap <silent> gr <Plug>(coc-declaration)

" go to implentation
nmap <silent> gi <Plug>(coc-implementation)

" go to type definition
nmap <silent> gt <Plug>(coc-type-definition)

" go to references
nmap <silent> grf <Plug>(coc-references)

" << variables >>

" extensions
"
" ref - https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
"
" can also install through plugin manager, here's an example w/ vim plug
" `Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}`
"
" available extensions - https://www.npmjs.com/search?q=keywords%3Acoc.nvim
" extra sources - https://github.com/neoclide/coc-sources
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-solargraph',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-python',
  \ 'coc-rls',
\ ]

" trigger key for going to the next snippet position,
" applied in insert and select mode.
let g:coc_snippet_next = '<c-n>'
let g:coc_snippet_prev = '<c-p>'
