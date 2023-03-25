vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ 
	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
		  vim.cmd("colorscheme catppuccin-macchiato")
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

end)
