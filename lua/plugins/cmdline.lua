
-- ============================================================
-- Command Line UI & Notifications
-- ============================================================

vim.pack.add({
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/rcarriga/nvim-notify" },
  { src = "https://github.com/folke/noice.nvim" },
})

-- ------------------------------------------------------------
-- Notifications
-- ------------------------------------------------------------

require("notify").setup({
  background_colour = "#1a1b26",
  timeout = 3000,
  stages = "fade_in_slide_out",
  render = "default",
  top_down = true,
})

-- ------------------------------------------------------------
-- Floating command line & messages
-- ------------------------------------------------------------

require("noice").setup({
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
  },

  messages = {
    enabled = true,
    view = "notify",
    view_error = "notify",
    view_warn = "notify",
    view_history = "messages",
    view_search = "virtualtext",
  },

  popupmenu = {
    enabled = true,
    backend = "nui",
  },

  notify = {
    enabled = true,
    view = "notify",
  },

  presets = {
    bottom_search = false,
    command_palette = true,
    long_message_to_split = true,
    inc_rename = false,
    lsp_doc_border = true,
  },
})
