local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- put some default mappings here

    -- user mappings
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.keymap.set('n', 'n', api.fs.create, opts('New File'))
    vim.keymap.set('n', 'd', api.fs.remove, opts('Delete File/Folder'))
    vim.keymap.set('n', 't', api.fs.trash, opts('Trash File/Folder'))
    vim.keymap.set('n', 'r', api.fs.rename, opts('Rename File/Folder'))
    vim.keymap.set('n', 'x', api.fs.cut, opts('Cut File/Folder'))
    vim.keymap.set('n', 'p', api.fs.paste, opts('Paste File/Folder'))
    vim.keymap.set('n', 'c', api.fs.copy.node, opts('Copy File/Folder'))
    vim.keymap.set('n', '<leader>clip', api.fs.print_clipboard, opts('Print Clipboard'))
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open File/Folder'))
    vim.keymap.set('n', '<C-b>%', api.node.open.vertical, opts('Open File Vertical Split'))
    vim.keymap.set('n', '<C-b>"', api.node.open.horizontal, opts('Open File Horizontal Split'))
    vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Preview File'))
    vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh Tree'))
    vim.keymap.set('n', 'S', api.tree.search_node, opts('Search'))

end

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
    },
    on_attach = my_on_attach,
})
require('nvim-web-devicons').setup()
