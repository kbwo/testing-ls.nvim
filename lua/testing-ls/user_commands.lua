local api = require "testing-ls.api"

local M = {}

---@param name string
---@param fn function
local function create_command(name, fn)
  vim.api.nvim_create_user_command(name, function(cmd)
    fn()
  end, {})
end

function M.setup_user_commands()
  create_command("TestingLSRunFileTests", function()
    api.run_file_test()
  end)
end

return M
