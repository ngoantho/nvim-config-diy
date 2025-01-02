local setup_cmp = function()
  local cmp = require('cmp')
  cmp.setup({
    sources = {
      { name = 'nvim_lsp' },
      { name = 'nvim_lua' },
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({})
  })
end

local setup_lsp_zero = function()
  local lsp_zero = require('lsp-zero')
  lsp_zero.extend_lspconfig({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    lsp_attach = function(_, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end,
    float_border = 'rounded',
    sign_text = true
  })
end

local setup_lspconfig = function()
  require('mason').setup({})
  require('mason-lspconfig').setup({
    ensure_installed = {
      "lua_ls",
      -- "powershell_es"
    }
  })

  -- local lua_opts = lsp_zero.nvim_lua_ls()
  require('lspconfig').lua_ls.setup({})
end

return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x', -- new default branch
    ft = "lua",
    enabled = false, -- only use treesitter for syntax highlighting, no need for lsp
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      -- {'hrsh7th/cmp-cmdline'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      setup_cmp()
      setup_lsp_zero()
      setup_lspconfig()
    end
  },
  {
    "TheLeoP/powershell.nvim",
    ft = "ps1",
    enabled = false, -- only use treesitter for syntax highlighting, no need for lsp
    dependencies = {
      { 'VonHeikemen/lsp-zero.nvim' }
    },
    config = function()
      require('powershell').setup({
        bundle_path = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services"
      })
    end
  }
}
