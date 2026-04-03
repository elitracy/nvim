return {
    "sudo-tee/opencode.nvim",
    config = function()
        require("opencode").setup({
            preferred_picker = "snacks",
            preferred_completion = "blink",
            default_mode = "plan",
            ui = {
                input = {
                    text = {
                        wrap = true,
                    },
                }
            }
        })
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
                anti_conceal = { enabled = false },
                file_types = { 'markdown', 'opencode_output' },
            },
            ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
        },
        'saghen/blink.cmp',
        'folke/snacks.nvim',
    },
}
