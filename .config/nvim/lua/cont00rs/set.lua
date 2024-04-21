vim.g.mapleader = " "

-- Leader twice to toggle latest buffer.
vim.keymap.set("n", "<leader><leader>", "<c-^>")

vim.opt.signcolumn = "yes"

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

-- Make trailing whitespaces explicit
vim.opt.list = true
vim.opt.listchars:append({
    trail = "·",
})

local _ = vim.api.nvim_create_augroup("MyGroup", { clear = false })

-- Jump to old location on file reopen
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

vim.api.nvim_create_autocmd('LspAttach', {
    group = "MyGroup",
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})

-- Center after jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- How to define directly in lua?
vim.cmd [[:command! -bar -nargs=* Jump cexpr system('git jump --stdout ' . expand(<q-args>)) ]]
