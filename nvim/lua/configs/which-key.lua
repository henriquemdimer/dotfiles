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
	{ "<leader>cr", ":lua vim.lsp.buf.rename()<CR>",                desc = "Rename code" },
	{ "<leader>ci", ":lua vim.lsp.buf.implementation()<CR>",        desc = "Find Implementation" },
	{ "<leader>e",  ":Neotree focus<CR>",                           desc = "Focus File Tree" },
	{ "<leader>t",  ":ToggleTerm<CR>",                              desc = "Open Terminal" },
	{ "<leader>g",  ":LazyGit<CR>",                                 desc = "LazyGit" }
})
