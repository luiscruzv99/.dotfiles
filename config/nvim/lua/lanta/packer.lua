vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'nvim-tree/nvim-web-devicons'
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim", as = "catppuccin" }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim',
                run = function()
                    pcall(vim.api.nvim_command, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use { 'kdheepak/tabline.nvim',
        requires = { { 'hoob3rt/lualine.nvim', opt = true },
            { 'kyazdani42/nvim-web-devicons', opt = true } }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use { 'nvim-treesitter/nvim-treesitter-context' }

    use { 'folke/todo-comments.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'akinsho/toggleterm.nvim' }
    use {
        'jedrzejboczar/toggletasks.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'akinsho/toggleterm.nvim',
            'nvim-telescope/telescope.nvim/',
        },
        -- To enable YAML config support
    }

    use { 'sindrets/diffview.nvim' }

    use { 'NeogitOrg/neogit',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim',
            'nvim-telescope/teslescope.nvim'
        },
        config = true
    }
end)
