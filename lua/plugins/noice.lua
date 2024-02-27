return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      format = {
        cmdline = { pattern = "^:", icon = "󰅬 ", lang = "vim" },
        filter = { pattern = "^:%s*!", icon = " ", lang = "bash" },
        help = { pattern = "^:%s*he?l?p?%s+", icon = "󰞋 " },
        lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = " ", lang = "lua" },
      },
    },
  },
}
