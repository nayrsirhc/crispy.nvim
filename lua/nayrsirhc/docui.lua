local Terminal = require("toggleterm.terminal").Terminal

-- Docker
local docker_tui = "docui"

local Docui_client = Terminal:new {
  cmd = docker_tui,
  dir = "git_dir",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
}

function Docui_client_toggle()
  Docui_client:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>docui", "<cmd>lua Docui_client_toggle()<CR>", {noremap = true, silent = true, desc = "Toggle Docui"})
