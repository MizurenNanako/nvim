---@type LazySpec

return {
    "SirVer/ultisnips",
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.UltiSnipsExpandTrigger = "<tab>"
        vim.g.UltiSnipsJumpForwardTrigger = "<s-cr>"
        vim.g.UltiSnipsJumpBackwardTrigger = "<c-cr>"
    end,
}
