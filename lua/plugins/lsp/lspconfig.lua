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

vim.lsp.diagnostic.set_signs()

func.sign_define("LspDiagnosticsSignError", { text = ">>", texthl="LspDiagnosticsDefaultError", numhl = "LspDiagnosticsDefaultError" })
func.sign_define("LspDiagnosticsSignInformation", { text = "", numhl = "LspDiagnosticsDefaultInformation" })
func.sign_define("LspDiagnosticsSignHint", { text = "", numhl = "LspDiagnosticsDefaultHint" })
func.sign_define("LspDiagnosticsSignWarning", { text = ">>", texthl="LspDiagnosticsDefaultWarning", numhl = "LspDiagnosticsDefaultWarning" })

mappings.setup()
handlers.setup()
