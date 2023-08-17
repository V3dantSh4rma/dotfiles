vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
  }

  use('andweeb/presence.nvim')
  
  use {
  	'nvim-telescope/telescope.nvim', branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'neoclide/coc.nvim', branch = 'release'}
  
  use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate' })

  use {
	  "folke/which-key.nvim",
	  config = function()
		  vim.o.timeout = true
		  vim.o.timeoutlen = 300
		  require("which-key").setup {}
    end
  }
  
  use('mbbill/undotree')
  
  use('tpope/vim-fugitive')


  use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
		  require("startup").setup({theme="evil"})
	  end
  }

  use {
	"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end
  }

  use('navarasu/onedark.nvim')

  use('lewis6991/gitsigns.nvim')

  use("numToStr/FTerm.nvim")

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
	  "folke/trouble.nvim",
	  requires = {'nvim-tree/nvim-web-devicons', opt = true}
  }

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use("lukas-reineke/indent-blankline.nvim")
  
  use {
  
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  {'neovim/nvim-lspconfig'},             
		  {                                      
			  'williamboman/mason.nvim',
			  run = function()
				  pcall(vim.cmd, 'MasonUpdate')
			  end,
		  },
		  {'williamboman/mason-lspconfig.nvim'},

    	-- Autocompletion
	{'hrsh7th/nvim-cmp'},     
	{'hrsh7th/cmp-nvim-lsp'}, 

	{'L3MON4D3/LuaSnip'},     
    }
}
end)
