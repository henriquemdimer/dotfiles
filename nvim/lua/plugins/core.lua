return {
	'AbdelrahmanDwedar/awesome-nvim-colorschemes',
	{
		'lewis6991/gitsigns.nvim',
		event = 'VeryLazy',
		config = function ()
			require('configs.gitsigns')
		end
	},
	{
		'j-hui/fidget.nvim',
		event = 'VeryLazy',
		config = function()
			require('fidget').setup {}
		end
	},
	{
		'ibhagwan/fzf-lua',
		event = 'VeryLazy',
	},
	{
		'wakatime/vim-wakatime',
		event = 'VeryLazy',
	},
	{
		'kdheepak/lazygit.nvim',
		event = 'VeryLazy',
	},
	{
		'github/copilot.vim',
		event = 'VeryLazy',
	},
	{
		'folke/trouble.nvim',
		event = 'VeryLazy',
		config = function()
			require('trouble').setup {}
		end
	},
	{
		'rachartier/tiny-inline-diagnostic.nvim',
		event = 'VeryLazy',
		priority = 1000, -- needs to be loaded in first
		config = function()
			require('tiny-inline-diagnostic').setup()
			vim.diagnostic.config({ virtual_text = false })
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
		'akinsho/toggleterm.nvim',
		event = 'VeryLazy',
		tag = '*',
		config = function()
			require('toggleterm').setup()
		end
	},
	{
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v3.x',
		event = 'VeryLazy',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons',
			'MunifTanjim/nui.nvim',
		},
		config = function()
			require('configs.neotree')
		end
	},
	{
		'folke/which-key.nvim',
		config = function()
			require('configs.which-key')
		end
	},
	{
		'olimorris/codecompanion.nvim',
		event = 'VeryLazy',
		config = function()
			require('codecompanion').setup()
		end,
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-treesitter/nvim-treesitter',
		}
	},
	{
		'nvim-treesitter/nvim-treesitter',
		event = 'VeryLazy',
		config = function()
			require('configs.treesitter');
		end
	},
	{
		'danymat/neogen',
		event = 'VeryLazy',
		config = function()
			require('neogen').setup {}
		end
	},
	{
		'numToStr/Comment.nvim',
		event = 'VeryLazy',
		config = function()
			require('Comment').setup {}
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
		'neovim/nvim-lspconfig',
		event = 'VeryLazy',
		dependencies = {
			{
				'williamboman/mason.nvim',
				event = 'VeryLazy',
			},
			{
				'saghen/blink.cmp',
				branch = 'release',
				event = 'VeryLazy',
			},
			{
				'rafamadriz/friendly-snippets',
				event = 'VeryLazy',
			}
		},
		config = function()
			require('configs.lspconfig')
		end
	}
}
