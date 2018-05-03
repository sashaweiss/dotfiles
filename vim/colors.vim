" ========= Colors =========

" Background color
set background=dark

" Colors
silent! colorscheme molokai
let g:molokai_original = 1

" Use transparent background
hi Normal ctermbg=NONE

" Terminal color adjustments
set t_Co=256
let g:solarized_termcolors=256

" Don't highlight with terrible colors
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi MatchParen cterm=NONE ctermfg=grey ctermbg=blue
hi Error cterm=NONE ctermfg=white ctermbg=red
hi SpellBad cterm=NONE ctermfg=white ctermbg=red
