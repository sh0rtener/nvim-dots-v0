require('keys/alias')

local builtin = require('telescope.builtin')

nm('<leader>ff', builtin.find_files) -- search by files in project
nm('<leader>fb', builtin.buffers) -- search by opened buffers
nm('<leader>fg', builtin.live_grep) -- find by words


