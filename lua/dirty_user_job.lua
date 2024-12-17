-- Function to get the current cursor position and buffer content
local ts_utils = require "nvim-treesitter.ts_utils"

function Check_in_math()
    -- Get the node at the cursor's position
    local node_at_cursor = ts_utils.get_node_at_cursor()

    -- Traverse the tree upwards to check if the cursor is inside a LaTeX block
    local current_node = node_at_cursor
    while current_node do
        if current_node:type() == "latex_block" then return true end
        current_node = current_node:parent()
    end
    return false
end

-- Add a command to call the function
vim.api.nvim_create_user_command("CheckInMath", function()
    if Check_in_math() then
        print "in math"
    else
        print "not in math"
    end
end, {})
--
-- Register various ocaml related syntax extensions
vim.filetype.add {
    extension = {
        mli = "ocaml.interface",
        mly = "ocaml.menhir",
        mll = "ocaml.ocamllex",
        mlx = "ocaml",
        t = "ocaml.cram",
    },
}
