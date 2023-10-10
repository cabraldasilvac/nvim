-- Aliases
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local cmd = vim.cmd


vim.keymap.set("i", "jj", "<ESC>", opts)
vim.keymap.set("n", "<leader>V", ":vsplit<CR>", opts)

-- Clear search highlight
vim.keymap.set("n", "<esc>", ":noh<return><esc>", opts)


map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>','<left>', opts )
map('i', '<C-j>','<down>', opts )
map('i', '<C-k>','<up>', opts )
map('i', '<C-l>','<right>', opts )

