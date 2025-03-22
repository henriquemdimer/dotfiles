vim.keymap.set("n", "<leader>e", ":CHADopen<CR>", { desc = "Open file tree" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Enter normal mode while in terminal" })

-- Fuzzy finder
vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>fb", ":FzfLua buffers<CR>", { desc = "Fuzzy find buffers" })
vim.keymap.set("n", "<leader>fg", ":FzfLua grep<CR>", { desc = "Fuzzy find grep" })
vim.keymap.set("n", "<leader>fgp", ":FzfLua grep_project<CR>", { desc = "Fuzzy find grep project" })
vim.keymap.set("n", "<leader>flf", ":FzfLua lsp_finder<CR>", { desc = "Fuzzy lsp find" })
vim.keymap.set("n", "<leader>flg", ":FzfLua live_grep<CR>", { desc = "Fuzzy live grep" })

-- Code actions
vim.keymap.set("n", "<leader>ca", ":FzfLua lsp_code_actions<CR>", { desc = "Code actions" })
vim.keymap.set("n", "<leader>cf", ":lua vim.lsp.buf.format({ async = true })<CR>", { desc = "Format code" })
vim.keymap.set("n", "<leader>cr", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename" })
vim.keymap.set("n", "<leader>ci",
	':lua vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}})<CR>',
	{ desc = "Organize Imports (Typescript Only)" }
)

-- Colorschemes
vim.keymap.set("n", "<leader>ta", ":FzfLua awesome_colorschemes<CR>", { desc = "Awesome Colorschemes" })
vim.keymap.set("n", "<leader>tc", ":FzfLua colorschemes<CR>", { desc = "Colorschemes" })
