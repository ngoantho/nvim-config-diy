return {
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    enabled = true,
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        always_show_bufferline = false
      }
    },
    config = function(_, opts)
      require('bufferline').setup(opts)
    end
  },
  {
    'nanozuki/tabby.nvim',
    enabled = false,
    dependencies = {
      { 'nvim-tree/nvim-web-devicons' }
    },
    opts = {
      preset = 'active_tab_with_wins'
    },
    config = function(_, opts)
      require('tabby').setup(opts)
    end
  }
}
