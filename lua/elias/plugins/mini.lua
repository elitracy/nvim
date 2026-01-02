return {
    {
        "echasnovski/mini.pairs",
        dependencies = { "windwp/nvim-ts-autotag" },
        version = "*",
        config = function()
            local pairs = require("mini.pairs")
            pairs.setup({
                modes = { insert = true, command = false, terminal = false },
                mappings = {
                    ['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
                    ['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
                    ['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },
                    [')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
                    [']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
                    ['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },
                    ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^\\].', register = { cr = false } },
                    ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%a\\].', register = { cr = false } },
                    ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\].', register = { cr = false } },
                },
            })

            -- Ensure CR works with mini.pairs after completion
            vim.keymap.set('i', '<CR>', 'v:lua.MiniPairs.cr()', { expr = true, replace_keycodes = false })

            -- Ensure BS deletes pairs properly
            vim.keymap.set('i', '<BS>', 'v:lua.MiniPairs.bs()', { expr = true, replace_keycodes = false })
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
