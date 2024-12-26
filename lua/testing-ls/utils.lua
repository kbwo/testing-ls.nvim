local uv = vim.loop
local plugin_config = require "testing-ls.config"

local M = {}

---@param bufnr integer
---@return lsp.Client|nil
function M.get_testing_ls_client(bufnr)
  local clients = M.get_clients {
    name = plugin_config.plugin_name,
    bufnr = bufnr,
  }

  if #clients == 0 then
    return
  end

  return clients[1]
end

return M
