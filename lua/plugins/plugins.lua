vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Colorscheme
    use 'folke/tokyonight.nvim'

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground'

    use 'haringsrob/nvim_context_vt'

    -- Nvim surround
    use 'kylechui/nvim-surround'
    use 'm4xshen/autoclose.nvim'
    use 'windwp/nvim-ts-autotag'

    -- Undotree
    use 'mbbill/undotree'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- file tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }

    -- Eye candy
    use 'NvChad/nvim-colorizer.lua'
    use 'sunjon/shade.nvim'
    use 'stevearc/dressing.nvim'
    use({
        'ghillb/cybu.nvim',
        branch = 'main', -- timely updates
        -- branch = 'v1.x', -- won't receive breaking changes
        requires = { 'nvim-tree/nvim-web-devicons', 'nvim-lua/plenary.nvim' },
    })
    use { 'gen740/SmoothCursor.nvim',
        config = function()
            require('smoothcursor').setup()
        end
    }
    use 'andweeb/presence.nvim'
    use 'folke/lsp-colors.nvim'

    -- Statusbar
    use({
        'utilyre/barbecue.nvim',
        requires = {
            'neovim/nvim-lspconfig',
            'smiteshp/nvim-navic',
            'nvim-tree/nvim-web-devicons', -- optional dependency
        },
        after = 'nvim-web-devicons', -- keep this if you're using NvChad
        config = function()
            require('barbecue').setup()
        end,
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- neovim development
    use "folke/neodev.nvim"
end)
