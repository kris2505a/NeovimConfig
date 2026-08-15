-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- TABS (spaces, width 4)
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true


-- (removed shell override)
vim.opt.shell = "pwsh.exe"

-- Neovide
if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h14"
  vim.g.neovide_undecorated = true
end

vim.g.autoformat = false

vim.opt.relativenumber = false
vim.opt.number = true

vim.opt.whichwrap = "b,s,<,>,[,],h,l"
vim.opt.list = false
