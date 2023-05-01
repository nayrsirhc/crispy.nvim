local Terminal = require("toggleterm.terminal").Terminal

-- Docker
local docker_tui = "lazydocker"

local docker_client = Terminal:new {
  cmd = docker_tui,
  dir = "git_dir",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
}

function _docker_client_toggle()
  docker_client:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>ld", "<cmd>lua _docker_client_toggle()<CR>", {noremap = true, silent = true})
