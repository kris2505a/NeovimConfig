return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },
  {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "super-tab",
      ["<Tab>"] = { "accept", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<C-k>"] = { "fallback" },
    },
    signature = {
      enabled = false,
    },
  },
},
{
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    presets = {
      command_palette = true,
      bottom_search = true,
      long_message_to_split = true,
    },
  },
},
{
  "rcarriga/nvim-notify",
  opts = {
    timeout = 3000,
    top_down = true,
  },
},
{
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      custom = {
        "compile_commands.json",
        "CMakePresets.json",
        "^bin$",
        "^out$",
      },
    },
  },
},
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
