local ok, cokeline = pcall(require, 'cokeline')

if not ok then
    return
end


local utils = require('utils')
local get_hex = require('cokeline/utils').get_hex

cokeline.setup({
    buffers = {
        focus_on_delete = 'prev',
        new_buffers_position = 'next'
    },
    default_hl = {
        focused = {
            fg = get_hex('Normal', 'fg'),
            bg = get_hex('StatusLine', 'bg'),
        },
        unfocused = {
            fg = get_hex('Comment', 'fg'),
            bg = get_hex('StatusLine', 'bg'),
        }
    },
    rendering = {
        max_buffer_width = 80,
        left_sidebar = {
            filetype = 'neo-tree',
            components = {
                {
                    text = '  NeoTree',
                    hl = {
                        fg = '#a2d2fb',
                        bg = get_hex('NeoTreeNormal', 'bg'),
                        style = 'bold'
                    }
                }
            }
        }
    },
    components = {
        {
            text = function(buffer) return (buffer.index == 1) and '       ' or '  ' end,
            hl = {
                bg = get_hex('StatusLineNC', 'bg')
            }
        },
        {
            text = '',
            hl = {
                fg = get_hex('StatusLine', 'bg'),
                bg = get_hex('StatusLineNC', 'bg')
            },
        },
        {
            text = function(buffer) return ((buffer.index == 1) and '' or '') .. buffer.index end,
            hl = {
                fg = '#a2d2fb',
            },
        },
        {
            text = '|',
            hl = {
                fg = '#89929b',
            },
        },
        {
            text = function(buffer) return buffer.devicon.icon .. ' ' end,
            hl = {
                fg = function(buffer) return buffer.devicon.color end,
            },
        },
        {
            text = function(buffer) return buffer.filename end,
            hl = {
                style = function(buffer) return buffer.is_focused and 'bold' or nil end,
            }
        },
        {
            -- text = function(buffer) return (buffer.is_modified) and '●' or '' end,
            text = function(buffer) return (buffer.is_modified) and '*' or '' end,
            hl = {
                fg = '#ffea41'
            }
        },
        {
            text = ' ',
            delete_buffer_on_left_click = true,
        },
        {
            text = '',
            hl = {
                fg = get_hex('StatusLine', 'bg'),
                bg = get_hex('StatusLineNC', 'bg')
            },
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
