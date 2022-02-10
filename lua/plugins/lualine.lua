local ok, lualine = pcall(require, "lualine")

if not ok then
    return
end


lualine.setup {
    options = {
        theme = 'nightfly',
        disabled_filetypes = {'NvimTree', 'neo-tree'}
    }
}
