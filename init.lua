require("nayrsirhc.remap")
require("nayrsirhc.lazy")
require("nayrsirhc.set")
require("nayrsirhc.lazydocker")
require("nayrsirhc.lazygit")
require("nayrsirhc.docui")
require("nayrsirhc.k9s")
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.ignorecase = true
vim.o.smartcase = true

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ timeout = 300 })
  end,
  group = highlight_group,
  pattern = '*',
})
