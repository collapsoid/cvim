local ok, lspconfig = pcall(require, "lspconfig")

if not ok then
    return
end

local utils = require('utils')

local lspinstall = require('plugins/lsp/lspinstall')
local mappings = require('plugins/lsp/mappings')
local capabilities = require('plugins/lsp/capabilities').capabilities
local handlers = require('plugins/lsp/handlers')


lspinstall.setup()
local servers = lspinstall.installed_servers()

for _, server in pairs(servers) do
    lspconfig[server].setup {
        capabilities = capabilities
    }
end


local func = utils.func

func.sign_define("LspDiagnosticsSign" .. "Error", { text = "", numhl = "LspDiagnosticsDefaul" .. "Error" })
func.sign_define("LspDiagnosticsSign" .. "Information", { text = "", numhl = "LspDiagnosticsDefaul" .. "Information" })
func.sign_define("LspDiagnosticsSign" .. "Hint", { text = "", numhl = "LspDiagnosticsDefaul" .. "Hint" })
func.sign_define("LspDiagnosticsSign" .. "Warning", { text = "", numhl = "LspDiagnosticsDefaul" .. "Warning" })

mappings.setup()
handlers.setup()
