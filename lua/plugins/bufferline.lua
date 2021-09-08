local utils = require('utils')
-- local g = utils.g
local func = utils.func

-- g.bufferline = {
--     animation = true,
--     closable = true,
--     clickable = true,
--     maximum_length = 80
-- }

local set_map_key = utils.set_map_key

local opts = { noremap = true, silent = true }

-- set_map_key('n', '<A-,>', ':BufferPrevious<CR>', opts)
-- set_map_key('n', '<A-.>', ':BufferNext<CR>', opts)
-- set_map_key('n', '<A-Left>', ':BufferMovePrevious<CR>', opts)
-- set_map_key('n', '<A-Right>', ':BufferMoveNext<CR>', opts)
--
-- set_map_key('n', '<A-1>', ':BufferGoto 1<CR>', opts)
-- set_map_key('n', '<A-2>', ':BufferGoto 2<CR>', opts)
-- set_map_key('n', '<A-3>', ':BufferGoto 3<CR>', opts)
-- set_map_key('n', '<A-4>', ':BufferGoto 4<CR>', opts)
-- set_map_key('n', '<A-5>', ':BufferGoto 5<CR>', opts)
-- set_map_key('n', '<A-6>', ':BufferGoto 6<CR>', opts)
-- set_map_key('n', '<A-7>', ':BufferGoto 7<CR>', opts)
-- set_map_key('n', '<A-8>', ':BufferGoto 8<CR>', opts)
-- set_map_key('n', '<A-9>', ':BufferGoto 9<CR>', opts)
--
-- set_map_key('n', '<A-c>', ':BufferClose<CR>', opts)


require('bufferline').setup {
  options = {
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 80,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = false, --"nvim_lsp",
    diagnostics_update_in_insert = false,
    offsets = {
        {
            filetype = "NvimTree",
            text = function()
                return func.getcwd()
            end,
            highlight = "Directory",
            text_align = "left",
            padding = 1
        }
    },
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    always_show_bufferline = true
  }
}

set_map_key('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts)
set_map_key('n', '<A-.>', ':BufferLineCycleNext<CR>', opts)
set_map_key('n', '<A-Left>', ':BufferLineMovePrev<CR>', opts)
set_map_key('n', '<A-Right>', ':BufferLineMoveNext<CR>', opts)

set_map_key('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', opts)
set_map_key('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', opts)
set_map_key('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', opts)
set_map_key('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', opts)
set_map_key('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', opts)
set_map_key('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', opts)
set_map_key('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', opts)
set_map_key('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', opts)
set_map_key('n', '<A-9>', ':BufferLineGoToBuffer 9<CR>', opts)

set_map_key('n', '<A-c>', ':Bdelete<CR>', opts)
