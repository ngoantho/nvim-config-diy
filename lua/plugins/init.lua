return {
  -- 'tpope/vim-sleuth',
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      -- file icons
      { 'nvim-tree/nvim-web-devicons' }
    },
    opts = {
      sync_root_with_cwd = true,
      git = {
        enable = false -- use github desktop
      },
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true
      }
    },
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen' },
    config = function(_, opts)
      require('nvim-tree').setup(opts)
    end
  },
  {
    'folke/persistence.nvim',
    event = 'BufReadPre', -- start session saving on opening files
    enabled = false, -- i don't use sessions
    opts = {},
    config = function(_, opts)
      require('persistence').setup(opts)
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {},
    config = function(_, opts)
      require('gitsigns').setup(opts)
    end
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
    config = function(_, opts)
      require('nvim-autopairs').setup(opts)
    end
  },
  {
    "nvim-lua/plenary.nvim",
    cmd = { "PlenaryBustedFile", "PlenaryBustedDirectory" },
    lazy = true
  },
  {
    'rcarriga/nvim-notify',
    config = function(_, _)
      vim.notify = require("notify")
    end
  },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			require('lualine').setup {
				disabled_filetypes = {
					NvimTree = {}
				},
				sections = {
					lualine_b = {},
					lualine_c = {
						{
							function()
								return vim.fn.getcwd()
							end
						},
						'filename' -- keep default filename
					}
				}
			}
		end
	}
}
