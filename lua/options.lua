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

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "Nvdash",
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.xaml",
  command = "set filetype=xml",
})
