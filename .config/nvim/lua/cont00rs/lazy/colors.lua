return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require("kanagawa").setup({
                -- On the fence, but lets try slightly lighter background.
                transparent = false,
                compile = false,

                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                statementStyle = { italic = false },

                -- Not a fan of different gutter colors, disabled.
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none"
                            }
                        }
                    }
                },
            })

            vim.cmd("colorscheme kanagawa-wave")
            vim.cmd("echo \" \"")
        end
    },
}
