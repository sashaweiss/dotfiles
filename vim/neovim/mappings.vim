" ========= Remappings =========

" Enter command mode
inoremap jk <esc>

" Buffers
nmap <leader>t :enew<CR>
nmap <leader>= :bnext<CR>
nmap <leader>- :bprevious<CR>
nmap <leader>w :bprevious <BAR> bd #<CR>
nmap <leader>W :bprevious <BAR> bd! #<CR>

" Nuke scroll wheel spam characters
noremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelDown> <nop>

" Jump paragraphs using capital J and K
nnoremap J }
vnoremap J }
nnoremap K {
vnoremap K {

" Move by display lines
nnoremap <silent> k gk
nnoremap <silent> j gj

" Jump around lines
noremap z $
noremap Z ^
vnoremap z $h

" Copy to system (only applicable on Mac)
noremap <leader>y "*y
