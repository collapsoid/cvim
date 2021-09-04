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
   map_complete = true, -- insert () func completion
   map_cr = true,
}


--local ok, autopairs = pcall(require, "nvim-autopairs")
--
--if not ok then
--    return
--end
--
--
--autopairs.setup {
--    map_cr = true,
--    map_complete = true,
--    auto_select = true,
--    check_ts = true,
--    ts_config = {
--        lua = { 'string' },
--        javascript = { 'template_string' },
--        java = false
--    }
--}
