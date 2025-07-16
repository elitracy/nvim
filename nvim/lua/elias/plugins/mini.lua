return {
    {
        "echasnovski/mini.pairs",
        dependencies = { "windwp/nvim-ts-autotag" },
        version = "*",
        config = function()
            require("mini.pairs").setup()
        end
    },
    {
        "echasnovski/mini.surround",
        version = "*",
        config = function()
            require("mini.surround").setup()
        end
    },
    {
        "echasnovski/mini.comment",
        version = "*",
        config = function()
            require("mini.comment").setup()

            -- jsx fragments
            local get_option = vim.filetype.get_option
            vim.filetype.get_option = function(filetype, option)
                return option == "commentstring"
                    and require("ts_context_commentstring.internal").calculate_commentstring()
                    or get_option(filetype, option)
            end
        end
    },
    {
        "echasnovski/mini.ai",
        version = "*",
        config = function()
            require("mini.ai").setup()
        end
    },
    {
        "echasnovski/mini.icons",
        version = "*",
        config = function()
            require("mini.icons").setup()
        end
    },
}
