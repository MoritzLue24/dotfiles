-- Context
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 10



-- Filetypes
vim.opt.encoding = 'utf8'
vim.opt.fileencoding = 'utf8'
vim.opt.swapfile = false
vim.opt.backup = false


-- Theme
vim.opt.syntax = 'ON'
vim.opt.termguicolors = true

vim.o.background = 'dark'
vim.cmd.colorscheme('gruvbox')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.g.guifont = 'JetBrains Mono Medium Nerd Font Complete Mono'

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Whitespace
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

