local ok, toggleterm = pcall(require, "toggleterm")

if not ok then
    return
end


toggleterm.setup {
    size = 20,
    open_mapping = [[<leader>t]],
    hide_numbers = true,
    direction = 'horizontal',
    close_on_exit = true
}
