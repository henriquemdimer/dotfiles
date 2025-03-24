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
	},
	{
	  "mikavilpas/yazi.nvim",
	  event = "VeryLazy",
	  dependencies = { "folke/snacks.nvim", lazy = true },
	  keys = {
	    {
	      "<c-up>",
	      "<cmd>Yazi toggle<cr>",
	      desc = "Resume the last yazi session",
	    },
	  },
	  ---@type YaziConfig | {}
	  opts = {
	    -- if you want to open yazi instead of netrw, see below for more info
	    open_for_directories = false,
	    keymaps = {
	      show_help = "<f1>",
	    },
	  },
	  -- 👇 if you use `open_for_directories=true`, this is recommended
	  init = function()
	    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
	    -- vim.g.loaded_netrw = 1
	    vim.g.loaded_netrwPlugin = 1
	  end,
	},
	{
		'wakatime/vim-wakatime',
		lazy = false
	}
}
