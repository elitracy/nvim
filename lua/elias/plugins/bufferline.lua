return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local bufline = require("bufferline")

        bufline.setup({
            options = {
                always_show_bufferline = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
            }
        })

        vim.keymap.set("n", "[b", ":BufferLineCycleNext<CR>")
        vim.keymap.set("n", "]b", ":BufferLineCyclePrev<CR>")
    end

}
