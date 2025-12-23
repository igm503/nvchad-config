require "nvchad.options"

vim.api.nvim_exec([[autocmd FileType * setlocal nowrap]], false)

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.equalalways = false

local diagnostics_visible = true

function _G.toggle_diagnostics()
  diagnostics_visible = not diagnostics_visible
  if diagnostics_visible then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end

vim.api.nvim_set_keymap("n", "<leader>lt", "<cmd>lua toggle_diagnostics()<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.xaml",
  command = "set filetype=xml",
})

local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1
  if not directory then
    return
  end
  vim.cmd.cd(data.file)
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  pattern = "*",
  callback = open_nvim_tree,
})

vim.env.PATH = vim.fn.expand "~/.virtualenvs/neovim/bin" .. ":" .. vim.env.PATH
vim.g.loaded_python3_provider = nil
vim.g.python3_host_prog = vim.fn.expand "~/.virtualenvs/neovim/bin/python"

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.ipynb",
  callback = function()
    local buf_path = vim.fn.expand "%:p:h"
    vim.cmd("lcd " .. buf_path)
  end,
})

-- Only use OSC 52 over SSH
if os.getenv("SSH_CONNECTION") or os.getenv("SSH_TTY") then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
      ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
  }
end
