" ========= Custom Commands =========

" Use ripgrep and fzf to search for terms
if executable('rg')
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" Vim-Racer mappings
au FileType rust command! RustDef execute "normal \<Plug>(rust-def)"
au FileType rust command! RustDefSplit execute "normal \<Plug>(rust-def-split)"
au FileType rust command! RustDefVSplit execute "normal \<Plug>(rust-def-vertical)"
au FileType rust command! RustDoc execute "normal \<Plug>(rust-doc)"
