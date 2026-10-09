-- ========= Remappings =========

-- Enter command mode
vim.keymap.set('i', 'jk', '<ESC>')

-- Buffers
vim.keymap.set('n', '<leader>t', ':enew<CR>')
vim.keymap.set('n', '<leader>=', ':bnext<CR>')
vim.keymap.set('n', '<leader>-', ':bprevious<CR>')
vim.keymap.set('n', '<leader>w', ':bprevious <BAR> bd #<CR>')
vim.keymap.set('n', '<leader>W', ':bprevious <BAR> bd! #<CR>')

-- Move by display lines
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'j', 'gj')

-- Copy to system (only applicable on Mac)
vim.keymap.set('', '<leader>y', '"*y')

-- Override * to keep the cursor at the current location after searching
vim.keymap.set('n', '*', ':keepjumps normal! mi*`i<CR>')

-- Keybindings for fav fzf-vim commands
vim.keymap.set('n', '<C-p>', ':Files<CR>')
vim.keymap.set('n', '<M-b>', ':Buffers<CR>')

-- NERDTree
vim.keymap.set('n', '<leader>nt', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<leader>nf', ':NERDTreeFocus<CR>')
