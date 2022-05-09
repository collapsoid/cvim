local ok, toggleterm = pcall(require, 'toggleterm')

if not ok then
    return
end


local utils = require('utils')
local set_map_key = utils.set_map_key

toggleterm.setup {
    size = 20,
    open_mapping = [[<leader>t]],
    hide_numbers = true,
    direction = 'horizontal',
    close_on_exit = true
}


local opts = { noremap = true, silent = true }

-- set_map_key('t', '<esc>', [[<C-\><C-n>]], opts)
set_map_key('t', '<A-h>', [[<C-\><C-n><C-W>h]], opts)
set_map_key('t', '<A-l>', [[<C-\><C-n><C-W>l]], opts)
set_map_key('t', '<A-j>', [[<C-\><C-n><C-W>j]], opts)
set_map_key('t', '<A-k>', [[<C-\><C-n><C-W>k]], opts)
