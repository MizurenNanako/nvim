return { -- override nvim-autopairs plugin
  "windwp/nvim-autopairs",
  config = function(plugin, opts)
    -- run default AstroNvim config
    require("astronvim.plugins.configs.nvim-autopairs")(plugin, opts)
    -- require Rule function
    local Rule = require("nvim-autopairs.rule")
    local npairs = require("nvim-autopairs")
    require('nvim-autopairs').setup({
        disable_filetype = { "TelescopePrompt" , "markdown" },
    })
  end,
}
