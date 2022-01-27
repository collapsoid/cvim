local ok = pcall(require, "lspconfig")

if not ok then
    return
end

local utils = require('utils')

local lspinstall = require('plugins.lsp.lspinstall')
local mappings = require('plugins.lsp.mappings')

local func = utils.func

func.sign_define("DiagnosticSignError", { text = ">>", texthl = "DiagnosticSignError", numhl = "DiagnosticSignError" })
func.sign_define("DiagnosticSignInfo", { text = "", numhl = "DiagnosticSignInfo" })
func.sign_define("DiagnosticSignHint", { text = "", numhl = "DiagnosticSignHint" })
func.sign_define("DiagnosticSignWarn", { text = ">>", texthl = "DiagnosticSignWarn", numhl = "DiagnosticSignWarn" })

lspinstall.setup()
mappings.setup()
