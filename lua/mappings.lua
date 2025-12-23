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

-- Molten keybindings (init and operator only)
map("n", "<localleader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize molten" })
map("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "Molten operator selection" })
map("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "Re-evaluate cell" })
map("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>", { silent = true, desc = "Enter output window" })
map("n", "<localleader>oh", ":MoltenHideOutput<CR>", { silent = true, desc = "Hide output" })
map("n", "<localleader>k", ":<C-u>MoltenPrev<cr>", { silent = true, desc = "Prev cell" })
map("n", "<localleader>j", ":<C-u>MoltenNext<cr>", { silent = true, desc = "Next cell" })
map("n", "<localleader>cx", "<cmd>MoltenDeleteCell<cr>", { silent = true, desc = "Delete cell" })
map("n", "<localleader>rx", "<cmd>MoltenInterrupt<cr>", { silent = true, desc = "Interrupt kernel" })
map("n", "<localleader>rr", "<cmd>MoltenRestart<cr>", { silent = true, desc = "Restart kernel" })

-- Quarto runner keybindings (these call molten under the hood)
local runner = require "quarto.runner"
map("n", "<localleader>rc", runner.run_cell, { desc = "Run cell", silent = true })
map("n", "<localleader>ra", runner.run_above, { desc = "Run cell and above", silent = true })
map("n", "<localleader>rA", runner.run_all, { desc = "Run all cells", silent = true })
map("n", "<localleader>rl", runner.run_line, { desc = "Run line", silent = true })
map("v", "<localleader>r", runner.run_range, { desc = "Run selection", silent = true })
