return {
    'stevearc/conform.nvim',

    opts = {},

    config = function()
        require("conform").setup({
            formatters_by_ft = {
                rust = { "rustfmt" },
                python = { "ruff_format" },
            },

            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_fallback = true,
                quiet = true,
            },
        })
    end
}
