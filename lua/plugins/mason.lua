return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      icons = {
        package_installed = "󰔡",
        package_pending = "󰨚",
        package_uninstalled = "󰨙",
      },
    },
    ensure_installed = {
      "azure-pipelines-language-server",
      "csharp-language-server",
      "dockerfile-language-server",
      "gopls",
      "helm-ls",
      "groovy-language-server",
      "lua-language-server",
      "powershell-editor-services",
      "pyright",
      "rnix-lsp",
      "rust-analyzer",
      "terraform-ls",
      "typescript-language-server",
      "stylua",
      "yaml-language-server",
    },
  },
}
