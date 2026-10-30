require("config.lazy")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.shortmess:append("I")


require("lazy").setup({
  spec = { { import = "plugins" }, },
  checker = { enabled = true },
})

require('config.options')
require('config.keymaps')
