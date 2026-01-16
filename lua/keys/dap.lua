require('keys/alias')
local dap = require('dap')

nm('<F5>', function() dap.continue() end) -- go
nm('<F10>', function() dap.step_over() end) -- step over
nm('<F11>', function() dap.step_into() end) -- step into 
nm('<F12>', function() dap.step_out() end) -- step out
nm('<leader>db', function() dap.toggle_breakpoint() end) -- set breakpoint
nm('<leader>dc', function() dap.clear_breakpoints() end) -- clear breakpoint
nm('<leader>dr', function() dap.repl.open() end) -- DAP console
nm('<leader>ca', vim.lsp.buf.code_action) -- open code actions
