
-- returns the require for use in `config` parameter of packer's use
local function get_config(name)
	return string.format('require("config/%s")', name)
end


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Install plugins
return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')
	
	-- File explorer
	use{'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons', config = function() require('nvim-tree').setup() end}
	-- File finder 
	use{'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim', config = get_config('telescope')}
	-- Highlighting
	use{'nvim-treesitter/nvim-treesitter', config = get_config('treesitter')}
	-- Auto close pairs
	use{'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end}
	-- Commenting
	use{'tpope/vim-commentary'}
	-- Markdown preview
	use{'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = {'markdown'} end, ft = {'markdown'}}
	
	-- Colorscheme
    use{'ellisonleao/gruvbox.nvim'}
	-- Status line
	use{'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, config = function() require('lualine').setup() end}
	
	-- LSP
	use{
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'}
		},
		config = get_config('lsp-zero')
	}
	
	-- Debugging
	use{'mfussenegger/nvim-dap', config = get_config('dap')}
	use{'theHamsta/nvim-dap-virtual-text', config = function() require('nvim-dap-virtual-text').setup() end}

e
