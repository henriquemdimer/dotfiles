local lspconfig = require('lspconfig')
require('mason').setup {}
require('blink.cmp').setup {
	completion = {
		documentation = { auto_show = false, auto_show_delay_ms = 500 },
	},
	keymap = {
		preset = 'none',

		['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
		['<C-e>'] = { 'hide', 'fallback' },

		['<Tab>'] = {
			function(cmp)
				if cmp.snippet_active() then
					return cmp.snippet_forward()
				else
					return cmp.select_next()
				end
			end,
			'snippet_forward',
			'fallback'
		},
		['<S-Tab>'] = {
			function(cmp)
				if cmp.snippet_active() then
					return cmp.snippet_backward()
				else
					return cmp.select_prev()
				end
			end,
			'snippet_forward',
			'fallback'
		},

		['<Up>'] = { 'select_prev', 'fallback' },
		['<Down>'] = { 'select_next', 'fallback' },
		['<C-p>'] = { 'select_prev', 'fallback' },
		['<C-n>'] = { 'select_next', 'fallback' },

		['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
		['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

		['<CR>'] = { 'accept', 'fallback' }
	},
	signature = {
		enabled = true
	},
	sources = {
		-- Remove 'buffer' if you don't want text completions, by default it's only enabled when LSP returns no items
		default = { 'lsp', 'path', 'snippets', 'buffer' },
		-- Disable cmdline completions
		cmdline = {},
	},
}

local servers = { 'lua_ls', 'ts_ls', 'biome' }
local capabilities = require('blink.cmp').get_lsp_capabilities()

for _, server in pairs(servers) do
	lspconfig[server].setup {
		capabilities = capabilities
	}
end
