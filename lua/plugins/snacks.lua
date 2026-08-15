return {
  "folke/snacks.nvim",
  opts = {
    -- 🔹 Explorer behavior
    explorer = {
      keys = {
        ["<C-Left>"] = false,
        ["<C-Right>"] = false,
      },
    },

    -- 🔹 Picker config
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,

          exclude = {
            ".git",
            "build",
            "Binaries",
            "out",
            ".cache",
            ".vs",
            ".idea",
            ".vscode",
          },

          layout = function()
            return {
              preset = "sidebar",
              preview = false,
              layout = {
                width = 35,
              },
            }
          end,
        },

        files = {
          hidden = true,
          ignored = true,
        },

        grep = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}