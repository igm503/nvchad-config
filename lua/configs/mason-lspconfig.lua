local configs = require "nvchad.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

require("mason-lspconfig").setup {
  ensure_installed = {
    "pyright",
    "omnisharp",
    "lemminx",
    "clangd",
    "ts_ls",
  },
  automatic_enable = true,
}

-- Configure each server explicitly
vim.lsp.config("pyright", {
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.lsp.config("omnisharp", {
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.lsp.config("lemminx", {
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.lsp.config("clangd", {
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
  on_attach = on_attach,
  capabilities = capabilities,
})

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
