local ok, autopairs = pcall(require, "nvim-autopairs")
local ok2, autopairs_completion = pcall(require, "nvim-autopairs.completion.cmp")

if not (ok or ok2) then
   return
end

autopairs.setup {
    check_ts = true,
    ts_config = {
        lua = { 'string' },
        javascript = { 'template_string' },
        java = false
    }
}
autopairs_completion.setup {
   map_complete = true,
   map_cr = true,
   auto_select = true
}
