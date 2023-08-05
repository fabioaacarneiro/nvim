require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'fgheng/winbar.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-telescope/telescope.nvim'
  use 'voldikss/vim-floaterm'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree-setup')
    end
  }
  use {
    'windwp/nvim-autopairs',
    disable = false,
    requires = {
      'windwp/nvim-ts-autotag'
    },
    config = function()
      require('nvim-autopairs').setup({
        disable_filetype = {
          'TelescopePrompt',
          'vim'
        },
      })
    end
  }
  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine-nvim-setup')
    end
  }
  use {
    'akinsho/bufferline.nvim',
    tag = '*',
    config = function()
      require('bufferline-nvim')
    end
  }
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim'
    },
    config = function()
      require('nvim-lspconfig')
    end
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim',
      'hrsh7th/cmp-calc',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-cmdline',
    },
    config = function()
      require('nvim-cmp')
    end
  }
  -- use {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v3.x",
  --   requires = { 
  --     "MunifTanjim/nui.nvim",
  --   }
  -- }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('treesitter')
    end
  }
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',
    config = function()
      require('ufo-nvim')
    end
  }
end)
