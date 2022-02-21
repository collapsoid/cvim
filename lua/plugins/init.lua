return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'famiu/bufdelete.nvim'
    use 'windwp/nvim-ts-autotag'

    use {
        'wojciechkepka/vim-github-dark'
    }

    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        },
        config = function()
            require('plugins.lualine')
        end
    }

    -- use {
    --     "nvim-neo-tree/neo-tree.nvim",
    --     branch = "main",
    --     requires = {
    --         "nvim-lua/plenary.nvim",
    --         "kyazdani42/nvim-web-devicons",
    --         "MunifTanjim/nui.nvim"
    --     },
    --     config = function()
    --         require('plugins.neotree')
    --     end
    -- }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        config = function()
            require('plugins.nvimtree')
        end
    }

    use {
        'noib3/nvim-cokeline',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
        config = function()
            require('plugins.cokeline')
        end
    }

    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lsp.lspconfig')
        end
    }

    use {
        'williamboman/nvim-lsp-installer',
        config = function()
            require('plugins.lsp.lspinstall')
        end
    }

    use {
        'L3MON4D3/LuaSnip',
        config = function()
            require('plugins.luasnip').setup()
        end
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'L3MON4D3/LuaSnip',
            -- 'hrsh7th/vim-vsnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lua',
            -- 'rafamadriz/friendly-snippets'
        },
        config = function()
            require('plugins.cmp')
        end
    }

    use {
        'preservim/nerdcommenter',
        config = function()
            require('plugins.nerdcommenter')
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require('plugins.autopairs')
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('plugins.treesitter')
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('plugins.telescope')
        end
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('plugins.gitsigns')
        end
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('plugins.colorizer')
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require('plugins.toggleterm')
        end
    }

end)
