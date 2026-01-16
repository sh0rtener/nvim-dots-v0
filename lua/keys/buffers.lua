require('keys/alias')

nm('<leader>n', ':BufferLineCyclePrev<CR>')
nm('<leader>m', ':BufferLineCycleNext<CR>')
nm('<leader>q', ':bdelete!<CR>') -- close buffer
for i = 1, 9 do
	nm('<leader>' .. i, ':BufferLineGoToBuffer ' .. i .. '<CR>')
end


