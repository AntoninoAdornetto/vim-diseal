-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- themes
	use 'Mofiqul/vscode.nvim'
	use 'Mofiqul/dracula.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'shaunsingh/nord.nvim'

	-- debuggers
	use 'mfussenegger/nvim-dap'
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use 'leoluz/nvim-dap-go'
	use 'theHamsta/nvim-dap-virtual-text' 

	-- testing
	use 'vim-test/vim-test'

	-- java
	use 'mfussenegger/nvim-jdtls'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive') -- git
	use('tpope/vim-commentary') -- gcc comments

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use 'windwp/nvim-ts-autotag'

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

	use 'nvim-tree/nvim-web-devicons'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- will use later. netrw still OP imo
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- lsp
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required

				  -- prettier format
		{'jose-elias-alvarez/null-ls.nvim'},
		{'MunifTanjim/prettier.nvim'},
	}
}
end)
