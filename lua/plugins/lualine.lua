
-- lua/plugins/lualine.lua

local colors = {
  blue   = "#7aa2f7",
  cyan   = "#7dcfff",
  black  = "#11121d",
  white  = "#a0a8cd",
  red    = "#f7768e",
  violet = "#bb9af7",
  grey   = "#222436",
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet, gui = "bold" },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },
  insert = {
    a = { fg = colors.black, bg = colors.blue, gui = "bold" },
  },
  visual = {
    a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
  },
  replace = {
    a = { fg = colors.black, bg = colors.red, gui = "bold" },
  },
  command = {
    a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
  },
  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",

    opts = {
      options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = {
          left = "",
          right = "",
        },
        globalstatus = true,
      },

      sections = {
        lualine_a = {
          {
            "mode",
            separator = { left = "" },
            right_padding = 2,
          },
        },

        lualine_b = { "filename", "branch" },
        lualine_c = { "%=" },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },

        lualine_z = {
          {
            "location",
            separator = { right = "" },
            left_padding = 2,
          },
        },
      },

      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },

      tabline = {},
      extensions = { "neo-tree", "lazy", "fzf" },
    },
  },
}

