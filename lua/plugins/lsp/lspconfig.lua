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

func.sign_define("DiagnosticSignError", { text = ">>", texthl="DiagnosticSignError", numhl = "DiagnosticSignError" })
func.sign_define("DiagnosticSignInfo", { text = "", numhl = "DiagnosticSignInfo" })
func.sign_define("DiagnosticSignHint", { text = "", numhl = "DiagnosticSignHint" })
func.sign_define("DiagnosticSignWarn", { text = ">>", texthl="DiagnosticSignWarn", numhl = "DiagnosticSignWarn" })

mappings.setup()
handlers.setup()
