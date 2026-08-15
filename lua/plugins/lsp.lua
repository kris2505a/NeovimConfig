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

      setup = {
        clangd = function(_, opts)
          require("lspconfig").clangd.setup(opts)

          vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
            callback = function()
              if vim.lsp.codelens then
                vim.lsp.codelens.refresh()
              end
            end,
          })

          return true
        end,
      },
    },
  },
}