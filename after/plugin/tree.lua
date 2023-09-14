local settings = {
    enable_diagnostics = true,
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
            hide_gitignored = false,
            hide_hidden = false,
        }
    },
    window = {
        position = "right",
        width = 60,
    },
    sources = {
            "filesystem",
            "git_status",
    },
    source_selector = {
        winbar = true,
        sources = {
            {
                source = "filesystem",
                display_name = "  Files"
            },
            {
                source = "git_status",
                display_name = "  Git"
            },
        },
    },
}

require("neo-tree").setup(settings)

vim.keymap.set("n", "<A-n>", ":NeoTreeFocusToggle<CR>")
