return {
    "github/copilot.vim",

    config = function()
        vim.keymap.set("i", "<M-Right>", "<Plug>(copilot-accept-word)")
    end,
}
