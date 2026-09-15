return {
    'L3MON4D3/LuaSnip',
    version = 'v2.*',
    build = (function()
        if vim.fn.has('win32') == 1 or vim.fn.executable('make') == 0 then
            return
        end
        return 'make install_jsregexp'
    end)(),
    config = function()
        local ls = require('luasnip')
        ls.setup({})

        require('luasnip.loaders.from_vscode').lazy_load() -- friendly-snippets
        require('luasnip.loaders.from_lua').load({
            paths = vim.fn.stdpath('config') .. '/lua/elias/snippets',
        })

        vim.keymap.set({ 'i', 's' }, '<C-l>', function()
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            end
        end, { desc = 'LuaSnip expand/jump forward' })

        vim.keymap.set({ 'i', 's' }, '<C-h>', function()
            if ls.jumpable(-1) then
                ls.jump(-1)
            end
        end, { desc = 'LuaSnip jump backward' })

        vim.keymap.set('i', '<C-j>', function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, { desc = 'LuaSnip next choice' })
    end,
}
