local configs = require "nvchad.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

require("mason-lspconfig").setup {
  ensure_installed = {
    "black",
    "ruff",
    "pyright",
    "lua-language-server",
    "omnisharp",
    "lemminx",
    "xmlformatter",
    "clangd",
    "stylua",
    "prettier",
    "ts_ls",
    "htmx-lsp",
  },
  automatic_enable = true,
}

-- Set global defaults for ALL language servers
vim.lsp.config("*", {
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Specific override for HTML
vim.lsp.config("html", {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "htm", "htmldjango" },
})

vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
})
