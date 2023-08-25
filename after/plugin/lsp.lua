local lspconfig = require('lspconfig')
require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

vim.cmd [[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]]
vim.cmd [[ autocmd BufRead,BufNewFile */templates/*.yaml set filetype=helm ]]
vim.cmd [[ autocmd BufRead,BufNewFile azure-*.y*ml  set filetype=yaml.azure_pipelines ]]
vim.cmd [[ autocmd BufRead,BufNewFile *.azuredevops/* set filetype=yaml.azure_pipelines ]]
vim.cmd [[ autocmd BufRead,BufNewFile terraform* set filetype=terraform ]]
vim.cmd [[ autocmd BufRead,BufNewFile *enkinsfile* set filetype=groovy ]]
vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])
vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.bicep.setup{}
lspconfig.csharp_ls.setup{}
lspconfig.groovyls.setup{}

lspconfig.yamlls.setup{
    single_file_support = false,
	root_dir = function(filename, bufnr)
		if string.find(filename, "templates/") then
			return nil
		end
        if string.find(filename, "azure-") then
            return nil
        end
        if string.find(filename, ".azuredevops") then
            return nil
        end
		return '.'
	end
}
lspconfig.azure_pipelines_ls.setup{
    autostart = true,
    filetypes = {
        "yaml.azure_pipelines",
    },
}
require'lspconfig'.helm_ls.setup{
    filetypes = {
        "helm",
    }
}
lspconfig.intelephense.setup{
    filetypes = { "php" },
    root_dir = function() return vim.loop.cwd() end,
}

lsp.setup{}

local cmp = require('cmp')
local cmp_select = {behaviour = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})
