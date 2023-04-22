vim.g.mapleader = " "
vim.keymap.set("n","<leader>e", vim.cmd.Ex)
vim.keymap.set("n","<leader>ps", vim.cmd.PackerSync)

-- Move magic visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

-- Toggle NvimTree
vim.keymap.set("n", "<A-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>nf", ":NvimTreeFocus<CR>")

-- Git add and commit
vim.keymap.set("n", "<leader>ga", ":Git add %:p<CR>")
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")

-- Git push
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")

-- UndoTree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
vim.keymap.set("n", "<leader>uf", ":UndotreeFocus<CR>")
