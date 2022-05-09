local M = {}

function M.load_plugins()
    return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'famiu/bufdelete.nvim'
        use 'windwp/nvim-ts-autotag'

        use {
            'hoob3rt/lualine.nvim',
            requires = {
                'kyazdani42/nvim-web-devicons',
                opt = true
            },
            config = function()
                require('stage2.plugins.lualine')
            end
        }

        -- use {
        --     'nvim-neo-tree/neo-tree.nvim',
        --     branch = 'master',
        --     requires = {
        --         'nvim-lua/plenary.nvim',
        --         'kyazdani42/nvim-web-devicons',
        --         'MunifTanjim/nui.nvim'
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
                require('stage2.plugins.nvimtree')
            end
        }

        use {
            'noib3/nvim-cokeline',
            requires = {
                'kyazdani42/nvim-web-devicons'
            },
            config = function()
                require('stage2.plugins.cokeline')
            end
        }

        use {
            'williamboman/nvim-lsp-installer',
            {
                'neovim/nvim-lspconfig',
                config = function()
                    require('nvim-lsp-installer').setup({
                        automatic_installation = true
                    })

                    require('stage2.plugins.lsp.lspconfig')
                end
            }
        }

        use {
            'L3MON4D3/LuaSnip',
            config = function()
                require('stage2.plugins.luasnip').setup()
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
                require('stage2.plugins.cmp')
            end
        }

        use {
            'preservim/nerdcommenter',
            config = function()
                require('stage2.plugins.nerdcommenter')
            end
        }

        use {
            'windwp/nvim-autopairs',
            config = function()
                require('stage2.plugins.autopairs')
            end
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = function()
                require('stage2.plugins.treesitter')
            end
        }

        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            },
            config = function()
                require('stage2.plugins.telescope')
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
                require('stage2.plugins.gitsigns')
            end
        }

        use {
            'norcalli/nvim-colorizer.lua',
            config = function()
                require('stage2.plugins.colorizer')
            end
        }

        use {
            'akinsho/toggleterm.nvim',
            config = function()
                require('stage2.plugins.toggleterm')
            end
        }

    end)
end

return M
