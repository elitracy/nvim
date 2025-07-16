return {
    {
        "oxfist/night-owl.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- require("night-owl").setup()
        end
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                -- Recommended - see "Configuring" below for more config options
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
                borderless_telescope = true,
                terminal_colors = true,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "bluz71/vim-moonfly-colors", },
    { 'ellisonleao/gruvbox.nvim', },
    {
        "fynnfluegge/monet.nvim",
        name = "monet",
    },

    {
        "diegoulloao/neofusion.nvim",
        priority = 1000,
        opts = ...
    },
    {
        "rebelot/kanagawa.nvim",
    },
    {
        "catppuccin/nvim",
    },
    {
        'everviolet/nvim',
        name = 'evergarden',
        priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
        opts = {
            theme = {
                variant = 'spring', -- 'winter'|'fall'|'spring'|'summer'
                accent = 'green',
            },
            editor = {
                transparent_background = false,
                sign = { color = 'none' },
                float = {
                    color = 'mantle',
                    invert_border = false,
                },
                completion = {
                    color = 'surface0',
                },
            },
            overrides = {
                Keyword = {
                    fg = '#ce96de',
                    bg = '#ae45be',
                },
            },
        },

        config = function()
            -- vim.cmd("colorscheme evergarden")
        end
    },
    {
        'EdenEast/nightfox.nvim',
        priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
        config = function()
            vim.cmd("colorscheme terafox")
        end
    }


}
