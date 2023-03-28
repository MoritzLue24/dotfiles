vim.g.mapleader = ","

------------------
-- Coordination --
------------------

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>m', '<cmd>MarkdownPreview<CR>')
vim.keymap.set('n', '<leader>+', '<cmd>horizontal resize +10<CR>')
vim.keymap.set('n', '<leader>#', '<cmd>horizontal resize -10<CR>')
vim.keymap.set('n', '<leader>.', '<cmd>vertical resize +10<CR>')
vim.keymap.set('n', '<leader>-', '<cmd>vertical resize -10<CR>')

---------------
-- Debugging --
---------------

vim.keymap.set('n', '<F5>', '<cmd>DapContinue<CR>')
vim.keymap.set('n', '<F10>', '<cmd>DapStepOver<CR>')
vim.keymap.set('n', '<F11>', '<cmd>DapStepInto<CR>')
vim.keymap.set('n', '<F12>', '<cmd>DapStepOut<CR>')
vim.keymap.set('n', '<leader>b', '<cmd>DapToggleBreakpoint<CR>')

----------------------
-- Code refactoring --
----------------------

-- vim.keymap.set("n", "<leader>s", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>r", "<cmd>Lspsaga rename<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
-- vim.keymap.set("n","<leader>o", "<cmd>LSoutlineToggle<CR>",{ silent = true })
-- vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
