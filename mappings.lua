local M = {}

-- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- Your custom mappings
-- M.abc = {
--   n = {
--      ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
--      ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"}
--   },
--
--   i = {
--      ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
--     -- ...
--   }
-- }

M.copilot = {
  i = {
    ["<C-;>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  },
}

return M
