return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets', 'L3MON4D3/LuaSnip', 'echasnovski/mini.pairs' },

    -- use a release tag to download pre-built binaries
    version = '1.*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {
            preset = 'default',
            ['<C-n>'] = { 'show', 'select_next', 'fallback' },
            ['<C-p>'] = { 'select_prev', 'fallback' },
            ['<C-y>'] = { 'select_and_accept' },
            ['<CR>'] = { 'accept', 'fallback' },
        },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono',
        },
        -- (Default) Only show the documentation popup when manually triggered
        completion = {
            list = {
                max_items = 5,
                selection = {
                    preselect = false,
                    auto_insert = false,
                },
            },
            documentation = {
                auto_show = true,
                border = "rounded",
            },
            keyword_length = 0,
            menu = {
                auto_show = true,
                border = "rounded",
                draw = {
                    columns = {
                        { "label",     "label_description", gap = 1 },
                        { "kind_icon", "kind",              gap = 1 },
                    },
                    components = {
                        label = {
                            text = function(ctx)
                                return require("colorful-menu").blink_components_text(ctx)
                            end,
                            highlight = function(ctx)
                                return require("colorful-menu").blink_components_highlight(ctx)
                            end,
                        },
                    },
                },
            },
            trigger = {
                show_on_insert_on_trigger_character = true,
            },
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
        -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
        -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
        -- See the fuzzy documentation for more information
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
