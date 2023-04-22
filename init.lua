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
