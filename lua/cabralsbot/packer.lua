vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)

-- Packer can manage itself
use('wbthomason/packer.nvim')
use({ 'catppuccin/nvim', as = 'catppuccin' })
use({
        'nvim-telescope/telescope.nvim',
    	tag = "0.1.5",
    	requires = {
            {"nvim-lua/plenary.nvim"},
            {'nvim-lua/popup.nvim'}
    },
})

use('nvim-telescope/telescope-fzf-native.nvim', { run = ':make'})

use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

use{'neoclide/coc.nvim', branch = 'release'}

-- Appearance
use('kyazdani42/nvim-web-devicons')
use('ryanoasis/vim-devicons')
use('tribela/vim-transparent')

-- Themes
use('Shatur/neovim-ayu')

-- Status bar
use('vim-airline/vim-airline')
use('vim-airline/vim-airline-themes')

-- StatusLine
use({
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    config = function()
    require = ("configs.lualine")
    end,

    requires = {"nvim-web-devicons"},
})

    -- Terminal ToggleTerm
use('akinsho/toggleterm.nvim')
use('tpope/vim-fugitive')
use('nvim-tree/nvim-tree.lua')

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

use{
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        {'williamboman/mason.nvim'},
        {'mfussenegger/nvim-jdtls'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},

      -- Autocompletions plugins
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-cmdline'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        {'hrsh7th/cmp-git'},
        {'windwp/nvim-autopairs'},
      -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
        {'saadparwaiz1/cmp_luasnip'},
      --Snippet Collection (Optional)
        {'ray-x/lsp_signature.nvim'},
  },

use  {
    "folke/which-key.nvim",
      require = { "folke/neoconf.nvim", cmd = "Neoconf" },
        "folke/neodev.nvim",
},
}

end)
