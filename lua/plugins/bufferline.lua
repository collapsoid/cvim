local utils = require('utils')
local g = utils.g

g.bufferline = {
    animation = true,
    closable = true,
    clickable = true,
    maximum_length = 80
}

local set_map_key = utils.set_map_key

local opts = { noremap = true, silent = true }

set_map_key('n', '<A-,>', ':BufferPrevious<CR>', opts)
set_map_key('n', '<A-.>', ':BufferNext<CR>', opts)
set_map_key('n', '<A-Left>', ':BufferMovePrevious<CR>', opts)
set_map_key('n', '<A-Right>', ':BufferMoveNext<CR>', opts)

set_map_key('n', '<A-1>', ':BufferGoto 1<CR>', opts)
set_map_key('n', '<A-2>', ':BufferGoto 2<CR>', opts)
set_map_key('n', '<A-3>', ':BufferGoto 3<CR>', opts)
set_map_key('n', '<A-4>', ':BufferGoto 4<CR>', opts)
set_map_key('n', '<A-5>', ':BufferGoto 5<CR>', opts)
set_map_key('n', '<A-6>', ':BufferGoto 6<CR>', opts)
set_map_key('n', '<A-7>', ':BufferGoto 7<CR>', opts)
set_map_key('n', '<A-8>', ':BufferGoto 8<CR>', opts)
set_map_key('n', '<A-9>', ':BufferGoto 9<CR>', opts)

set_map_key('n', '<A-c>', ':BufferClose<CR>', opts)
