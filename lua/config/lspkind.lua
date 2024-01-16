local lspkind = require('lspkind')
local cmp = require('cmp')

lspkind.init({
  -- default: {}
  symbol_map = {
    Text = '',
    Method = 'ƒ',
    Function = '',
    Constructor = '',
    Variable = '',
    Class = '',
    Copilot = '',
    Interface = 'ﰮ',
    Module = '',
    Property = '',
    Unit = '',
    Value = '',
    Enum = '了',
    Keyword = '',
    Snippet = '﬌',
    Color = '',
    File = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = ''
  }
})
cmp.setup {
  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    expandable_indicator = true,
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 100, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                     -- can also be a function to dynamically calculate max width such as 
                     -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      show_labelDetails = true, -- show labelDetails in menu. Disabled by default

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
    })
  }
}
