return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require("kanagawa").setup({
                -- On the fence, but lets try slightly lighter background.
                transparent = false,
                compile = false,

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
