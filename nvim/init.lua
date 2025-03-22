vim.g.mapleader = " "

require("configs.lazy")
require("configs.keymaps")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.ignorecase = true
vim.diagnostic.config({ virtual_text = false })
