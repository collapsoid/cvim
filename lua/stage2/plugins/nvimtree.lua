local utils = require('utils')
local set_map_key = utils.set_map_key
local g = utils.g

local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
    return
end

nvim_tree.setup {
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_netrw = false,
    open_on_setup = true,
    ignore_ft_on_setup  = { '.git', 'node_modules', '.cache' },
    open_on_tab = true,
    hijack_cursor = true,
    update_cwd = false,
    update_focused_file = {
        enable = true,
        update_cwd  = false,
        ignore_list = {}
    },
    system_open = {
        cmd  = nil,
        args = {}
    },
    view = {
        width = 70,
        side = 'left',
        mappings = {
            custom_only = false,
            list = {}
        },
        signcolumn = 'yes'
    },
    renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = true,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        indent_markers = {
            enable = false,
            icons = {
                corner = "└ ",
                edge = "│ ",
                none = "  ",
            },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    deleted = '',
                    ignored = '◌',
                    renamed = '➜',
                    staged = 'S',
                    unmerged = '',
                    unstaged = '',
                    untracked = 'U',
                },
            },
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
    },
    actions = {
        open_file = {
            resize_window = false
        }
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = '',
            info = '',
            warning = '',
            error = '',
        }
    },
    git = {
        enable = true,
        ignore = true
    },
}

local opts = { noremap = true, silent = true }

set_map_key('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
