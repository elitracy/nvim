local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        -- if `false`, skips checking `package.json` for `"prettier"` key
        check_package_json = true,
      })
    end,
    runtime_condition = function()
      -- return false to skip running prettier
      return true
    end,
    timeout = 5000,
  },
  cli_options = {
    arrow_parens = "always",
    bracket_spacing = true,
    bracket_same_line = true,
    embedded_language_formatting = "auto",
    end_of_line = "lf",
    html_whitespace_sensitivity = "css",
    jsx_bracket_same_line = true,
    jsx_single_quote = true,
    print_width = 80,
    prose_wrap = "preserve",
    quote_props = "as-needed",
    semi = true,
    single_attribute_per_line = false,
    single_quote = true,
    tab_width = 4,
    trailing_comma = "none",
    use_tabs = false,
    config_precedence = "file-override", -- or "cli-override" or "file-override"
  },
})
