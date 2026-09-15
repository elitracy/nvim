return {
    "tanmaymanojgandhi/circadia",
    lazy = false,
    priority = 1000,
    init = function(plugin)
        local port_path = vim.fs.joinpath(plugin.dir, "ports", "neovim")
        local lua_path = vim.fs.joinpath(port_path, "lua", "?.lua")
        local lua_init = vim.fs.joinpath(port_path, "lua", "?", "init.lua")

        package.path = package.path .. ";" .. lua_path .. ";" .. lua_init

        local colors_dir = vim.fs.joinpath(vim.fn.stdpath("data"), "circadia_colors", "colors")
        vim.fn.mkdir(colors_dir, "p")

        local variants = {
            ["circadia-dark"] = [[
        vim.o.background = "dark"
        require("circadia").setup()
      ]],
            ["circadia-light"] = [[
        vim.o.background = "light"
        require("circadia").setup()
      ]],
        }

        local ok, palette = pcall(require, "circadia.palette")
        if ok and palette.modes then
            for key, variant in pairs(palette.modes) do
                local name = "circadia-" .. key:gsub("_", "-")
                local bg = variant.type == "light" and "light" or "dark"
                variants[name] = string.format(
                    [[
        vim.o.background = "%s"
        require("circadia").setup({ mode = "%s" })
      ]],
                    bg,
                    key
                )
            end
        end

        for name, code in pairs(variants) do
            local file = vim.fs.joinpath(colors_dir, name .. ".lua")
            local f = io.open(file, "w")
            if f then
                f:write(code)
                f:close()
            end
        end

        vim.opt.rtp:prepend(vim.fs.joinpath(vim.fn.stdpath("data"), "circadia_colors"))
    end,
}
