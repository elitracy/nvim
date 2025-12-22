local opt = vim.opt

vim.g.mapleader = ' '
vim.scriptencoding = 'utf8'
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

opt.number = true
opt.rnu = true

opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = false
opt.backup = false
opt.showcmd = true
opt.cmdheight = 2
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'zsh'
opt.backupskip = '/tmp/*,/private/tmp/*'
opt.inccommand = 'split'
opt.ignorecase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.wrap = false
opt.backspace = { 'start', 'eol', 'indent' }
opt.path:append { '**' }
opt.wildignore:append { '*/node_modules/*' }
opt.mouse = 'a'
opt.pumheight = 10
opt.ttimeoutlen = 10
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldnestmax = 1
opt.foldlevel = 0
opt.foldlevelstart = 1

-- MacOS
opt.clipboard:append { 'unnamedplus' }
