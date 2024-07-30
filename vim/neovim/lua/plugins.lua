-- ========= Plugin Load =========
--
-- `vim-plug` must be installed: https://github.com/junegunn/vim-plug

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- File browsing
Plug('scrooloose/nerdtree')

-- Highlight trailing whitespace
Plug('ntpeters/vim-better-whitespace')

-- FZF for fuzzy-matching files, search results, etc.
Plug('junegunn/fzf')
Plug('sashaweiss/fzf.vim', { ['branch'] = 'preview_fix' }) -- Use my fork which implements the community's solution to https://github.com/junegunn/fzf.vim/issues/751

-- Show git signs in the gutter
Plug('lewis6991/gitsigns.nvim')

-- Show a nice statusline at the bottom
Plug('bling/vim-airline')

-- Themes for said statusline
Plug('vim-airline/vim-airline-themes')

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
		add = { text = '+' },
		change = { text = '~' },
		changedelete = { text = '~' },
		delete = { text = '-' },
		topdelete = { text = '-' },
		untracked = { text = '?' },
	},
	signs_staged = {
		add = { text = '+' },
		change = { text = '~' },
		changedelete = { text = '~' },
		delete = { text = '-' },
		topdelete = { text = '-' },
	},
}

vim.cmd.highlight({ "GitSignsAdd", "guifg=lightgreen", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedAdd", "guifg=lightgreen", "guibg=darkgreen" })

vim.cmd.highlight({ "GitSignsChange", "guifg=yellow", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedChange", "guifg=yellow", "guibg=darkyellow" })

vim.cmd.highlight({ "GitSignsChangedelete", "guifg=yellow", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedChangedelete", "guifg=yellow", "guibg=darkyellow" })

vim.cmd.highlight({ "GitSignsDelete", "guifg=red", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedDelete", "guifg=red", "guibg=darkred" })

vim.cmd.highlight({ "GitSignsTopdelete", "guifg=red", "guibg=none" })
vim.cmd.highlight({ "GitSignsStagedTopdelete", "guifg=red", "guibg=darkred" })

vim.cmd.highlight({ "GitSignsUntracked", "guifg=blue", "guibg=none" })

vim.api.nvim_create_user_command('Blame', 'Gitsigns blame', {})

-- Airline

vim.g.airline_theme = 'base16_ashes'
vim.g.airline_powerline_fonts = 1
vim.g['airline#extensions#tabline#enabled'] = 1      -- Enable the list of buffers
vim.g['airline#extensions#tabline#fnamemod'] = ':t'  -- Show just the filename

vim.cmd([[
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['file', ' ', 'readonly'])
	let g:airline_section_c = airline#section#create([])
	let g:airline_section_x = airline#section#create(['ffenc'])
	let g:airline_section_y = airline#section#create(['filetype'])
	let g:airline_section_z = airline#section#create(['Ln: %l of %L, Col: %c'])
	let g:airline_section_warning = airline#section#create([])
	let g:airline_section_error = airline#section#create([])
]])

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
