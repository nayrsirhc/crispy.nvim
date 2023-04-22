require('nayrsirhc')

local packerPath = vim.fn.stdpath('data') .. "/site/pack/packer/start/packer.nvim"

if not vim.loop.fs_stat(packerPath) then
  vim.fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    packerPath,
  }
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
