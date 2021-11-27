local ok, lspinstall = pcall(require, "nvim-lsp-installer")

if not ok then
    return
end

local capabilities = require('plugins/lsp/capabilities').capabilities

local M = {}


function M.setup()
    lspinstall.on_server_ready(function(server)
        server:setup(capabilities)
    end)
end

M.installed_servers = lspinstall.servers

return M
