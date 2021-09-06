local ok, cmp = pcall(require, "cmp")

if not ok then
    return
end

--local types = require('cmp.types')
local utils = require('utils')
local set = utils.set
local func = utils.func

local compare = require('cmp.config.compare')

local WIDE_HEIGHT = 40
cmp.setup {
    completion = {
        autocomplete = {
--            types.cmp.TriggerEvent.TextChanged
        },
        completeopt = 'menu,menuone,noinsert'
    },
    preselect = "enable",
    documentation = {
        border = { '', '', '', ' ', '', '', '', ' ' },
        winhighlight = 'NormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder',
        maxwidth = math.floor((WIDE_HEIGHT * 2) * (set.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
        maxheight = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / set.lines)),
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end
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
                buffer = "[BUF]"
            })[entry.source.name]

            return vim_item
        end
    },

    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<Tab>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        -- ["<Tab>"] = function(fallback)
        --     if func.pumvisible() == 1 then
        --         func.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
        --     -- elseif require("luasnip").expand_or_jumpable() then
        --     --     func.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true      ), "")
        --     else
        --         fallback()
        --     end
        -- end,
        -- ["<S-Tab>"] = function(fallback)
        --     if func.pumvisible() == 1 then
        --         func.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
        --     -- elseif require("luasnip").jumpable(-1) then
        --     --     func.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), ""      )
        --     else
        --         fallback()
        --     end
        -- end,
    },
    sorting = {
        priority_weight = 2,
        comparators = {
            compare.offset,
            compare.exact,
            compare.score,
            compare.kind,
            compare.sort_text,
            compare.length,
            compare.order,
        }
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" }
    }
}
