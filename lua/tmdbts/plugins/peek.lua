return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup()

        -- refer to `configuration to change defaults`
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

        vim.keymap.set("n", "<leader>op", ":PeekOpen<CR>")
        vim.keymap.set("n", "<leader>oP", ":PeekClose<CR>")
    end,
}
