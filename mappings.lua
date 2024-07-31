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

M.codeium = {
  n = {
    ["<leader>cx"] = {
      function()
        vim.g.codeium_enabled = not vim.g.codeium_enabled
      end,
      "Toggle codeium",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true }
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
        vim.api.nvim_win_set_height(0, math.floor(vim.o.lines * 0.3))
      end,
      "Open horizontal terminal",
      { noremap = true, silent = true }
    },
    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
        vim.api.nvim_win_set_width(0, math.floor(vim.o.columns * 0.3))
      end,
      "Open vertical terminal",
      { noremap = true, silent = true }
    },
    ["<leader>k"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "Toggle floating term",
    },
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle floating term",
    },
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle floating term",
    },
    ["<leader>tk"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  }
}

return M
