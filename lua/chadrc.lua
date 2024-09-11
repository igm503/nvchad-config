local options = {
  base46 = {
    theme = "github_dark",
    hl_add = {},
    hl_override = {
      ["Type"] = { fg = "#57c9a9" },
      ["@constructor"] = { fg = "#57c9a9" },
      ["@module"] = { fg = "#57c9a9" },
      ["@variable"] = { fg = "#9CDCFE" },
      ["@variable.parameter"] = { fg = "#9CDCFE" },
      ["@variable.member"] = { fg = "#9CDCFE" },
      ["@variable.builtin"] = { fg = "#9CDCFE" },
      ["@property"] = { fg = "#9CDCFE" },
      ["@keyword"] = { fg = "#569CD6" },
      ["@keyword.function"] = { fg = "#569CD6" },
      ["@constant"] = { fg = "#569CD6" },
      ["@constant.builtin"] = { fg = "#569CD6" },
      ["Boolean"] = { fg = "#569CD6" },
      ["@type.builtin"] = { fg = "#569CD6" },
      ["Include"] = { fg = "#C586C0" },
      ["@keyword.return"] = { fg = "#C586C0" },
      ["@keyword.operator"] = { fg = "#C586C0" },
      ["@keyword.exception"] = { fg = "#C586C0" },
      ["@keyword.repeat"] = { fg = "#C586C0" },
      ["@keyword.directive"] = { fg = "#C586C0" },
      ["@keyword.directive.define"] = { fg = "#C586C0" },
      ["@keyword.conditional"] = { fg = "#C586C0" },
      ["@function"] = { fg = "#DCDCAA" },
      ["@function.call"] = { fg = "#DCDCAA" },
      ["@function.builtin"] = { fg = "#DCDCAA" },
      ["@function.method.call"] = { fg = "#DCDCAA" },
      ["@attribute"] = { fg = "#DCDCAA" },
      ["@tag"] = { fg = "#DCDCAA" },
      ["@number"] = { fg = "#B5CEA8" },
      ["@string"] = { fg = "#cc937a" },
      ["Comment"] = { fg = "#738e9e" },
      ["@punctuation.delimiter"] = { fg = "#dbdad9" },
      ["@punctuation.bracket"] = { fg = "#dbdad9" },
      ["@keyword.conditional.ternary"] = { fg = "#dbdad9" },
    },
    transparency = false,
    theme_toggle = { "github_dark", "github_light" },
  },
  term = {
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },
  lsp = { signature = true },
  cheatsheet = {
    theme = "grid",
    excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" },
  },
  mason = {
    cmd = true,
    pkgs = {
      "black",
      "ruff",
      "pyright",
      "lua-language-server",
      "omnisharp",
      "csharpier",
      "lemminx",
      "xmlformatter",
      "clangd",
      "sylua",
      "prettier",
    },
  },
}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
