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
    disable_netrw = true,
    hijack_netrw = false,
    open_on_setup = true,
    ignore_ft_on_setup  = { ".git", "node_modules", ".cache" },
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
        signcolumn = "yes"
    },
    actions = {
        open_file = {
            resize_window = false
        }
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
