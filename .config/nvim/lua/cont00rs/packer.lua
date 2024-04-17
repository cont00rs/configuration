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

    use({'junegunn/fzf', run = "./install --bin"})
    use 'junegunn/fzf.vim'

    use 'nvim-treesitter/nvim-treesitter'

end)
