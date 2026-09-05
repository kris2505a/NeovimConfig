require("nvchad.configs.lspconfig").defaults()


vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--completion-style=detailed",
    "--function-arg-placeholders=0",
    "--header-insertion=never",
    "--background-index",
    "--clang-tidy",
  },
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})



local servers = { "clangd" }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
