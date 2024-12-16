---@type LazySpec

return {
  "SirVer/ultisnips",
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.UltiSnipsExpandTrigger = ";"
    vim.g.UltiSnipsJumpForwardTrigger = "<A-]>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<A-[>"
  end,
}
