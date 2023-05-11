if has("nvim")
	let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'nvim-tree/nvim-tree.lua'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Themes
Plug 'sainnhe/everforest'
Plug '4513ECHO/vim-colors-hatsunemiku'
Plug 'arcticicestudio/nord-vim'
Plug 'pineapplegiant/spaceduck'
Plug 'jnurmine/Zenburn'
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/sonokai'
Plug 'sickill/vim-monokai'
Plug 'sjl/badwolf'
Plug 'raphamorim/lucario'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'projekt0n/github-nvim-theme'

call plug#end()
