-- Vim airline configuration
local cmd = vim.cmd
-- Inclua o módulo Packer.nvim
local packer = require('packer')
-- Plugin Airline
packer.use {
  ('vim-airline/vim-airline'),
  ('vim-airline/vim-airline-themes'),
  config = function()
      -- Theme
        cmd('let g:airline_theme = { catppuccin }')
        cmd('let g:airline_statusline_ontop=1')
    -- Ativar os símbolos de separadores UTF-8
        cmd('let g:airline_powerline_fonts=1')
        cmd('let g:airline_symbols')
        cmd('let g:airline_section_c = "%f"')
        cmd('let g:airline_extensions_tabline left_sep = " "')
        cmd('let g:airline_extensions_tabline_left_alt_sep = "|"')
        cmd('let g:airline_extensions_tabline_formatter = default')
        cmd('let g:airline_enable_branch = 1')
  end
}
