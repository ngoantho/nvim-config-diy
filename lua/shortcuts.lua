-- normal
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '\\', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>s', vim.cmd.w)
vim.keymap.set('n', '<leader>w', vim.cmd.w)
vim.keymap.set('n', '<leader>sa', vim.cmd.wa)
vim.keymap.set('n', '<leader>wa', vim.cmd.wa)
vim.keymap.set('n', '<leader>o', ':e ')

-- buffers
vim.keymap.set('n', '<leader>]', vim.cmd.bnext)
vim.keymap.set('n', '<leader>[', vim.cmd.bprevious)
vim.keymap.set('n', '<leader>b]', vim.cmd.bnext)
vim.keymap.set('n', '<leader>b[', vim.cmd.bprevious)
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete)
vim.keymap.set('n', '<leader>bn', vim.cmd.enew)

-- tabs
vim.keymap.set('n', '<leader>t]', vim.cmd.tabnext)
vim.keymap.set('n', '<leader>t[', vim.cmd.tabprevious)
vim.keymap.set('n', '<leader>tn', ':tabnew | tcd ')
vim.keymap.set('n', '<leader>td', vim.cmd.tabclose)
vim.keymap.set('n', '<leader>tcd', ':tcd ')

-- yank path
vim.keymap.set('n', '<leader>ypf', function()
  vim.cmd("let @+ = expand('%:p')")
  vim.notify("yanked full path")
end)
vim.keymap.set('n', '<leader>ypr', function()
  vim.cmd("let @+ = expand('%')")
  vim.notify("yanked relative path")
end)

-- change directories
vim.keymap.set('n', '<leader>cd', ':cd ')

-- window navigation
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')

-- window manipulation
vim.keymap.set('n', '<leader>H', '<C-w>H')
vim.keymap.set('n', '<leader>J', '<C-w>J')
vim.keymap.set('n', '<leader>K', '<C-w>K')
vim.keymap.set('n', '<leader>L', '<C-w>L')

-- command
vim.keymap.set('c', '<C-v>', '<C-r>"')

-- visual
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>ts', ':Telescope<CR>')

-- terminal
vim.keymap.set('n', '<leader>tt', ':tabnew | term<CR>')
vim.keymap.set('n', '<leader>t-', ':split | term<CR>')
vim.keymap.set('n', '<leader>t\\', ':vsplit | term<CR>')
