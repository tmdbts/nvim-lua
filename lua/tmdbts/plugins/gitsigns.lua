local config = {
    signs = {
        add = { text = "+" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
    },
}

return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require "gitsigns"
        gitsigns.setup(config)

        vim.keymap.set("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle git show [b]lame line" })
    end,
}
