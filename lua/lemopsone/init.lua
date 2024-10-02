vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("lemopsone.remap")
require("lemopsone.setup")
require("lemopsone.myfuncs")
require("lemopsone.lazy_init")
require("lemopsone.langmap")

function R(name)
	require("plenary.reload").reload_module(name)
end

local augroup = vim.api.nvim_create_augroup
local MyGroup = augroup("lemopsone", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('BufWritePre', {
	group = MyGroup,
	pattern = '',
	command = ":%s/\\s\\+$//e"
})

autocmd('BufEnter', {
	group = MyGroup,
	pattern = '',
	command = 'set fo-=c fo-=r fo-=o'
})

autocmd({ 'BufNewFile', 'BufRead' }, {
	group = MyGroup,
	pattern = "*.inc",
	command = "set ft=cpp"
})

autocmd('LspAttach', {
    group = MyGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

vim.filetype.add({
	extension ={
		qrc = "xml",
		inc = "cpp",
		mov = "cpp",
	}
})

-- require('langmapper').automapping({ global = true, buffer = false })
