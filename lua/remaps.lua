vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
keymap.set('n', 'q:', ':q')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete whole word
keymap.set('n', 'dw', 'daw')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>', { silent = true })
keymap.set('n', 'tq', ':tabclose<CR>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move between windows
-- keymap.set('n', '<Space>', '<C-w>w')
-- keymap.set('', 's<up>', '<C-w>k')
-- keymap.set('', 's<right>', '<C-w>l')
-- keymap.set('', 's<down>', '<C-w>j')
-- keymap.set('', 's<left>', '<C-w>h')
-- keymap.set('', 'sk', '<C-w>k')
-- keymap.set('', 'sl', '<C-w>l')
-- keymap.set('', 'sj', '<C-w>j')
-- keymap.set('', 'sh', '<C-w>h')

keymap.set('', 's<up>', ':<C-U>TmuxNavigateUp<cr>',{ silent = true })
keymap.set('', 's<right>', ':<C-U>TmuxNavigateRight<cr>',{ silent = true })
keymap.set('', 's<down>', ':<C-U>TmuxNavigateDown<cr>',{ silent = true })
keymap.set('', 's<left>', ':<C-U>TmuxNavigateLeft<cr>',{ silent = true })
keymap.set('', 'sk', ':<C-U>TmuxNavigateUp<cr>',{ silent = true })
keymap.set('', 'sl', ':<C-U>TmuxNavigateRight<cr>',{ silent = true })
keymap.set('', 'sj', ':<C-U>TmuxNavigateDown<cr>',{ silent = true })
keymap.set('', 'sh', ':<C-U>TmuxNavigateLeft<cr>',{ silent = true })

-- Move out of terminal
-- keymap.set('t', ';;', '<C-\\><C-n><C-w>w')
keymap.set('t', '<Esc>', '<C-\\><C-n><C-w><Esc>')
keymap.set('n', 'Ss', ':split <CR><C-w>w | :term<CR>', { silent = true })
keymap.set('n', 'Sv', ':vsplit <CR><C-w>w | :term<CR>', { silent = true })


-- Resize window
keymap.set('n', '<C-w><left>', '10<C-w><')
keymap.set('n', '<C-w><right>', '10<C-w>>')
keymap.set('n', '<C-w><up>', '5<C-w>+')
keymap.set('n', '<C-w><down>', '5<C-w>-')
keymap.set('n', 's=', '<C-w>=')

-- Toggle Terminal
keymap.set('', "<leader>j", ":FloatermToggle<CR>", { silent = true })

-- Better Copy/Pasting
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Move lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- Center buffer on movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
