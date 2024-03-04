-- local config = require("plugins.configs.lspconfig")
--
-- local on_attach = config.on_attach
-- local capabilities = config.capabilities
--
-- local lspconfig = require("lspconfig")
--
-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"python"},
-- })
local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "pyright", "html", "cssls", "clangd"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
