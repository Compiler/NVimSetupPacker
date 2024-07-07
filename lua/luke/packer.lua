vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { "rose-pine/neovim", as = "rose-pine",
        config = function() vim.cmd('colorscheme rose-pine') end}

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      {run = ':TSUpdate'}
  }

  use { 'nvim-treesitter/playground' }
  use { 'theprimeagen/harpoon' }

  use { 'mbbill/undotree' }

  use { 'tpope/vim-fugitive' }
end)
