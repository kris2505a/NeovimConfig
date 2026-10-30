return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    config = function()
      require('nvim-treesitter').setup({})

      require('nvim-treesitter').install({
        'lua',
        'cpp',
        'json',
        'markdown',
        'markdown_inline',
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'lua',
          'cpp',
          'json',
          'markdown',
        },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}

