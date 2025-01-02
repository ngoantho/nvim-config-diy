return {
  {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ':TSUpdate',
    event = { 'VeryLazy' },
    lazy = vim.fn.argc(-1) == 0, -- load early when opening a file
    cmd = { 'TSUpdateSync', 'TSUpdate', 'TSInstall' },
    opts_extend = { 'ensure_installed' },
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "lua"
      }
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
      vim.api.nvim_create_autocmd(
        { 'FileType' }, -- disable for help pages
        { pattern = 'help', command = 'TSBufDisable highlight' }
      )
    end
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    -- cmd = { 'TSContextEnable', 'TSContextDisable', 'TSContextToggle' },
    event = { 'VeryLazy' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    },
    opts = {},
    config = function(_, opts)
      require('treesitter-context').setup(opts)
    end
  }
}
