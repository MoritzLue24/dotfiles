vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
    use { "wbthomason/packer.nvim" }
    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        requires = {{"nvim-lua/plenary.nvim"}}
    }
    use { "windwp/nvim-autopairs" }
    -- use { "rose-pine/neovim", as = "rose-pine" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }
    use { "theprimeagen/harpoon" }
    use { "mbbill/undotree" }
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"L3MON4D3/LuaSnip"},
        }
    }
end)
