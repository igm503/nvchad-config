-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.formatting.black.with {
      extra_args = { "--line-length", "100" },
    },
    null_ls.builtins.formatting.csharpier,
    null_ls.builtins.formatting.prettier,
  },
  -- on_attach = function(client, bufnr)
  --  if client.supports_method("textDocument/formatting") then
  --   vim.api.nvim_clear_autocmds({
  --       group = augroup,
  --       buffer = bufnr,
  --     })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         vim.lsp.buf.format({ bufnr = bufnr})
  --       end,
  --     })
  --   end
  --  end,
}
return opts
