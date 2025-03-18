call plug#begin()

" CoC (C/CXX Code Completion via clangd)
Plug 'neoclide/coc.nvim', {'branch' : 'release'}

" Nvim TreeSitter (Syntax Highlighting)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Auto-Pairing and Auto-Closing brackets
Plug 'm4xshen/autoclose.nvim'

" Nvim-Tree (file tree for NeoVim)
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

" LuaLine (pretty status line)
Plug 'nvim-lualine/lualine.nvim'

" Nvim Telescope (fuzzy finder)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }

" THEMES
Plug 'shaunsingh/nord.nvim'
Plug 'AlexvZyl/nordic.nvim'
Plug 'neanias/everforest-nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'morhetz/gruvbox'

call plug#end()
