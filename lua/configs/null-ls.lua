-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.formatting.black.with {
      extra_args = { "--line-length", "100" },
    },
    null_ls.builtins.formatting.csharpier,
    null_ls.builtins.formatting.prettier,
  },
}
return opts
