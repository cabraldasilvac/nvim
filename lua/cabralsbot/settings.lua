-- Setting Variavel local
local g = vim.g
local set = vim.opt
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn

cmd([[
  filetype plugin indent on
  syntax on
]])

-- mapleader key
g.mapleader = ' '

-- Theme
g.transparent_enabled = true

-- General Setup
set.mouse = 'a'
set.backup = false
set.errorbells = false
set.swapfile = false 
set.autowrite = true

--Editor
set.number = true
set.relativenumber = true
set.signcolumn = 'yes' 
set.showmode = false
set.showmatch = true
set.splitright = true
set.cursorline = true
set.expandtab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 2
set.title = true
set.hidden = true

--set.smartindent = true
set.autoindent = true


