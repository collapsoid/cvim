local ok, bufferline = pcall(require, 'bufferline')

if not ok then
    return
end

local utils = require('utils')
local func = utils.func

bufferline.setup {
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
    diagnostics = false,
    diagnostics_update_in_insert = false,
    offsets = {
        {
            filetype = "neo-tree",
            text = function()
                return func.getcwd()
            end,
            highlight = "Directory",
            text_align = "left",
            padding = 1
        }
    },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    always_show_bufferline = true
  }
}

local set_map_key = utils.set_map_key

local opts = { noremap = true, silent = true }

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
