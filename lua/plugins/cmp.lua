local ok, cmp = pcall(require, "cmp")

if not ok then
    return
end


local compare = require('cmp.config.compare')

cmp.setup {
    confirmation = {
        default_behaviour = cmp.ConfirmBehavior.Insert
    },
    completion = {
        -- completeopt = 'menu,menuone,noinsert'
    },
    preselect = "enable",
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end
    },
    documentation = {
        border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' }
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = string.format(
                "%s %s",
                require("icons.lspkind").icons[vim_item.kind],
                vim_item.kind
            )

            vim_item.menu = ({
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                luasnip = "[Snippet]",
                buffer = "[BUF]"
            })[entry.source.name]

            return vim_item
        end
    },
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        }),
        ['<C-Space>'] = cmp.mapping.complete()
    },
    sorting = {
        priority_weight = 2,
        comparators = {
            function(entry1, entry2)
                local preselect1 = entry1.completion_item.preselect or false
                local preselect2 = entry2.completion_item.preselect or false
                if preselect1 ~= preselect2 then
                    return preselect1
                end
            end,
            compare.exact,
            compare.score,
            compare.offset,
            compare.kind,
            compare.sort_text,
            compare.length,
            compare.order,
        }
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "nvim_lua" },
        { name = "treesitter" },
        { name = "buffer" },
        { name = "path" },
        { name = "crates" }
    }
}
