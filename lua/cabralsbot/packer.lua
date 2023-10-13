-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)

-- Packer can manage itself
use('wbthomason/packer.nvim')
use({
    'nvim-telescope/telescope.nvim',
	tag = "0.1.0",
	requires = { { "nvim-lua/plenary.nvim" }}
})

use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
use{'neoclide/coc.nvim', branch = 'release'}

-- Appearance
use('kyazdani42/nvim-web-devicons')
use('ryanoasis/vim-devicons')

-- Status bar
use('vim-airline/vim-airline')
use('vim-airline/vim-airline-themes')

    -- Terminal ToggleTerm
use('akinsho/toggleterm.nvim')
use('tpope/vim-fugitive')
--
use('nvim-tree/nvim-tree.lua')
--use('nvim-tree/nvim-web-devicons')

use{
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/nvim-cmp'},
      -- Autocompletions plugins
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-cmdline'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
        {'saadparwaiz1/cmp_luasnip'},
      --Snippet Collection (Optional)
        {'ray-x/lsp_signature.nvim'},
  }
}

end)
