return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    files = {
      provider = "fd",
    },
    grep = {
      provider = "rg",
    },
  }
}
