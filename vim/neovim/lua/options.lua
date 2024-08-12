--  = ======== General Options =========

-- Use UTF-8
vim.opt.encoding = 'utf-8'

-- Highlight
vim.opt.hlsearch = true

-- Line numbers
vim.opt.number = true

-- Delete like normal
vim.opt.backspace = indent,eol,start

-- Map leader to backslash
vim.g.mapleader = "\\"

-- Word wrap on line break
vim.opt.linebreak = true

-- Wrap lines by default
vim.opt.wrap = true

-- Always show the gutter
vim.opt.signcolumn = "yes"

-- Show as much of wrapped lines going off the screen as possible
vim.opt.display:append { "lastline" }

-- Allow unsaved buffers to be hidden
vim.opt.hidden = true

-- Completion style
vim.opt.completeopt = longest,menuone

-- Highlight trailing whitespace
vim.fn.matchadd('errorMsg', [[\s\+$]])

-- New panes to right and bottom
vim.opt.splitright = true

-- Tabs and indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.smartindent = true

-- Four space tabs for some languages
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = { "python", "swift" },
  command = "setlocal tabstop=4 shiftwidth=4"
})

-- Disable auto-indenting for Markdown, since it's got funky ideas
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = "markdown",
  callback = function() vim.opt.indentexpr='' end,
})

-- Map custom extensions to known filetypes
vim.filetype.add({
  extension = {
    jsonproto = 'json5',
    json = 'json5'
  }
})

-- Search case-sensitive if capital in pattern, otherwise insensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Incremental search
vim.opt.incsearch = true

-- Bash-style completions for file names
vim.opt.wildmode = { 'longest', 'list', 'full' }
vim.opt.wildmenu = true

-- Buffer space around cursor when scrolling
vim.opt.scrolloff = 1

-- Use angle brackets as a match pair
vim.opt.matchpairs = { '(:)', '{:}', '[:]', '<:>' }
