-- set local variables
local opt = vim.opt
local g = vim.g

-- [[ DEFAULT ]]

-- off default file manager
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.clipboard = 'unnamedplus'
opt.fixeol = false -- off end-file completion 
opt.completeopt = 'menuone,noselect' -- autocomplete 
opt.swapfile = false -- off swapfile
opt.number = true
opt.relativenumber = true

-- set leader key
g.mapleader = ' '
g.maplocalleader = ','

-- [[ SPLITS ]] 
opt.splitright = true
opt.splitbelow = true

-- [[ OTHER ]]
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- off autocomment when go to new line
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, { -- use codelens
  callback = function()
    vim.lsp.codelens.refresh()
  end
})


