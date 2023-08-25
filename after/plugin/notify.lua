local notify = require('notify')


vim.keymap.set("n", "<leader>tv", function()
    local path = vim.fn.expand("%:p:h")
    local filename = vim.fn.expand("%")
    local output = vim.fn.system({"terraform", "validate", path, "-no-color"})
    BG = nil
    if vim.v.shell_error ~= 0 then
        BG = "error"
     end
    notify(output, BG, {title = path})
end)
