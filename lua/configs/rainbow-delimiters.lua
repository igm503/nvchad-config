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
}
