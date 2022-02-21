local utils = require('utils')
local set_map_key = utils.set_map_key
local g = utils.g

g.nvim_tree_git_hl = 1

g.nvim_tree_show_icons = {
   folders = 1,
   folder_arrows= 1,
   files = 1,
   git = 1
}

g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      deleted = "",
      ignored = "◌",
      renamed = "➜",
      staged = "S",
      unmerged = "",
      unstaged = "",
      untracked = "U",
   },
   folder = {
      arrow_open = "",
      arrow_closed = "",
      default = "",
      empty = "",
      empty_open = "",
      open = "",
      symlink = ""
   }
}

local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
    return
end

nvim_tree.setup {
    auto_reload_on_write = true,
    follow = true,
    disable_netrw = true,
    hijack_netrw = false,
    open_on_setup = true,
    ignore_ft_on_setup  = { ".git", "node_modules", ".cache" },
    auto_close = false,
    open_on_tab = true,
    hijack_cursor = true,
    update_cwd = false,
    update_focused_file = {
        enable = true,
        update_cwd  = false,
        ignore_list = {}
    },
    update_to_buf_dir = {
        enable = true,
        auto_open = true
    },
    system_open = {
        cmd  = nil,
        args = {}
    },
    view = {
        width = 70,
        side = 'left',
        auto_resize = false,
        mappings = {
            custom_only = false,
            list = {}
        },
        signcolumn = "yes"
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    git = {
        enable = true,
        ignore = true
    }
}

local opts = { noremap = true, silent = true }

set_map_key('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
