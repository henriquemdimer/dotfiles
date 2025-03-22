return {
	{
		'lewis6991/gitsigns.nvim',
		event = "VeryLazy",
		lazy = true,
		config = function ()
			require('configs.gitsigns')
		end
	},
	{
		'ms-jpq/chadtree',
		branch = 'chad',
		build = 'python4 -m chadtree deps',
		lazy = true,
		event = "VeryLazy"
	},
	{
		's1n7ax/nvim-terminal',
		event = "VeryLazy",
		lazy = true,
		config = function()
			vim.o.hidden = true
			require('nvim-terminal').setup()
		end,
	},
	{
		"ibhagwan/fzf-lua",
		event = "VeryLazy",
		lazy = true,
		dependencies = {
			{
				"nvim-tree/nvim-web-devicons",
				event = "VeryLazy",
				lazy = true
			}
		},
		opts = {}
	}
}
