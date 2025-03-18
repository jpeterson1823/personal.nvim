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
