" NeoVim Behavior
set shiftwidth=4
set tabstop=4
set smarttab
set nowrap
set cursorline
set background=dark
set nobackup
set hlsearch
set showcmd
set expandtab
set backupskip=/tmp/*,/private/tmp/*
set number
"set ruler
set foldmethod=indent
"set foldexpr=nvim_treesitter#foldexpr()
set t_BE=
set nosc noru nosm
"set syntax

" Open all folds upon opening a file
autocmd BufReadPost,FileReadPost * normal zR


" VimPlug stuff
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




" Set Colorscheme
colorscheme nightfox
"colorscheme nordfox 
"let g:gruvbox_italic=1
"let g:gruvbox_contrast_dark='soft'
"colorscheme gruvbox


" Hotkey Remapping
nnoremap <silent><C-n> :NvimTreeOpen<Enter>
nnoremap <silent><S-n> :NvimTreeClose<Enter>

" source coc config file
source ~/.config/nvim/coc.vim

lua << EOF

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- setup for autofil
require("autoclose").setup({
    keys = {
        ["{"] = { escape = true, close = true, pair="{}" },
        ["["] = { escape = true, close = true, pair="[]" },
        ["("] = { escape = true, close = true, pair="()" },
        ["\""]= { escape = true, close = true, pair="\"\"", disabled_filetypes={"vim"} }
    }
})

-- empty nvim-tree setup using defaults
require("nvim-tree").setup({})

-- basic treesitter setup
require('nvim-treesitter.configs').setup({
    ensure_installed = {cmake, c, cpp, go, lua, vim},
    sync_install = false,
    ignore_install = {javascript},
    highlight = {
        enable = true
    }
})

-- lualine setup
require('lualine').setup({
    options = { theme = 'auto'}
})

EOF
