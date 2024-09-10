require("noice").setup {
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    hover = { enabled = true, silent = true },
    signature = { enabled = true },
  },
}
-- local lspconfigs = require("plugins.configs.lspconfig")
-- local on_attach = lspconfigs.on_attach
-- local capabilities = lspconfigs.capabilities
--
-- local lspconfig = require("lspconfig")
--
-- local servers = { "ruff", "pyright", "cssls", "clangd", "omnisharp" }
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end
-- lspconfig.html.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "html", "htm", "htmldjango" },
-- }
