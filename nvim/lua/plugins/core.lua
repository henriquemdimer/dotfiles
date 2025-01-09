local function bootstrap_pckr()
	local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

	if not (vim.uv or vim.loop).fs_stat(pckr_path) then
		vim.fn.system({
			'git',
			'clone',
			"--filter=blob:none",
			'https://github.com/lewis6991/pckr.nvim',
			pckr_path
		})
	end

	vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
	'AbdelrahmanDwedar/awesome-nvim-colorschemes',
	'ibhagwan/fzf-lua',
	'wakatime/vim-wakatime',
	'kdheepak/lazygit.nvim',
	'github/copilot.vim',
	{
		'folke/trouble.nvim',
		config = function ()
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
		tag = '*',
		config = function()
			require("toggleterm").setup()
		end
	},
	{
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('nvim-tree').setup {}
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
		config = function()
			require("codecompanion").setup()
		end,
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		}
	},
	{
		'danymat/neogen',
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
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('configs.treesitter')
		end
	},
	{
		'neovim/nvim-lspconfig',
		requires = { 'williamboman/mason.nvim', { 'saghen/blink.cmp', branch = "release" }, 'rafamadriz/friendly-snippets' },
		config = function()
			require('configs.lspconfig')
		end
	}
}
