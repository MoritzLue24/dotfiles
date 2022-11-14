local g = vim.g

g.guifont = 'JetBrains Mono Medium Nerd Font Complete Mono'
g.mapleader = ','

-- Update the backpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

-- Neomux keybindings
g.neomux_start_term_app = nil
g.neomux_start_term_vsplit_map = nil
g.neomux_start_term_split_map = '<Leader>t'
g.neomux_default_shell = 'powershell'


