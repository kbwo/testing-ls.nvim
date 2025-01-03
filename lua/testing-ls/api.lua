local utils = require "testing-ls.utils"
local c = require "testing-ls.protocol.constants"

local M = {}

function M.run_file_test()
  local testing_ls_client = utils.get_testing_ls_client(0)
  if testing_ls_client == nil then
    return
  end
  local params = { uri = vim.uri_from_bufnr(0) }

  testing_ls_client.request(c.CustomMethods.RunFileTest, params)
end

return M
