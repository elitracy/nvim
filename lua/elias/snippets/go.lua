local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

return {
    s(
        'gotest',
        fmt(
            [[
func Test{}(t *testing.T) {{
	tests := []struct {{
	}}{{
	}}

	for _, tt := range tests {{
	}}
}}
]],
            {
                i(1, 'Name'),
            }
        )
    ),
}
