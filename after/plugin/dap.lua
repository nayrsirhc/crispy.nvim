local dap = require("dap")

dap.adapters.delve = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = {'dap', '-l', '127.0.0.1:${port}'},
  }
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}"
  },
  {
    type = "delve",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}"
  },
  -- works with go.mod packages and sub packages 
  {
    type = "delve",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}"
  }
}

require("dapui").setup()

vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)
vim.keymap.set('n', '<Leader>dui', function() require('dapui').toggle() end)

vim.fn.sign_define(
'DapBreakpoint',
{
    text = '',
    texthl = 'Error',
    linehl = '',
    numhl = 'Error'
})
vim.fn.sign_define(
'DiagnosticSignError',
{
    text = '',
    texthl = 'DiagnosticError',
    linehl = '',
    numhl = 'DiagnosticError'
})
vim.fn.sign_define(
'DiagnosticSignWarn',
{
    text = '',
    texthl = 'DiagnosticWarn',
    linehl = '',
    numhl = 'DiagnosticWarn'
})
vim.fn.sign_define(
'DiagnosticSignInfo',
{
    text = '',
    texthl = 'DiagnosticInfo',
    linehl = '',
    numhl = ''
})
vim.fn.sign_define(
'DiagnosticSignHint',
{
    text = '󰘥',
    texthl = 'DiagnosticHint',
    linehl = '',
    numhl = 'DiagnosticHint'
})

--
