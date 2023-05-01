require'toggleterm'.setup {
  shade_terminals = true
}

-- Keymap for toggle term vertical split
vim.keymap.set({"n","t"}, "<A-h>", function() require("toggleterm").toggle() end, {desc = "Toggle terminal"})
