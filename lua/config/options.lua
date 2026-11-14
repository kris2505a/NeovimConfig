vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.fillchars = {
    eob = " "
}
vim.opt.list = true
vim.opt.listchars = {
    space = "·",
}

vim.opt.cursorline = true
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp', 'md' },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua' },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

