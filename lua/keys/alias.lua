-- Алиас для апи vim для установки горячих

local map = vim.api.nvim_set_keymap

-- Функции для присваивания комманд в определенных режимах
-- условно, 
--		n -> NORMAL MODE
-- 		i -> INSERT MODE
-- 		v -> VISUAL MODE
-- 		t -> TERMINAL MODE

-- Сама же функция map выполняет функцию присваивания горячих клавиш, где
--		key -> строка с горячей клавишей
-- 		command -> команда

function nm(key, command)
		map('n', key, command, {noremap=true})
end

function im(key, command)
		map('i', key, command, {noremap=true})
end

function vm(key, command)
		map('v', key, command, {noremap=true})
end

function tm(key, command)
		map('v', key, command, {noremap=true})
end
