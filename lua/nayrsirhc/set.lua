-- Nice fat cursor
vim.opt.guicursor = ""

-- Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set Tab spacing to 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Use VIM Smart indenting
vim.opt.smartindent = true

-- Don't wrap lines
vim.opt.wrap = false

-- Get rid of annoying swap file
vim.opt.swapfile = false
vim.opt.backup = false
-- Persistent undodir
vim.opt.undodir = os.getenv("HOME") .. "/.undodir"
vim.opt.undofile = true

-- Add some nice search capabilities
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Set Term GUI colours
vim.opt.termguicolors = true
