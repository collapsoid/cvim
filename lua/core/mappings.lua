local utils = require('utils')
local set_map_key = utils.set_map_key

local opts = { noremap = true, silent = true }

-- Move between windows
set_map_key('n', '<A-h>', '<c-w>h', opts)
set_map_key('n', '<A-j>', '<c-w>j', opts)
set_map_key('n', '<A-k>', '<c-w>k', opts)
set_map_key('n', '<A-l>', '<c-w>l', opts)

-- Resize windows
set_map_key('n', '<C-Up>', ':resize +2<CR>', opts)
set_map_key('n', '<C-Down>', ':resize -2<CR>', opts)
set_map_key('n', '<C-Left>', ':vertical resize +2<CR>', opts)
set_map_key('n', '<C-Right>', ':vertical resize -2<CR>', opts)

-- Move blocks of code
--set_map_key('n', '<C-j>', ':m .+1<CR>==', opts)
--set_map_key('n', '<C-k>', ':m .-2<CR>==', opts)
--set_map_key('x', '<C-j>', ":m '>+1<CR>gv-gv", opts)
--set_map_key('x', '<C-k>', ":m '<-2<CR>gv-gv", opts)

--set_map_key('v', '<','<gv', opts)
--set_map_key('v', '>','>gv', opts)
