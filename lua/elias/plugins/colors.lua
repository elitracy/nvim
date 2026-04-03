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
        "catppuccin/nvim",
    },
    {
        "mcauley-penney/techbase.nvim"
    },
    {
        "rijulpaul/nightblossom.nvim",
    },
    {
        "challenger-deep-theme/vim",
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        config = function()
            -- vim.cmd("colorscheme oxocarbon")
            vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#cccccc" })
            vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = "#ffffff" })
        end
    },
    {
        "elitracy/blackbag.nvim",
        config = function()
            vim.cmd("colorscheme blackbag-sonar")
        end
    }



}
