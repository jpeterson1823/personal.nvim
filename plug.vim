if has("nvim")
	let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

if has("nvim")
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch':'release'}
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-tree.lua'

  " Themes
  Plug 'sainnhe/everforest'
  Plug '4513ECHO/vim-colors-hatsunemiku'
  Plug 'arcticicestudio/nord-vim'
  Plug 'pineapplegiant/spaceduck'
  Plug 'jnurmine/Zenburn'
endif

call plug#end()
