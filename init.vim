" load NeoVim configs
source vimfiles/neovim.vim

" load VimPlug configs
source vimfiles/plug.vim

" load colorscheme config
source vimfiles/colorscheme.vim

" load remaps
source vimfiles/remaps.vim

" load coc configs
source vimfiles/coc.vim

lua << EOF

-- import all lua config files
require('neovim-cfg')
require('nvim-tree-cfg')
require('nvim-treesitter-cfg')
require('lualine-cfg')
require('autofill-cfg')

EOF
