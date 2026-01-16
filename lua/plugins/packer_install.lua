vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	
	use 'wbthomason/packer.nvim' -- самообновление packer
	use 'neovim/nvim-lspconfig' -- плагин LSP сервера
	use { -- иконки автодополнения
		'onsails/lspkind-nvim',
		config = function() 
			require('plugins/lspkind')
		end
	}

	use { -- установщик LSP серверов
		'williamboman/nvim-lsp-installer',
	}

	use { -- меню проблем LSP
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup {}
		end
	}
	
	use {
		'mason-org/mason.nvim',
		config = function()
			require('mason').setup {}
		end
	}

end)
