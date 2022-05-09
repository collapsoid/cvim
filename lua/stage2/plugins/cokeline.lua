local ok, cokeline = pcall(require, 'cokeline')

if not ok then
    return
end


local utils = require('utils')

cokeline.setup({
    buffers = {
        focus_on_delete = 'prev',
        new_buffers_position = 'next'
    },
    default_hl = {
        fg = function(buffer)
            return buffer.is_focused and '#0f0f0f' or '#202020'
        end ,
        bg = function(buffer)
            return buffer.is_focused and '#ccc8ba' or '#9d998d'
        end
    },
    sidebar = {
        filetype = 'NvimTree',
        components = {
            {
                text = '  Files',
                bg = '#0f0f0f',
                fg = '#ccc8ba',
                style = 'bold'
            }
        }
    },
    rendering = {
        max_buffer_width = 80
    },
    components = {
        {
            text = function(buffer) return (buffer.index == 1) and '       ' or '  ' end,
            bg = '#202020'
        },
        {
            text = function(buffer) return ' ' .. buffer.index end,
            fg = '#893f3e'
        },
        {
            text = '|',
            fg = '#202020'
        },
        {
            text = function(buffer) return buffer.devicon.icon .. ' ' end,
            fg = '#0f0f0f'
        },
        {
            text = function(buffer) return buffer.filename end,
            style = function(buffer) return buffer.is_focused and 'bold' or nil end
        },
        {
            text = function(buffer) return (buffer.is_modified) and '*' or '' end,
            fg = '#ba604c',
            style = 'bold'
        },
        {
            delete_buffer_on_left_click = true,
            text = '  ',
            fg = '#0f0f0f',
            style = 'bold'
        },
    },
})


local set_map_key = utils.set_map_key
local opts = { silent = true }

set_map_key('n', '<A-,>', '<Plug>(cokeline-focus-prev)', opts)
set_map_key('n', '<A-.>', '<Plug>(cokeline-focus-next)', opts)
set_map_key('n', '<A-Left>', '<Plug>(cokeline-switch-prev)', opts)
set_map_key('n', '<A-Right>', '<Plug>(cokeline-switch-next)', opts)
set_map_key('n', '<A-c>', ':Bdelete<CR>', opts)

for i = 1,9 do
  set_map_key('n', ('<A-%s>'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), opts)
end
