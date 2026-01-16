require('keys/alias')

-- use default formatter
nm('<C-S-I>', function()
    vim.lsp.buf.format({ async = true })
end)

-- configure csharp formatter
vim.api.nvim_create_autocmd('BufWritePre', {
	pattern = '*.cs',
	callback = function()
		vim.fn.system({ 'csharpier', vim.fn.expand('%') })
	end,
})
