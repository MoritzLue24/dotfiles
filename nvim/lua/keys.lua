local map = vim.api.nvim_set_keymap

------------------
-- Coordination --
------------------

map('n', '<leader>e', ':NvimTreeToggle<CR>', {})
map('n', '<leader>f', ':Telescope find_files<CR>', {})
map('n', '<leader>m', ':MarkdownPreview<CR>', {})
map('n', '<leader>l', ':TroubleToggle workspace_diagnostics<CR>', {})
map('n', '<leader>+', ':horizontal resize +10<CR>', {})
map('n', '<leader>#', ':horizontal resize -10<CR>', {})
map('n', '<leader>.', ':vertical resize +10<CR>', {})
map('n', '<leader>-', ':vertical resize -10<CR>', {})

----------------------
-- Code refactoring --
----------------------

map("n", "<leader>s", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
map("n", "<leader>r", "<cmd>Lspsaga rename<CR>", { silent = true })
map("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
map("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
map("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
map("n","<leader>o", "<cmd>LSoutlineToggle<CR>",{ silent = true })
map("n", "<leader>d", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

