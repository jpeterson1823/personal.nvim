-- setup for autofil
require("autoclose").setup({
    keys = {
        ["{"] = { escape = true, close = true, pair="{}" },
        ["["] = { escape = true, close = true, pair="[]" },
        ["("] = { escape = true, close = true, pair="()" },
        ["\""]= { escape = true, close = true, pair="\"\"", disabled_filetypes={"vim"} }
    }
})
