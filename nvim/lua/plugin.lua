
-- returns the require for use in `config` parameter of packer's use
local function get_config(name)
	return string.format('require("config/%s")', name)
end

-- Packer path
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

-- Initialize Packer
local packer = require('packer')
packer.init({
	package_root = vim.fn.stdpath('config') .. '/site/pack',
	compile_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua'
})

-- Install plugins
packer.startup(function(use)
	use('wbthomason/packer.nvim')
	
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
	use {
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

end)
