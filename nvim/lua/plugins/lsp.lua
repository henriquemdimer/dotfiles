return {
	{
		'neovim/nvim-lspconfig',
		event = 'VeryLazy',
		dependencies = {
			{
				'williamboman/mason.nvim',
				event = 'VeryLazy',
			},
			{
				'williamboman/mason-lspconfig.nvim',
				event = "VeryLazy"
			},
			{
				'saghen/blink.cmp',
				build = "cargo build --release",
				event = 'VeryLazy',
				config = function()
					require('configs.blink')
				end
			},
			{
				'rafamadriz/friendly-snippets',
				event = 'VeryLazy',
			}
		},
		config = function()
			require('configs.lspconfig')
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		event = 'VeryLazy',
		config = function()
			require('configs.treesitter');
		end
	},
	{
		'windwp/nvim-autopairs',
		event = 'VeryLazy',
		config = function()
			require('nvim-autopairs').setup {}
		end
	},
	{
		'fedepujol/move.nvim',
		event = "VeryLazy",
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
}
