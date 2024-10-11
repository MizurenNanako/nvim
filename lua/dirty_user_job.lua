-- Function to get the current cursor position and buffer content
local function check_in_math()
  local trs = vim.inspect_pos()
  local res = false
  for _, item in ipairs(trs) do
    if item.capture == "markup.math" then res = true end
  end
  vim.print(trs)
end

-- Add a command to call the function
vim.api.nvim_create_user_command("CheckInMath", check_in_math, {})
