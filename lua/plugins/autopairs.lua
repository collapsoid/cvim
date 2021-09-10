local ok, autopairs = pcall(require, "nvim-autopairs")

if not ok then
   return
end

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
   -- map_complete = true, --disable autopairs on import
   map_cr = true,
   auto_select = true
}
