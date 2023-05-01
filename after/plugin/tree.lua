local settings = {
    enable_diagnostics = false,
    default_component_configs = {
        modified = {
            symbol = '',
        },
        git_status = {
            symbols = {
                modified = '󰷫',
                added = '󰹢',
                deleted = '󰚌',
                renamed = '󰓺',
                untracked = '󰝴',
                ignored = '󰊠',
                unstaged = '󰘻',
                staged = '󰘽',
                conflict = '󰀩',
            }
        },
    },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
        }
    },
    window = {
        position = "right",
        width = 50,
    },
    sources = {
            "filesystem",
            "netman.ui.neo-tree",
            "git_status",
            "buffers",
    },
    source_selector = {
        winbar = true,
        sources = {
            {
                source = "filesystem",
                display_name = "  Files"
            },
            {
                source = "remote",
                display_name = "󰱔  Remote"
            },
            {
                source = "git_status",
                display_name = "  Git"
            },
            {
                source = "buffers",
                display_name = "󰊓  Buffers"
            },
        },
    },
}

require("neo-tree").setup(settings)

vim.keymap.set("n", "<A-n>", ":NeoTreeFocusToggle<CR>")
vim.keymap.set("n", "<C-A-n>", ":NeoTreeFloatToggle<CR>")
vim.keymap.set("n", "<C-A-g>", ":Neotree focus git_status<CR>")
