vim.api.nvim_exec([[
  autocmd FileType * setlocal nowrap
]], false)
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    command = "Nvdash"
})
