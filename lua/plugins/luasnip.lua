local ok, luasnip = pcall(require, "luasnip")

if not ok then
    return
end


local M = {}

function M.setup()
    luasnip.config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI",
    }

    require("luasnip/loaders/from_vscode").load()
end


return M
