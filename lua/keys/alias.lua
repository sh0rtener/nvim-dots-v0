local map = vim.keymap

--		n -> NORMAL MODE
-- 		i -> INSERT MODE
-- 		v -> VISUAL MODE
-- 		t -> TERMINAL MODE

function nm(key, command)
		map.set('n', key, command, {noremap=true})
end

function im(key, command)
		map.set('i', key, command, {noremap=true})
end

function vm(key, command)
		map.set('v', key, command, {noremap=true})
end

function tm(key, command)
		map.set('t', key, command, {noremap=true})
end
