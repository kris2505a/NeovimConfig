
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    vim.lsp.config("lua_ls", {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })

    vim.lsp.config("clangd", {
      cmd = {
        "/mnt/c/Program Files/LLVM/bin/clangd.exe",
        "--function-arg-placeholders=0",
        "--header-insertion=never",
        "--path-mappings=/mnt/c/Users/Krishna/Projects/vanmam=/C:/Users/Krishna/Projects/vanmam",
      }
    })
    vim.lsp.config("marksman", {})

    vim.lsp.enable({
      "lua_ls",
      "clangd",
      "marksman"
    })
  end,
}
