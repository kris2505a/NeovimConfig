
return {
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      transparent_background = true,
      gamma = 1.00,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        identifiers = { italic = true },
        functions = {},
        variables = {},
      },

      custom_highlights = function(highlights, palette)
        local transparent_groups = {
          "Normal",
          "NormalNC",
          "NormalFloat",
          "FloatBorder",
          "SignColumn",
          "EndOfBuffer",
          "FoldColumn",
          "Pmenu",
          "PmenuSel",
          "StatusLine",
          "StatusLineNC",
          "WinBar",
          "WinBarNC",
          "TabLine",
          "TabLineFill",
          "TabLineSel",
        }

        for _, group in ipairs(transparent_groups) do
          highlights[group] = { bg = "NONE" }
        end

        return highlights
      end,

      custom_palette = {},
      terminal_colors = true,
    },

    config = function(_, opts)
      require("tokyodark").setup(opts)
      vim.cmd.colorscheme("tokyodark")
    end,
  },
}


