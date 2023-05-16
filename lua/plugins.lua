require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use 'fgheng/winbar.nvim'
    use "sbdchd/neoformat"
    use "EdenEast/nightfox.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use 'Mofiqul/dracula.nvim'
    use 'olimorris/onedarkpro.nvim'
    use "Mofiqul/dracula.nvim"
    use "ishan9299/nvim-solarized-lua"
    use "windwp/nvim-ts-autotag"
    use "norcalli/nvim-colorizer.lua"
    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"
    use "nvim-telescope/telescope.nvim"
    -- use "nvim-tree/nvim-web-devicons"
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use({
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
            })
            vim.cmd('colorscheme github_dark')
        end
    })
    use "voldikss/vim-floaterm"
    use "ishan9299/nvim-solarized-lua"
    use "hylang/vim-hy"
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {
        "neovim/nvim-lspconfig",
        requires = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            require"nvim-lspconfig"
        end
    }
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-emoji",
            "hrsh7th/cmp-cmdline",
        },
        config = function()
            require"nvim-cmp"
        end
    }
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require "neoTree"
        end
    }
    use {
        "windwp/nvim-autopairs",
        disable = false,
        config = function()
            require"nvim-autopairs".setup({
                disable_filetype = { "TelescopePrompt" , "vim" },
            })
        end
    }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require"treesitter"
        end
    }
    use "nvim-treesitter/playground"
    use {
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function ()
            require "toggleterm-setup"
        end
    }
end)

