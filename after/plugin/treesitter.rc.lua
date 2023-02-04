require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "html", "css", "c", "lua", "vim", "help" },
  sync_install =  true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
