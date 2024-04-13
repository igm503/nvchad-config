---@type ChadrcConfig
local M = {}

M.ui = {
  changed_themes = {
    github_dark = {
      polish_hl = {
        ["Type"] = { fg = "#57c9a9" },
        ["@type.builtin"] = { fg = "#57c9a9" },
        ["@constructor"] = { fg = "#57c9a9" },
        ["@variable"] = { fg = "#9CDCFE" },
        ["@variable.parameter"] = { fg = "#9CDCFE" },
        ["@variable.member"] = { fg = "#9CDCFE" },
        ["@variable.builtin"] = { fg = "#9CDCFE" },
        ["@keyword"] = { fg = "#569CD6" },
        ["@keyword.function"] = { fg = "#569CD6" },
        ["@constant"] = { fg = "#569CD6" },
        ["@constant.builtin"] = { fg = "#569CD6" },
        ["Boolean"] = { fg = "#569CD6" },
        ["Conditional"] = { fg = "#C586C0" },
        ["Include"] = { fg = "#C586C0" },
        ["@keyword.return"] = { fg = "#C586C0" },
        ["@keyword.operator"] = { fg = "#C586C0" },
        ["@keyword.exception"] = { fg = "#C586C0" },
        ["@function"] = { fg = "#DCDCAA" },
        ["@function.call"] = { fg = "#DCDCAA" },
        ["@function.builtin"] = { fg = "#DCDCAA" },
        ["@function.method.call"] = { fg = "#DCDCAA" },
        ["@string"] = { fg = "#cc937a" },
        ["Comment"] = { fg = "#738e9e" },
        ["@punctuation.delimiter"] = { fg = "#dbdad9" },
      }
    },
  },
  theme = "github_dark",
  nvdash = {
    load_on_startup = true,
    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
