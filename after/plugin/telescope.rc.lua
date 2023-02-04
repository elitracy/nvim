local telescope = require("telescope")
local builtin = require("telescope.builtin")
local extensions = telescope.extensions

telescope.setup {
  defaults = {
    sorting_strategy = "ascending",
    grouped = true,
    layout_config = { prompt_position = "top" },
    hidden = true,
    file_ignore_patterns = { ".git", "build", "node_modules" }
  },
  extensions = {
    file_browser = {
      grouped = true,
      initial_mode = 'normal',
      layout_config = { prompt_position = "top" },
      hidden = true,
      hijack_netrw = true,
      cwd_to_path = true,
      files = true,
      auto_depth = 2,
      git_status = true,
      file_ignore_patterns = { ".git", "build", "node_modules" }
    }
  }
}

telescope.load_extension "file_browser"
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'sf', extensions.file_browser.file_browser, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

vim.keymap.set('n', '<leader>;r', builtin.live_grep, {})
vim.keymap.set('n', '<leader>;;', builtin.buffers, {})
vim.keymap.set('n', '<leader>;t', builtin.help_tags, {})
vim.keymap.set('n', '<leader>;h', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>;d', builtin.diagnostics, {})

-- vim.keymap.set("n", "sf", ":Telescope file_browser<CR> ", { noremap = true, silent = true })
