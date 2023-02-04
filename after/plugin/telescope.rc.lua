local telescope = require("telescope")
local builtin = require("telescope.builtin")

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>;r', builtin.live_grep, {})
vim.keymap.set('n', '<leader>;;', builtin.buffers, {})
vim.keymap.set('n', '<leader>;t', builtin.help_tags, {})
vim.keymap.set('n', '<leader>;h', builtin.oldfiles, {})

telescope.load_extension "file_browser"
vim.keymap.set( "n", "sf", ":Telescope file_browser<CR> initial_mode=normal ", { noremap = true, silent = true } )
