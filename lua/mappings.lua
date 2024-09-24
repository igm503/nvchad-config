require "nvchad.mappings"

local map = vim.keymap.set

-- Codeium toggle
map("n", "<leader>cx", function()
  vim.g.codeium_enabled = not vim.g.codeium_enabled
end, { desc = "Toggle codeium", replace_keycodes = true, nowait = true, silent = false, expr = true, noremap = true })

-- -- NvTerm mappings
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp", id = "ho" }
  vim.api.nvim_win_set_height(0, math.floor(vim.o.lines * 0.3))
end, { desc = "Open horizontal terminal", noremap = true, silent = true })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp", id = "v" }
  vim.api.nvim_win_set_width(0, math.floor(vim.o.columns * 0.3))
end, { desc = "Open vertical terminal", noremap = true, silent = true })

map("n", "<leader>th", function()
  require("nvchad.term").toggle { pos = "sp", id = "hor" }
end, { desc = "Toggle horizontal term" })

map("n", "<leader>tv", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vt" }
end, { desc = "Toggle vertical term" })

map("n", "<leader>k", function()
  require("nvchad.term").toggle { pos = "float", id = "float0" }
end, { desc = "Toggle floating term" })

for i = 0, 9 do
  map("n", "<leader>" .. i .. "k", function()
    require("nvchad.term").toggle { pos = "float", id = "float" .. i }
  end, { desc = "Toggle floating term " .. i })
end

map("n", "<leader>lf", function()
  vim.diagnostic.open_float()
end, { desc = "Show line diagnostics", noremap = true, silent = true })
