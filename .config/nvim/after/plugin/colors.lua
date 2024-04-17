require('rose-pine').setup({
	disable_background = true,
})

vim.cmd.colorscheme("rose-pine-main")
vim.opt.winhighlight = "Normal:Normal,NormaNC:Normal"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
