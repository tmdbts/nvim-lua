local config = {
    enabled = true,
    cloak_character = "*",
    highlight_group = "Comment",
    cloak_length = nil,
    patterns = {
        {
            -- Match any file starting with '.env'.
            -- This can be a table to match multiple file patterns.
            file_pattern = { ".env*", ".dev.vars" },
            -- Match an equals sign and any character after it.
            -- This can also be a table of patterns to cloak,
            -- example: cloak_pattern = { ':.+', '-.+' } for yaml files.
            cloak_pattern = "=.+",
        },
    },
}

return {
    "laytan/cloak.nvim",
    config = function()
        require("cloak").setup(config)
    end,
}
