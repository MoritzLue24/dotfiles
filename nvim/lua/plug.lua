
-- returns the require for use in `config` parameter of packer's use
local function get_config(name)
	return string.format('require("config/%s")', name)
end

-- Initialize Packer
local packer = require('packer')
packer.init({
	package_root = vim.fn.stdpath('config') .. '/site/pack',
	compile_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua'
})

-- Install plugins
packer.startup(function(use)
	use('wbthomason/packer.nvim')

	------------------
	-- Developement --
	------------------

	-- File explorer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = 'nvim-tree/nvim-web-devicons',
		config = function() require('nvim-tree').setup() end
	}
	-- File finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = get_config('telescope')
	}
	-- Auto close pairs
	use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end }
	-- Terminal & tmux
	use('nikvdp/neomux')
	-- Commenting
	use('tpope/vim-commentary')
	-- Markdown preview
	use { 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = { 'markdown' }, }
	
	---------
	-- LSP --
	---------

	-- Collection of common configurations for the Nvim LSP client
	use('neovim/nvim-lspconfig')
	-- Visualize lsp process
	use { 'j-hui/fidget.nvim', config = function() require('fidget').setup() end }
	-- Autocompletion framework
	use('hrsh7th/nvim-cmp')
	use {
		-- cmp LSP completion
		'hrsh7th/cmp-nvim-lsp',
		-- cmp Snippet completion
		'hrsh7th/cmp-vsnip',
		-- cmp Path completion
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-buffer',
		after = { 'hrsh7th/nvim-cmp' },
		requires = { 'hrsh7th/nvim-cmp' },
	}
	-- Snippet engine
	use('hrsh7th/vim-vsnip')
	-- Adds extra functionality over rust analyzer
	use('simrat39/rust-tools.nvim')
	-- Better UI
	use { 'glepnir/lspsaga.nvim', config = function() require('lspsaga').init_lsp_saga() end }
	-- List errors
	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('trouble').setup() end
	}

	-----------
	-- Theme --
	-----------

	-- Colorscheme
    use('ellisonleao/gruvbox.nvim')
	-- Status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('lualine').setup() end
	}

end)
