-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

require "dirty_user_job"
require "user_formatter"

vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.expandtab=true

-- if vim.g.neovide then
--     -- Put anything you want to happen only in Neovide here
--     vim.g.neovide_cursor_animation_length = 0.2
-- end
