---@type LazySpec
return {
    "AstroNvim/astrotheme",
    opts = {
        highlights = {
            astrodark = {
                modify_hl_groups = function(hl, _)
                    hl.Conditional.italic = true
                    hl.Conditional.bold = true
                    hl.Repeat.italic = true
                    hl.Repeat.bold = true
                    hl.Statement.italic = true
                    hl.Statement.bold = true
                    hl.Type.bold = true
                    hl.Keyword.italic = true
                    hl.Keyword.bold = true
                    hl.Identifier.italic = true
                end,
            },
        },
    },
}
