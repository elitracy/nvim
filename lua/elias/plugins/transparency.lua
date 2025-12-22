return {
    "xiyaowong/transparent.nvim",
    event = "VeryLazy",
    config = function()
        require("transparent").setup({
            exclude_groups = {
                "CursorLine",
            },
            extra_groups = {
                -- Core UI
                "SignColumn",
                "NormalFloat",
                "FloatBorder",

                -- Snacks-specific
                "SnacksNormal",
                "SnacksNormalNC",
                "SnacksWin",
                "SnacksWinNC",
                "SnacksExplorerNormal",
                "SnacksExplorerNormalNC",

                -- Gitsigns
                "GitSignsAdd",
                "GitSignsChange",
                "GitSignsDelete",
                "GitSignsAddNr",
                "GitSignsChangeNr",
                "GitSignsDeleteNr",
                "GitSignsAddLn",
                "GitSignsChangeLn",
                "GitSignsDeleteLn",
            },
        })
    end
}
