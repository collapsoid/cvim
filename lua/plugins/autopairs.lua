local ok, autopairs = pcall(require, "nvim-autopairs")

if not ok then
   return
end

local utils = require('utils')
local set_map_key = utils.set_map_key

autopairs.setup {
    check_ts = true,
    ts_config = {
        lua = { 'string' },
        javascript = { 'template_string' }
    },
    fast_wrap = {
        map = '<M-e>',
        chars = { '{', '[', '(', '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
        end_key = '$',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        check_comma = true,
        hightlight = 'Search'
    }
}


local cmp_completion = require('nvim-autopairs.completion.cmp')

cmp_completion.setup {
   map_complete = false, -- disable autopairs on import
   map_cr = false,
   auto_select = false
}


local opts = { expr = true, noremap = true }

set_map_key('i', '<CR>', 'v:lua.MPairs.autopairs_cr()', opts)
