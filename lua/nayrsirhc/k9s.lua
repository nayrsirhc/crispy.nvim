local Terminal = require("toggleterm.terminal").Terminal

-- Docker
local docker_tui = "k9s"

local K9s_client = Terminal:new {
  cmd = docker_tui,
  dir = "git_dir",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
}

function K9s_client_toggle()
  K9s_client:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>k9s", "<cmd>lua K9s_client_toggle()<CR>", {noremap = true, silent = true, desc = "Toggle K9s"})
