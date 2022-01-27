local M = {
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            -- virtual_text = true,
            virtual_text = {
                prefix = "",
                -- spacing = 0
            },
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true
        }),
        ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {
            border = "single"
        }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
            border = "single"
        })
    }
}

return M
