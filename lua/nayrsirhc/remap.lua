vim.g.mapleader = " "
vim.keymap.set("n","<leader>e", vim.cmd.Ex)
vim.keymap.set("n","<leader>ps", vim.cmd.PackerSync)

-- Move magic visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
