local lspconfig = require "lspconfig"
local configs = require "lspconfig.configs"
local util = require "lspconfig.util"
local plugin_config = require "testing-ls.config"

local M = {}

-- Plugin initialization
function M.setup(opts)
    opts = opts or {}
    -- Add your configuration options here

    configs[plugin_config.plugin_name] = {
        default_config = {
            cmd = { "testing-language-server" },
            filetypes = {},
            root_dir = function(fname)
                return util.root_pattern('.testingls.toml', '.git')(fname)
            end,
            single_file_support = true,
        },
        docs = {
            description = [[
      https://github.com/kbwo/testing-language-server

      Language Server for real-time testing.
    ]],
        },
    }

    lspconfig[plugin_config.plugin_name].setup({
        on_attach = function(client, bufnr)
        end
    })
end

return M
