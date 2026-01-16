require('keys/alias')

nm('<leader>e', vim.diagnostic.open_float) -- show error
nm('[d', vim.diagnostic.goto_prev) -- go to prev error
nm(']d', vim.diagnostic.goto_next) -- go to next error
