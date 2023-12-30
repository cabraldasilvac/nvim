-- Aliases
local map = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

vim.keymap.set('i', 'jj', '<ESC>', ns)
vim.keymap.set('n', '<leader>V', ':vsplit<CR>', ns)
vim.keymap.set('n','tt',':t.<CR>')

vim.keymap.set('n','<C-n>', ':Neotree filesystem reveal left<CR>')

-- Clean Search
map('n', '<esc>', ':noh<return><esc>', ns)
map('n', '<up>', '<nop>', {noremap = true})
map('n', '<down>', '<nop>', {noremap = true})
map('n', '<left>', '<nop>', {noremap = true})
map('n', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>','<left>', ns )
map('i', '<C-j>','<down>', ns )
map('i', '<C-k>','<up>', ns )
map('i', '<C-l>','<right>', ns )

