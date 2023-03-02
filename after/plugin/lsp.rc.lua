local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'lua_ls',
  'eslint',
  'pyright'
})

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
  vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup_format,
    buffer = bufnr,
    callback = function()
      vim.cmd("LspZeroFormat")
    end,
  })
end

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
  on_attach = function(client, bufnr)
    enable_format_on_save(client, bufnr)
  end,
  settings = {
    diagnostics = {
      globals = { 'vim' }
    }
  }
})

lsp.configure('eslint', {
  on_attach = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*.tsx', '*.ts', '*.jsx', '*.js', '*.svelte' },
      command = 'silent! EslintFixAll',
      group = vim.api.nvim_create_augroup('ESLintFormatting', {}),
    })
  end,
  rulesCustomizations = {
    indent = 4,
    level = 'warn'
  }
})

lsp.configure('pyright', {
  on_attach = function(client, bufnr)
    enable_format_on_save(client, bufnr)
  end,
})

lsp.configure("svelte", {
  on_attach = function(client, bufnr)
    enable_format_on_save(client, bufnr)
  end,
})

lsp.configure("jsonls", {
  on_attach = function(client, bufnr)
    enable_format_on_save(client, bufnr)
  end,
})

lsp.configure("tsserver", {
  on_attach = function(client, bufnr)
    enable_format_on_save(client, bufnr)
  end,
})


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
  suggest_lsp_servers = true,
})


lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-j>", function() vim.lsp.buf.signature_help() end, opts)

end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true
})
