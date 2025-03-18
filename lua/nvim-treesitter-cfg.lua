-- basic treesitter setup
require('nvim-treesitter.configs').setup({
    ensure_installed = {cmake, c, cpp, go, lua, vim},
    sync_install = false,
    ignore_install = {javascript},
    highlight = {
        enable = true
    }
})
