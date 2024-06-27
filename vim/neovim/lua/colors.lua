-- ========= Colors =========

vim.cmd("silent! colorscheme OceanicNext")
vim.opt.termguicolors = true

-- Use transparent background
vim.cmd.highlight({ "Normal", "ctermbg=NONE" })

-- Don't highlight with terrible colors
vim.cmd([[
  hi Search cterm=NONE ctermfg=grey ctermbg=blue
  hi MatchParen cterm=NONE ctermfg=grey ctermbg=blue
  hi Error cterm=NONE ctermfg=white ctermbg=red
  hi SpellBad cterm=NONE ctermfg=white ctermbg=red
]])
