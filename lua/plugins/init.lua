return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'cocopon/iceberg.vim'
    use 'nvim-lua/plenary.nvim'
    use 'famiu/bufdelete.nvim'
    use 'windwp/nvim-ts-autotag'

    use {
        'famiu/feline.nvim',
        requires = {
          'kyazdani42/nvim-web-devicons'
        },
        config = function()
          require('plugins.feline')
        end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons'
        },
        config = function()
          require('plugins/nvimtree')
        end
    }

    use {
        'akinsho/bufferline.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            'famiu/bufdelete.nvim'
        },
        config = function()
            require('plugins/bufferline')
        end
    }

    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins/lsp/lspconfig')
        end
    }

    use 'kabouzeid/nvim-lspinstall'

    use {
        'L3MON4D3/LuaSnip',
        config = function()
            require('plugins/luasnip').setup()
        end
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-buffer',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lsp',
            -- 'rafamadriz/friendly-snippets'
        },
        config = function()
            require('plugins/cmp')
        end
    }

    use {
        'preservim/nerdcommenter',
        config = function()
            require('plugins/nerdcommenter')
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require('plugins/autopairs')
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('plugins/treesitter')
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('plugins/telescope')
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
            require('plugins/gitsigns')
        end
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('plugins/colorizer')
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require('plugins/toggleterm')
        end
    }

end)
