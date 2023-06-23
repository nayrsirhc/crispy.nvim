vim.g.mapleader = " "

-- Move magic visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selection down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move selection up"})

-- Yank into system clipboard
vim.keymap.set({"n","v"}, "<leader>y", "\"+y", {desc = "Yank into system clipboard"})
vim.keymap.set({"n","v"}, "<leader>Y", "\"+Y", {desc = "Yank into system clipboard"})

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", "\"+p", {desc = "Paste from system clipboard"})
vim.keymap.set("n", "<leader>P", "\"+P", {desc = "Paste from system clipboard"})

-- Git add and commit
vim.keymap.set("n", "<leader>ga", ":Git add %:p<CR>", {desc = "Git add current file"})
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", {desc = "Git commit"})

-- Git push
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", {desc = "Git push"})

-- UndoTree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", {desc = "Toggle UndoTree"})
vim.keymap.set("n", "<leader>uf", ":UndotreeFocus<CR>", {desc = "Focus UndoTree"})

-- Toggle Mason
vim.keymap.set("n", "<leader>m", ":Mason<CR>", {desc = "Toggle Mason"})

-- Kill Window
vim.keymap.set("n", "<leader>x", ":BufferClose<CR>", {desc = "Close Buffer"})

-- Run LazySync
vim.keymap.set("n", "<leader>ls", ":Lazy<CR>", {desc = "Open LazySync"})

-- Open File Vertical Split
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", {desc = "Open File Vertical Split"})

-- Open FIle Horizontal Split
vim.keymap.set("n", "<leader>hs", ":split<CR>", {desc = "Open FIle Horizontal Split"})

-- Run Current python3 file
vim.keymap.set("n", "<leader>py", ":!python3 %<CR>", {desc = "Run Current python3 file"})

-- Run Gitsigns toggle blame line
vim.keymap.set("n", "<A-b>", ":Gitsigns blame_line<CR>", {desc = "Run Gitsigns toggle blame line"})

