local rainbow_delimiters = require "rainbow-delimiters"
require("rainbow-delimiters.setup").setup {
  strategy = {
    [""] = rainbow_delimiters.strategy["global"],
    commonlisp = rainbow_delimiters.strategy["local"],
  },
  query = {
    [""] = "rainbow-delimiters",
    latex = "rainbow-blocks",
  },
  priority = {
    [""] = 110,
    lua = 210,
  },
  highlight = {
    "RainbowDelimiterYellow",
    "RainbowDelimiterViolet",
    "RainbowDelimiterBlue",
    "RainbowDelimiterCyan",
    "RainbowDelimiterGreen",
  },
  blacklist = { "NvimTree", "noice", "notify", "terminal", "NvTerm_float" },
}
local lib = require "rainbow-delimiters.lib"
local original_attach = lib.attach
lib.attach = function(bufnr)
  local lang = vim.treesitter.language.get_lang(vim.bo[bufnr].filetype)
  if not lang then
    return
  end
  local ok = pcall(vim.treesitter.language.inspect, lang)
  if not ok then
    return
  end
  original_attach(bufnr)
end
