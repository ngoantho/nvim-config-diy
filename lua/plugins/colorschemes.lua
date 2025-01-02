return {
  {
    'folke/tokyonight.nvim', -- tokyonight, tokyonight-day, tokyonight-moon, tokyonight-night, tokyonight-storm
    enabled = false
  },
  {
    'arcticicestudio/nord-vim',
    enabled = false
  },
  {
    'sainnhe/edge',
    enabled = false
  },
  {
    'ray-x/aurora',
    enabled = false
  },
  {
    'EdenEast/nightfox.nvim', -- dayfox, nordfox, dawnfox, duskfox, terafox, nightfox, carbonfox
    config = function()
      vim.cmd.colorscheme('nordfox')
    end
  }
}
