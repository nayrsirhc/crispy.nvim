local Terminal = require("toggleterm.terminal").Terminal

-- Docker
local git_tui = "lazygit"

local Git_client = Terminal:new {
  cmd = git_tui,
  dir = "git_dir",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
}

function Git_client_toggle()
  Git_client:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>lgit", "<cmd>lua Git_client_toggle()<CR>", {noremap = true, silent = true, desc = "Toggle laazygit ui"})
