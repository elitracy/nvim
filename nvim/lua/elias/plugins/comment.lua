return {
    'JoosepAlviste/nvim-ts-context-commentstring',
    dependencies = {
        "echasnovski/mini.comment"
    },
    config = function()
        require('ts_context_commentstring').setup {
            languages = {
                javascript = {
                    __default = '// %s',
                    jsx_element = '{/* %s */}',
                    jsx_fragment = '{/* %s */}',
                    jsx_attribute = '// %s',
                    comment = '// %s',
                },
                typescript = {
                    __default = '// %s',
                    jsx_element = '{/* %s */}',
                    jsx_fragment = '{/* %s */}',
                    jsx_attribute = '// %s',
                    comment = '// %s',
                },
            },
        }
    end
}
