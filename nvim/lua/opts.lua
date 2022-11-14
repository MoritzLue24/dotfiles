local opt = vim.opt
local cmd = vim.api.nvim_command

-- Context
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'

-- Filetypes
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- Theme
opt.syntax = 'ON'
opt.termguicolors = true
cmd('colorscheme gruvbox')

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- Whitespace
opt.expandtab = false
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

