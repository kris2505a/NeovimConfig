return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },

      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--completion-style=detailed",
            "--function-arg-placeholders=0",
            "--header-insertion=never",
            "--background-index",
            "--clang-tidy",
          },
        },
      },

    },
}
}
