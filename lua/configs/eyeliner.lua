vim.api.nvim_set_hl(0, "EyelinerPrimary", { fg = "#C586C0", bold = true, underline = true })
require("eyeliner").setup {
  highlight_on_key = true, -- show highlights only after keypress
  dim = true, -- dim all other characters if set to true (recommended!)
}
