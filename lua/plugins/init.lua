local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print "---------------------------------------------------------"
	print "Press Enter to install packer and plugins."
	print "After install -- close and reopen Neovim to load configs!"
	print "---------------------------------------------------------"
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand to reload neovim when you save plugins.lua
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
	return
end

packer.startup(function(use)
	use 'wbthomason/packer.nvim'           	-- packer manages itself 
	use 'nvim-lua/plenary.nvim'            	-- avoids callbacks, used by other plugins for async tasks
	use 'nvim-lua/popup.nvim'              	-- popup for other plugins
	use 'nvim-treesitter/nvim-treesitter'  	-- language parsing completion engine
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'neovim/nvim-lspconfig'            	-- language server protocol implementation
	use 'hrsh7th/nvim-cmp'                 	-- The vim completion engine
	use 'L3MON4D3/LuaSnip'                 	-- Snippets completion
	use 'saadparwaiz1/cmp_luasnip'         	-- snippets for nvim-cmp (the vim completion engine)
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'               
	use 'ray-x/lsp_signature.nvim' 			-- Improved lsp signature (highlights arguments while writing) 
	use 'mfussenegger/nvim-dap'				-- DAP - Debug Adapter Protocol for nvim (mentioned by neovim developers)
	use 'williamboman/mason.nvim'			-- Mason: LSP, DAP, Treesitter packages installer/updater
    use 'williamboman/mason-lspconfig.nvim' -- Mason-lspconfig integration (autoconfigures new installed LSP/DAP/linters/...)
	use 'nvim-telescope/telescope.nvim'    	-- finder, requires fzf and ripgrep
	use 'gruvbox-community/gruvbox'        	-- schmexy colors	
	use 'mhartington/oceanic-next'			-- color scheme oceanic
	use 'TimUntersberger/neogit'            -- Git integration (it is a clone of Magit: light and intuitive, use ? on the window to invoke help)
	use 'tpope/vim-commentary' 				-- "gc" to comment visual regions/lines	
	use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
	use 'windwp/nvim-autopairs' 			-- Automatic tags management
	use 'Carlosmape/project-templates.nvim' -- Project/templates manager
	use 'startup-nvim/startup.nvim' 		-- Startup configuration custom startup dashboards
	use 'kyazdani42/nvim-web-devicons'      -- Icon font
	use 'yamatsum/nvim-nonicons'			-- Icon configurations
	use 'nvim-lualine/lualine.nvim'			-- Lua line compatible with nvim-web-devicons
	use 'kyazdani42/nvim-tree.lua'			-- File explorer (depends on nvim-web-devicons)
	use 'norcalli/nvim-colorizer.lua' 		-- highlight colors in code (for HEX, RGB...)
	

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if Packer_Bootstrap then
		require('packer').sync()
	end
end)
