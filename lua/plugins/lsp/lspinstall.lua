local ok, lspinstall = pcall(require, "nvim-lsp-installer")

if not ok then
    return
end

local lsp_servers = require("nvim-lsp-installer.servers")

local handlers = require('plugins.lsp.handlers').handlers
local capabilities = require('plugins.lsp.capabilities').capabilities

local M = {}

local servers = {
    'bashls',
    'clangd',
    'cmake',
    'cssls',
    'dockerls',
    'html',
    'jsonls',
    'lemminx',
    'ltex',
    'yamlls',
    'remark_ls',
    'sumneko_lua',
    'tailwindcss',
    'taplo',
    'texlab',
    'tsserver',
    'vimls',
    'zk'
}


local on_attach = function(_, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
end

function M.setup()
    local opts = {
        on_attach = on_attach,
        handlers = handlers,
        capabilities = capabilities
    }

    for _, server_name in pairs(servers) do
        local available, server = lsp_servers.get_server(server_name)

        if available then
            server:on_ready(function()
                server:setup(opts)
            end)
            if not server:is_installed() then
                server:install()
            end
        end
    end
end

M.installed_servers = lspinstall.servers


return M
