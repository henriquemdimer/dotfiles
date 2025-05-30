require("mason").setup()
require("mason-lspconfig").setup()
local capabilities = require('blink.cmp').get_lsp_capabilities()

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name)  -- default handler (optional)
		require("lspconfig")[server_name].setup {
			capabilities = capabilities
		}
	end,
	-- Next, you can provide a dedicated handler for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	["vtsls"] = function ()
		require("lspconfig").vtsls.setup {
			init_options = {
				preferences = {
					includeCompletionsForModuleExports = false
				}
			}
		}
	end,
}
