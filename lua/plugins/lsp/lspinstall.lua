local ok, lspinstall = pcall(require, "lspinstall")
local ok2, lspconfig = pcall(require, "lspconfig")

if not ok or not ok2 then
    return
end

local utils = require('utils')
local cmd = utils.cmd

local M = {}


function M.setup()
    local function setup_servers()
        lspinstall.setup()
        local servers = lspinstall.installed_servers()
        for _, server in pairs(servers) do
                lspconfig[server].setup{}
        end
    end

    setup_servers()

    lspinstall.post_install_hook = function()
        setup_servers()
        cmd("bufdo e")
    end
end

M.installed_servers = lspinstall.installed_servers

return M
