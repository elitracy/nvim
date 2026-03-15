return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "arkav/lualine-lsp-progress" },
    init = function()
        vim.g.lualine_laststatus = vim.o.laststatus
        if vim.fn.argc(-1) > 0 then
            -- set an empty statusline till lualine loads
            vim.o.statusline = " "
        else
            -- hide the statusline on the starter page
            vim.o.laststatus = 0
        end
    end,
    opts = function()
        vim.o.laststatus = vim.g.lualine_laststatus

        local c = {
            black = "#000000",
            blue = "#78b9ff",
            teal = "#3eb489",
            orange = "#ff8800",
            red_light = "#ff6b6b",
            cyan_bright = "#88eeff",
            blue_bright = "#a0d0ff",
            fg = "#d0e8ff",
            fg_dim = "#a0c5e0",
            comment = "#556677",
            bg_alt = "#0a0e14",
            bar_bg = "#1a2233",
            bar_c_bg = "#111822",
        }

        return {
            options = {
                theme = {
                    normal = {
                        a = { fg = c.black, bg = c.blue, gui = "bold" },
                        b = { fg = c.fg, bg = c.bar_bg },
                        c = { fg = c.fg_dim, bg = c.bar_c_bg },
                    },
                    insert = {
                        a = { fg = c.black, bg = c.teal, gui = "bold" },
                        b = { fg = c.fg, bg = c.bar_bg },
                        c = { fg = c.fg_dim, bg = c.bar_c_bg },
                    },
                    visual = {
                        a = { fg = c.black, bg = c.orange, gui = "bold" },
                        b = { fg = c.fg, bg = c.bar_bg },
                        c = { fg = c.fg_dim, bg = c.bar_c_bg },
                    },
                    replace = {
                        a = { fg = c.black, bg = c.red_light, gui = "bold" },
                        b = { fg = c.fg, bg = c.bar_bg },
                        c = { fg = c.fg_dim, bg = c.bar_c_bg },
                    },
                    command = {
                        a = { fg = c.black, bg = c.cyan_bright, gui = "bold" },
                        b = { fg = c.fg, bg = c.bar_bg },
                        c = { fg = c.fg_dim, bg = c.bar_c_bg },
                    },
                    terminal = {
                        a = { fg = c.black, bg = c.blue_bright, gui = "bold" },
                        b = { fg = c.fg, bg = c.bar_bg },
                        c = { fg = c.fg_dim, bg = c.bar_c_bg },
                    },
                    inactive = {
                        a = { fg = c.comment, bg = c.bg_alt },
                        b = { fg = c.comment, bg = c.bg_alt },
                        c = { fg = c.comment, bg = c.bg_alt },
                    },
                },
                disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "filename", "branch" },

                lualine_c = {
                    {
                        "diagnostics",
                        symbols = {
                            error = ' ',
                            warn = ' ',
                            hint = '󰈻 ',
                            info = ' '
                        },
                    },
                    { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
                },
                lualine_x = {
                    {
                        "lsp_progress",
                        display_components = { 'lsp_client_name', "spinner", { 'percentage' } },
                        timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 500 },

                    },
                    {
                        "diff",
                        symbols = {
                            added = " ",
                            modified = "󰏫 ",
                            removed = " "
                        },
                        source = function()
                            local gitsigns = vim.b.gitsigns_status_dict
                            if gitsigns then
                                return {
                                    added = gitsigns.added,
                                    modified = gitsigns.changed,
                                    removed = gitsigns.removed,
                                }
                            end
                        end,
                    },
                },
                lualine_y = {
                    { "progress" },
                    { "location" },
                },
                lualine_z = {},
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_y = { 'location' }
            },
            extensions = { "neo-tree", "lazy" },
        }
    end,
}
