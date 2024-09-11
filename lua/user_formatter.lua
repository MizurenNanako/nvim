local null_ls = require "null-ls"
local helpers = require "null-ls.helpers"

local mdformat = {
  method = null_ls.methods.FORMATTING,
  filetypes = { "markdown" },
  generator = helpers.formatter_factory {
    command = "mdformat",
    args = {},
    to_stdin = true,
    format = "raw",
    check_exit_code = function(code, stderr)
      local success = code <= 1

      if not success then
        -- can be noisy for things that run often (e.g. diagnostics), but can
        -- be useful for things that run on demand (e.g. formatting)
        print(stderr)
      end

      return success
    end,
    on_output = helpers.formatter_factory,
  },
}

null_ls.register { name = "mdformat", filetypes = { "markdown" }, sources = { mdformat } }
