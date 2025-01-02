vim.opt.sessionoptions = "curdir,folds,globals,help,tabpages,terminal,winsize"

-- Nvim will automatically attempt to determine if the host terminal supports 24-bit color and will
-- enable this option if it does
-- vim.opt.termguicolors = true

-- show tabs only if there are at least two tab pages
vim.opt.showtabline = 2

-- When on, Vim will change the current working directory whenever you open a file, switch buffers,
-- delete a buffer or open/close a window
vim.opt.autochdir = true

-- To ALWAYS use the clipboard for ALL operations (instead of interacting with
-- the "+" and/or "*" registers explicitly)
vim.opt.clipboard = "unnamedplus"

-- When on, the title of the window will be set to the value of filename [+=-] (path) - NVIM
vim.opt.title = true

-- Show line numbers & relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- terminal shell
vim.opt.shell = 'pwsh.exe'

-- split options
vim.opt.splitbelow = true
vim.opt.splitright = true

-- set indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
