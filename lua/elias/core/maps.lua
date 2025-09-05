local map = vim.keymap

map.set('n', 'x', '"_x')

map.set('n', '<leader>rn', '<CMD> set relativenumber! <CR>')

map.set('n', '<leader>os', '<CMD> set spell! <CR>')

map.set('n', '<leader>j', 'o<ESC>')
map.set('n', '<leader>k', 'O<ESC>')

-- Select all
map.set('n', '<C-a>', 'gg<S-v>G')

-- Splits
map.set('n', '<leader>sv', '<CMD> vsplit <CR>')
map.set('n', '<leader>ss', '<CMD> split <CR>')

-- Resize pane
map.set('n', '<leader>s<left>', '<C-w><')
map.set('n', '<leader>s<right>', '<C-w>>')
map.set('n', '<leader>s<up>', '<C-w>+')
map.set('n', '<leader>s<down>', '<C-w>-')
map.set('n', '<leader>s=', '<C-w>=')

-- LSP map
map.set('n', '<leader>li', '<CMD> LspInfo <CR>')
map.set('n', '<leader>lr', '<CMD> LspRestart <CR>')
map.set('n', '<leader>ll', '<CMD> LspLog <CR>')
