-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- { 'projekt0n/github-nvim-theme', tag = 'v0.0.7' }, OLD THEME
  { "catppuccin/nvim", name = "catppuccin" },

  { 'nvim-treesitter/nvim-treesitter', cmd = "TSUpdate" },

  { 'theprimeagen/harpoon' },

  {'mbbill/undotree'},

  {'tpope/vim-fugitive'},

  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  cmd = 'MasonUpdate'
	  },

      {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
    }
  },

  { 'mfussenegger/nvim-dap' },

  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },

  { 'folke/neodev.nvim' },

  {'nvim-tree/nvim-web-devicons'},

  {'nvim-lualine/lualine.nvim'},

  {"NvChad/nvterm"},

  {
      'Exafunction/codeium.vim',
        config = function ()
            -- Change '<C-g>' here to any keycode you like.
            vim.keymap.set('i', '<C-a>', function () return vim.fn['codeium#Accept']() end, { expr = true })
            vim.keymap.set('i', '<C-n>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
            vim.keymap.set('i', '<C-b,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
            vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
        end
  },

  {"nvim-tree/nvim-tree.lua"},

  {'romgrk/barbar.nvim', dependencies = 'nvim-web-devicons'},

})
