-- ========= Plugin Load =========
--
-- `vim-plug` must be installed: https://github.com/junegunn/vim-plug

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Syntax highlighting for pretty much every language
Plug('sheerun/vim-polyglot')

-- Except JSONC
Plug('neoclide/jsonc.vim')

-- File browsing
Plug('scrooloose/nerdtree')

-- FZF for fuzzy-matching files, search results, etc.
Plug('junegunn/fzf')
Plug('sashaweiss/fzf.vim', { ['branch'] = 'preview_fix' }) -- Use my fork which implements the community's solution to https://github.com/junegunn/fzf.vim/issues/751

-- Show git signs in the gutter
Plug('lewis6991/gitsigns.nvim')

-- Show a nice statusline at the bottom
Plug('bling/vim-airline')

-- Themes for said statusline
Plug('vim-airline/vim-airline-themes')

-- Move by 'subword', i.e. through camelCase and snake_case words
Plug('chaoren/vim-wordmotion')

-- Comment blocks of code
Plug('preservim/nerdcommenter')

-- Automatically close brackets and stuff
Plug('jiangmiao/auto-pairs')

-- OceanicNext colorscheme
Plug('mhartington/oceanic-next')

vim.call('plug#end')


-- ========= Plugin Configuration =========

-- gitsigns

require('gitsigns').setup {
	signs = {
		add = { text = ' +' },
		change = { text = ' ~' },
		changedelete = { text = ' ~' },
		delete = { text = ' -' },
		topdelete = { text = ' -' },
		untracked = { text = ' ?' },
	},
	signs_staged = {
		add = { text = '|+' },
		change = { text = '|~' },
		changedelete = { text = '|~' },
		delete = { text = '|-' },
		topdelete = { text = '|-' },
	},
}

vim.cmd.highlight({ "GitSignsAdd", "guifg=lightgreen", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedAdd", "guifg=lightgreen", "guibg=none" })

vim.cmd.highlight({ "GitSignsChange", "guifg=yellow", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedChange", "guifg=yellow", "guibg=none" })

vim.cmd.highlight({ "GitSignsChangedelete", "guifg=yellow", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedChangedelete", "guifg=yellow", "guibg=none" })

vim.cmd.highlight({ "GitSignsDelete", "guifg=red", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedDelete", "guifg=red", "guibg=none" })

vim.cmd.highlight({ "GitSignsTopdelete", "guifg=red", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedTopdelete", "guifg=red", "guibg=none" })

vim.cmd.highlight({ "GitSignsUntracked", "guifg=green", "guibg=none" })

-- Airline

vim.g.airline_theme = 'base16_ashes'
vim.g.airline_powerline_fonts = 1
vim.g['airline#extensions#tabline#enabled'] = 1      -- Enable the list of buffers
vim.g['airline#extensions#tabline#fnamemod'] = ':t'  -- Show just the filename

-- NERDTree

vim.keymap.set('n', '<leader>nt', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<leader>nf', ':NERDTreeFocus<CR>')

-- NERDCommenter

vim.g.NERDCreateDefaultMappings = 0
vim.g.NERDSpaceDelims = 1
vim.g.NERDCustomDelimiters = { ['swift'] = { ['left'] = '//', ['right'] = '' } }

vim.keymap.set('', '<leader>cc', '<plug>NERDCommenterInvert')

-- Auto-Pairs

vim.g.AutoPairsMultilineClose = 0
vim.g.AutoPairs = { ['{'] = '}' }

-- Subword Motion

vim.g.wordmotion_mappings = {
			['w'] = 'gw',
			['b'] = 'gb',
			['e'] = 'ge',
			['ge'] = '',
			['aw'] = '',
			['iw'] = ''
}


-- FZF

vim.g.fzf_preview_window = 'down:70%'