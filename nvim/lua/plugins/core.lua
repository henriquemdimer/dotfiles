return {
	{
		'AbdelrahmanDwedar/awesome-nvim-colorschemes',
	},
	{
		'ibhagwan/fzf-lua',
	},
	{
		'wakatime/vim-wakatime',
		event = 'CursorMoved',
	},
	{
		'kdheepak/lazygit.nvim',
		event = 'CursorMoved',
	},
	{
		'github/copilot.vim',
		event = 'CursorMoved',
	},
	{
		'folke/trouble.nvim',
		event = 'CursorMoved',
		config = function()
			require('trouble').setup {}
		end
	},
	{
		'fedepujol/move.nvim',
		config = function()
			require('move').setup {}

			local opts = { noremap = true, silent = true }
			-- Normal-mode commands
			vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
			vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)

			-- Visual-mode commands
			vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
			vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
		end
	},
	{
		"akinsho/toggleterm.nvim",
		event = 'CursorMoved',
		tag = '*',
		config = function()
			require("toggleterm").setup()
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	},
	{
		'folke/which-key.nvim',
		config = function()
			require('configs.which-key')
		end
	},
	{
		'olimorris/codecompanion.nvim',
		event = 'CursorMoved',
		config = function()
			require("codecompanion").setup()
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		}
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function ()
			require('configs.treesitter');
		end
	},
	{
		'danymat/neogen',
		event = 'CursorMoved',
		config = function()
			require('neogen').setup {}
		end
	},
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup {}
		end
	},
	{
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup {}
		end
	},
	{
		'neovim/nvim-lspconfig',
		event = 'CursorMoved',
		dependencies = { 'williamboman/mason.nvim', { 'saghen/blink.cmp', branch = "release" }, 'rafamadriz/friendly-snippets' },
		config = function()
			require('configs.lspconfig')
		end
	}
}
