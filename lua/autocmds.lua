vim.api.nvim_create_autocmd(
  {
    "BufEnter",
    "BufRead"
  },
  {
    pattern = "*.code-workspace",
    command = "set filetype=json"
  }
)

vim.api.nvim_create_autocmd(
  {
    "BufEnter",
    "BufRead"
  },
  {
    pattern = "*.tag",
    command = "set filetype=text"
  }
)

vim.api.nvim_create_autocmd(
  {
    "BufEnter",
    "BufRead"
  },
  {
    pattern = "*.search",
    command = "set filetype=text"
  }
)

vim.cmd("cab tabcd tcd")
vim.cmd("cab reload e")
