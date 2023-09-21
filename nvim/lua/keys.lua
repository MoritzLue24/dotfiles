vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines (auto indent)
vim.keymap.set("v", ",", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "m", ":m '<-2<CR>gv=gv")

-- Center cursor at half page jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center cursor at search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clear highlighted
vim.keymap.set("n", "q", ":noh<CR>")

-- Keep paste buffer when replacing
vim.keymap.set("x", "<leader>p", "\"_dP")

-- vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')
-- vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<CR>')
-- vim.keymap.set('n', '<leader>m', '<cmd>MarkdownPreview<CR>')
-- vim.keymap.set('n', '<leader>+', '<cmd>horizontal resize +10<CR>')
-- vim.keymap.set('n', '<leader>#', '<cmd>horizontal resize -10<CR>')
-- vim.keymap.set('n', '<leader>.', '<cmd>vertical resize +10<CR>')
-- vim.keymap.set('n', '<leader>-', '<cmd>vertical resize -10<CR>')

---------------
-- Debugging --
---------------

-- vim.keymap.set('n', '<F5>', '<cmd>DapContinue<CR>')
-- vim.keymap.set('n', '<F10>', '<cmd>DapStepOver<CR>')
-- vim.keymap.set('n', '<F11>', '<cmd>DapStepInto<CR>')
-- vim.keymap.set('n', '<F12>', '<cmd>DapStepOut<CR>')
-- vim.keymap.set('n', '<leader>b', '<cmd>DapToggleBreakpoint<CR>')
