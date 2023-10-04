-- Settings File
vim.g.mapleader = ' '
vim.opt.backup = false
vim.opt.errorbells = false
vim.opt.swapfile = false 
vim.opt.signcolumn = 'yes' 

-- buffer-scoped
vim.opt.autoindent = true

-- window-scoped
vim.opt.cursorline = true

-- global scope
vim.opt.autowrite = true

local set = vim.opt
-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.number = true
