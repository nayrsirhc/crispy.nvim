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

local plugins = {
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

    { 'hrsh7th/cmp-nvim-lua' },
    { 'hrsh7th/cmp-nvim-lsp-signature-help' },
    { 'hrsh7th/cmp-vsnip' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-buffer'},
    { 'hrsh7th/vim-vsnip' },

    { 'mfussenegger/nvim-dap' },

    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },

    { 'folke/neodev.nvim' },

    {'nvim-tree/nvim-web-devicons'},

    {'nvim-lualine/lualine.nvim'},

    -- {"NvChad/nvterm"}, OLD TERM

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

    { "lukas-reineke/indent-blankline.nvim" },

    { 'numToStr/Comment.nvim' },

    { 'MunifTanjim/nui.nvim' },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },

    {
        'miversen33/netman.nvim',
        -- config = true
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        -- config = true
    },
    'lewis6991/gitsigns.nvim',
    {
        'j-hui/fidget.nvim',
        branch = "legacy",
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
    {
        "Pocco81/auto-save.nvim",
	    config = function()
		    require("auto-save").setup {}
        end,
    },
    'dag/vim-fish',
    {
        "ellisonleao/glow.nvim",
        config = true,
        cmd = "Glow"
    },
    'sansyrox/vim-python-virtualenv',
    'towolf/vim-helm',
    'neomake/neomake',
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        config = function ()
            require("barbecue").setup({
                theme = "catppuccin",
            })
        end,
    },
    {
        'leoluz/nvim-dap-go',
        config = function()
            require('dap-go').setup()
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to { the notification view.},
            --   If not available, we { `mini` as the fallback},
            "rcarriga/nvim-notify",
        }
    },
    'mhartington/formatter.nvim',
}

return require('lazy').setup(plugins)
