-- Vim airline configuration
local g = vim.g
let g.airline#extensions#tabline#enabled = true
let g.airline#extensions#tabline#left_sep = ' '
let g.airline#extensions#tabline#left_alt_sep = '|'
let g.airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1

--let g.airline_theme='simple'
