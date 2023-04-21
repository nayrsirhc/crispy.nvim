require("nvterm").setup()

vim.keymap.set({"n","t"}, "<A-h>", function () require("nvterm.terminal").toggle "horizontal" end)
vim.keymap.set({"n","t"}, "<A-v>", function () require("nvterm.terminal").toggle "vertical" end)
vim.keymap.set({"n","t"}, "<A-f>", function () require("nvterm.terminal").toggle "float" end)

