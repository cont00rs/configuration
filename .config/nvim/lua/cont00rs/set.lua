vim.g.mapleader = " "

-- Leader twice to toggle latest buffer.
vim.keymap.set("n", "<leader><leader>", "<c-^>")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undofile = true

vim.opt.relativenumber = true
vim.opt.number = true

-- These seem no longer needed.
-- vim.opt.formatoptions:append("n")

vim.opt.path:append("**")

vim.opt.wildmode = "list:longest"
vim.opt.wildignore = "*o,*.swp,*.mod"
vim.fn.matchadd("QuickFixLine", "/\\s/+$/")

local mygroup = vim.api.nvim_create_augroup("MyGroup", { clear = false })

-- Make trailing whitespaces explicit
vim.api.nvim_set_hl(0, 'ExtraWhiteSpace', { bg = "darkred" })

vim.api.nvim_create_autocmd({"BufWinEnter", "InsertLeave"}, {
    group = "MyGroup",
    pattern = "*",
    command = [[match ExtraWhiteSpace /\s\+$/]]
})

vim.api.nvim_create_autocmd({"InsertEnter"}, {
    group = "MyGroup",
    pattern = "*",
    command = [[match ExtraWhiteSpace /\s\+\%#\@<!$/]]
})

vim.api.nvim_create_autocmd(
	"BufReadPost",
	{callback = function()
			local row, col = unpack(vim.api.nvim_buf_get_mark(0, "\""))
			if {row, col} ~= {0, 0} then
				vim.api.nvim_win_set_cursor(0, {row, 0})
			end
		end,
	group = "MyGroup"
	}
)
