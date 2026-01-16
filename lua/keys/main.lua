require('keys/alias')
local lsp = vim.lsp

nm('<leader>cl', lsp.codelens.run)
nm('<leader>sr', lsp.buf.references)
nm('<C-h>', '<C-w>h')
nm('<C-j>', '<C-w>j')
nm('<C-k>', '<C-w>k')
nm('<C-l>', '<C-w>l')

-- [[ USE OTHER KEYSETTINGS ]]
require('keys/formatter')
require('keys/errors')
require('keys/nvim-tree')
require('keys/buffers')
require('keys/search')
require('keys/dap')
require('keys/definitions')
