require('blink.cmp').setup {
	completion = {
		documentation = { auto_show = false, auto_show_delay_ms = 500 },
	},
	keymap = {
		preset = 'none',

		['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
		['<C-z>'] = { 'hide', 'fallback' },

		['<Tab>'] = {
			function(cmp)
				if require('blink.cmp.completion.windows.menu').win:is_open() == false then
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
				if require('blink.cmp.completion.windows.menu').win:is_open() == false then
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
