return {
	'AbdelrahmanDwedar/awesome-nvim-colorschemes',
	{
		'lewis6991/gitsigns.nvim',
		event = 'VeryLazy',
		config = function()
			require('configs.gitsigns')
		end
	},
	{
		'folke/todo-comments.nvim',
		event = 'VeryLazy',
		config = function()
			require('todo-comments').setup {}
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
		"kawre/leetcode.nvim",
		event = 'VeryLazy',
		dependencies = {
			"ibhagwan/fzf-lua",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require('leetcode').setup {}
		end
	},
	{
		'ibhagwan/fzf-lua',
		event = 'VeryLazy',
	},
	-- {
	-- 	'wakatime/vim-wakatime',
	-- 	event = 'VeryLazy',
	-- },
	{
		'kdheepak/lazygit.nvim',
		event = 'VeryLazy',
	},
	{
		'rachartier/tiny-inline-diagnostic.nvim',
		event = 'VeryLazy',
		priority = 1000, -- needs to be loaded in first
		config = function()
			require('tiny-inline-diagnostic').setup {}
			vim.diagnostic.config({ virtual_text = false })
		end
	},
	{
		'akinsho/toggleterm.nvim',
		event = 'VeryLazy',
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
		lazy = false,
		config = function()
			require('configs.which-key')
		end
	},
	{
		'olimorris/codecompanion.nvim',
		event = 'VeryLazy',
		config = function()
			require("codecompanion").setup({
				adapters = {
					openai = function()
						return require("codecompanion.adapters").extend("openai", {
							env = {
								api_key =
								"",
							},
							schema = {
								model = {
									default = "gpt-4o"
								}
							}
						})
					end,
				},
				strategies = {
					chat = {
						adapter = "openai",
					},
					inline = {
						adapter = "openai",
					},
				},
			})
		end,
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-treesitter/nvim-treesitter',
		}
	},
}
