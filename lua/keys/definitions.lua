require('keys/alias')

nm('gd', vim.lsp.buf.definition) -- go to definition
nm('gD', vim.lsp.buf.declaration) -- go to declaration
nm('gt', vim.lsp.buf.type_definition) -- types
nm('gi', vim.lsp.buf.implementation) -- realizations
nm('gr', vim.lsp.buf.references) -- links
nm('K', vim.lsp.buf.hover) -- hint (hover)
