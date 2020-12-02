" ========= Colors =========

set background=dark
silent! colorscheme OceanicNext

" Use transparent background
hi Normal ctermbg=NONE

" Terminal color adjustments
set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

" Don't highlight with terrible colors
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi MatchParen cterm=NONE ctermfg=grey ctermbg=blue
hi Error cterm=NONE ctermfg=white ctermbg=red
hi SpellBad cterm=NONE ctermfg=white ctermbg=red
