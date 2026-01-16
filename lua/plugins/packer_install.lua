vim.cmd [[packadd packer.nvim]]
require('plugins/dap/csharp')
require('plugins/dap')

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins/lspkind')
		end
	}

	use {
		'williamboman/nvim-lsp-installer', }

	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup {}
		end
	}

	use {
		'mason-org/mason.nvim'
	}

	use {
		'mason-org/mason-lspconfig.nvim',
		requires = { 'mason-org/mason.nvim' }
	}

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('plugins/nvim-tree')
		end
	}

	use {
		'catppuccin/nvim',
		as = 'catppuccin'
	}

	use {
		'navarasu/onedark.nvim',
		tag = 'v0.1.0'
	}

	use {
		'akinsho/bufferline.nvim',
		requires = 'nvim-tree/nvim-web-devicons',
		config = function()
			require("bufferline").setup {
				options = {
					numbers = "ordinal",
					close_command = "bdelete! %d",
					right_mouse_command = "bdelete! %d",
					left_mouse_command = "buffer %d",
					middle_mouse_command = nil,
					indicator = { style = "underline" },
					show_buffer_close_icons = true,
					show_close_icon = true,
					separator_style = "slant",
				}
			}
		end
	}


	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	use { 'nvim-neotest/nvim-nio' }
	use { 'mfussenegger/nvim-dap' }

	use { 'rcarriga/nvim-dap-ui' }
	use { 'jay-babu/mason-nvim-dap.nvim' }

	use {
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup(
				{
					---Add a space b/w comment and the line
					padding = true,
					---Whether the cursor should stay at its position
					sticky = true,
					---Lines to be ignored while (un)comment
					ignore = nil,
					---LHS of toggle mappings in NORMAL mode
					toggler = {
						---Line-comment toggle keymap
						line = 'gcc',
						---Block-comment toggle keymap
						block = 'gbc',
					},
					---LHS of operator-pending mappings in NORMAL and VISUAL mode
					opleader = {
						---Line-comment keymap
						line = 'gc',
						---Block-comment keymap
						block = 'gb',
					},
					---LHS of extra mappings
					extra = {
						---Add comment on the line above
						above = 'gcO',
						---Add comment on the line below
						below = 'gco',
						---Add comment at the end of line
						eol = 'gcA',
					},
					---Enable keybindings
					---NOTE: If given `false` then the plugin won't create any mappings
					mappings = {
						---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
						basic = true,
						---Extra mapping; `gco`, `gcO`, `gcA`
						extra = true,
					},
					---Function to call before (un)comment
					pre_hook = nil,
					---Function to call after (un)comment
					post_hook = nil,
				}
			)
		end,
	}

	use {
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({
				enabled = function(bufnr) return true end, -- control if auto-pairs should be enabled when attaching to a buffer
				disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input" },
				disable_in_macro = true,        -- disable when recording or executing a macro
				disable_in_visualblock = false, -- disable when insert after visual block mode
				disable_in_replace_mode = true,
				ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
				enable_moveright = true,
				enable_afterquote = true, -- add bracket pairs after quote
				enable_check_bracket_line = true, --- check bracket in same line
				enable_bracket_in_quote = true, --
				enable_abbr = false,  -- trigger abbreviation
				break_undo = true,    -- switch for basic rule break undo sequence
				check_ts = false,
				map_cr = true,
				map_bs = true, -- map the <BS> key
				map_c_h = false, -- Map the <C-h> key to delete a pair
				map_c_w = false, -- map <c-w> to delete a pair if possible
			})
		end
	}
end)
