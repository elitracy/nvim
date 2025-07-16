return {
    {
        'ThePrimeagen/harpoon',
        dependencies = { 'nvim-lua/plenary.nvim', },
        config = function()
            local ui = require("harpoon.ui")
            local mark = require("harpoon.mark")

            vim.keymap.set('n', '<leader>fh', function() ui.toggle_quick_menu() end)
            vim.keymap.set('n', '<leader>ha', function() mark.add_file() end)
            vim.keymap.set('n', '<leader>hn', function() ui.nav_next() end)
            vim.keymap.set('n', '<leader>hp', function() ui.nav_prev() end)
        end
    }
}
