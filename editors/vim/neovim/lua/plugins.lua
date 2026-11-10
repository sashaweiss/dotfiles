-- ========= Plugin Load =========
--
-- Managed by the built-in `vim.pack` (Neovim 0.12+). Missing plugins are
-- installed on startup; update with `:lua vim.pack.update()`.

local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add({
  -- File browsing
  gh('preservim/nerdtree'),

  -- Highlight trailing whitespace
  gh('ntpeters/vim-better-whitespace'),

  -- FZF for fuzzy-matching files, search results, etc.
  gh('junegunn/fzf'),
  gh('junegunn/fzf.vim'),

  -- Show git signs in the gutter
  gh('lewis6991/gitsigns.nvim'),

  -- Show a nice statusline at the bottom
  gh('vim-airline/vim-airline'),

  -- Themes for said statusline
  gh('vim-airline/vim-airline-themes'),

  -- Automatically close brackets and stuff
  gh('jiangmiao/auto-pairs'),

  -- OceanicNext colorscheme
  gh('mhartington/oceanic-next'),

  -- Render Markdown in-buffer
  gh('MeanderingProgrammer/render-markdown.nvim'),
}, { confirm = false })


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

vim.api.nvim_create_user_command('GitBlame', 'Gitsigns blame', {})
vim.api.nvim_create_user_command('GitNext', 'Gitsigns next_hunk', {})
vim.api.nvim_create_user_command('GitPrev', 'Gitsigns prev_hunk', {})

-- NERDTree

vim.api.nvim_create_user_command('File', 'NERDTreeFind', {})

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

-- NERDCommenter

vim.g.NERDCreateDefaultMappings = 0
vim.g.NERDSpaceDelims = 1
vim.g.NERDCustomDelimiters = { ['swift'] = { ['left'] = '//', ['right'] = '' } }

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
