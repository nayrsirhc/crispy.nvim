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
    }
}

require("neo-tree").setup(settings)

vim.keymap.set("n", "<A-n>", ":NeoTreeFocusToggle<CR>")
vim.keymap.set("n", "<C-A-n>", ":NeoTreeFloatToggle<CR>")
vim.keymap.set("n", "<C-A-g>", ":Neotree focus git_status<CR>")
