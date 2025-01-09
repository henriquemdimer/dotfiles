local wk = require("which-key")

wk.add({
	{ "<leader>f",  desc = "+Fuzzy Finder" },
	{ "<leader>ff", ":FzfLua files<CR>",                            desc = "Fuzzy Find Files" },
	{ "<leader>fg", ":FzfLua grep<CR>",                             desc = "Fuzzy Find Text" },
	{ "<leader>fb", ":FzfLua buffers<CR>",                          desc = "Fuzzy Find Buffers" },
	{ "<leader>fh", ":FzfLua help_tags<CR>",                        desc = "Fuzzy Find Help Tags" },
	{ "<leader>c",  desc = "+Code Actions" },
	{ "<leader>cf", ":lua vim.lsp.buf.format({ async = true})<CR>", desc = "Format Code" },
	{ "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>",           desc = "Code Actions" },
	{ "<leader>e",  ":NvimTreeFocus<CR>",                           desc = "Focus File Tree" },
	{ "<leader>t",  ":ToggleTerm<CR>",                              desc = "Open Terminal" },
	{ "<leader>g",  ":LazyGit<CR>",                                 desc = "LazyGit" }
})
