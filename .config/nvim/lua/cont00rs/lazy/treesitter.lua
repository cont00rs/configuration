return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    event = { "BufReadPre", "BufNewFile" },

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "diff", "gitcommit", "git_rebase", "julia", "lua", "python", "vim", "vimdoc"},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
