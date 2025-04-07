return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
        local theme = require "onedarkpro.themes.onedark"

        require("onedarkpro").setup {
            highlights = {
                CursorLineNr = { fg = theme.palette.line_number },
            },
        }

        vim.cmd.colorscheme "onedark"
    end,
}
