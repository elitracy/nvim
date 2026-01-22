return {
    "gorbit99/codewindow.nvim",
    lazy = false,
    keys = {
        { "<leader>mm", function() require("codewindow").toggle_minimap() end, desc = "Toggle minimap" },
    },
    config = function()
        require("codewindow").setup({
            show_cursor = false,
            screen_bounds = "background",
            window_border = "none",
            auto_enable = true,
            relative = "editor",
            minimap_width = 10,
        })
    end,
}
