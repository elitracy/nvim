local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    sorting_strategy = "ascending",
    grouped = true,
    layout_config = { prompt_position = "top" }
  },
  extensions = {
    file_browser = {
      grouped = true,
      initial_mode = 'normal',
      layout_config = { prompt_position = "top" }
    }
  }
}

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>;r', builtin.live_grep, {})
vim.keymap.set('n', '<leader>;;', builtin.buffers, {})
vim.keymap.set('n', '<leader>;t', builtin.help_tags, {})
vim.keymap.set('n', '<leader>;h', builtin.oldfiles, {})

telescope.load_extension "file_browser"
vim.keymap.set("n", "sf", ":Telescope file_browser<CR> ", { noremap = true, silent = true })
