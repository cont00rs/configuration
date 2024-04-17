vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself too.
    use 'wbthomason/packer.nvim'

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim'} }
    })


    use 'nvim-treesitter/nvim-treesitter'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
        }
    }

    use 'tpope/vim-fugitive'
end)
