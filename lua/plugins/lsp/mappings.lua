local utils = require('utils')
local set_map_key = utils.set_map_key

local M = {}

local opts = { noremap = true, silent = true }

function M.setup()
    set_map_key('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
    set_map_key('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
    set_map_key('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
    set_map_key('n', 'gr', ':lua vim.lsp.buf.references()<CR>', opts)
    set_map_key('n', 'gI', ':lua vim.lsp.buf.implementation()<CR>', opts)
    set_map_key('n', 'gs', ':lua vim.lsp.buf.signature_help()<CR>', opts)
    set_map_key('n', 'gp', ':lua require("lsp.peek").Peek("definition")<CR>', opts)
    set_map_key('n', 'gl', ':lua vim.lsp.diagnostic.show_line_diagnostics({ show_header = false, border = "single" })<CR>', opts)
    set_map_key('n', '<space>rn', ':lua vim.lsp.buf.rename()<CR>', opts)
end


return M
