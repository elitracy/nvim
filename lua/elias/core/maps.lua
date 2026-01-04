local map = vim.keymap

-- Delete without overwriting clipboard
map.set('n', 'x', '"_x')
map.set('n', 'd', '"_d')
map.set('n', 'D', '"_D')
map.set('n', 'c', '"_c')
map.set('n', 'C', '"_C')
map.set('v', 'd', '"_d')
map.set('v', 'c', '"_c')

-- dd auto cuts to system clipboard
map.set('n', 'dd', '"+dd')

-- Use leader+d/c for cut operations
map.set({ 'n', 'v' }, '<leader>d', '"+d')
map.set({ 'n', 'v' }, '<leader>c', '"+c')

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

-- Folds
map.set('n', 'zO', 'zR')
map.set('n', 'zC', 'zM')

-- Surround visual selection by typing the delimiter
map.set('x', '<leader>"', [[c""<Esc>P]], { desc = 'Surround with double quotes' })
map.set('x', "<leader>'", [[c''<Esc>P]], { desc = 'Surround with single quotes' })
map.set('x', '<leader>(', [[c()<Esc>P]], { desc = 'Surround with parentheses' })
map.set('x', '<leader>[', [[c[]<Esc>P]], { desc = 'Surround with brackets' })
map.set('x', '<leader>{', [[c{}<Esc>P]], { desc = 'Surround with braces' })
map.set('x', '<leader>`', [[c``<Esc>P]], { desc = 'Surround with backticks' })
