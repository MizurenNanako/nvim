---@type LazySpec

return {
  "SirVer/ultisnips",
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.UltiSnipsExpandTrigger = ";"
    vim.g.UltiSnipsJumpBackwardTrigger = "<A-.>"
    vim.g.UltiSnipsJumpForwardTrigger = "<A-;>"
  end,
}
