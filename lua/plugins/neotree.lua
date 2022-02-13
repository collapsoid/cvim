local ok, neotree = pcall(require, "neo-tree")

if not ok then
    return
end

local utils = require('utils')
local set_map_key = utils.set_map_key

neotree.setup({
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    default_component_configs = {
        indent = {
            indent_size = 2,
            padding = 1,
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            default = "*",
        },
        name = {
            trailing_slash = false,
            use_git_status_colors = true,
        },
        git_status = {
            highlight = "NeoTreeDimText",
        },
    },
    filesystem = {
        filters = {
            show_hidden = false,
            respect_gitignore = true,
        },
        follow_current_file = true,
        use_libuv_file_watcher = true,
        window = {
            position = "left",
            width = 70,
            mappings = {
                ["<2-LeftMouse>"] = "open",
                ["o"] = "open",
                ["S"] = "open_split",
                ["s"] = "open_vsplit",
                ["C"] = "close_node",
                ["<bs>"] = "navigate_up",
                ["."] = "set_root",
                ["H"] = "toggle_hidden",
                ["I"] = "toggle_gitignore",
                ["R"] = "refresh",
                ["/"] = "fuzzy_finder",
                ["f"] = "filter_on_submit",
                ["<c-x>"] = "clear_filter",
                ["a"] = "add",
                ["d"] = "delete",
                ["r"] = "rename",
                ["c"] = "copy_to_clipboard",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["q"] = "close_window",
            }
        }
    },
    buffers = {
        show_unloaded = true,
        window = {
            position = "left",
            mappings = {
                ["<2-LeftMouse>"] = "open",
                ["<cr>"] = "open",
                ["S"] = "open_split",
                ["s"] = "open_vsplit",
                ["<bs>"] = "navigate_up",
                ["."] = "set_root",
                ["R"] = "refresh",
                ["a"] = "add",
                ["d"] = "delete",
                ["r"] = "rename",
                ["c"] = "copy_to_clipboard",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["bd"] = "buffer_delete",
            }
        },
    },
    git_status = {
        window = {
            position = "float",
            mappings = {
                ["<2-LeftMouse>"] = "open",
                ["<cr>"] = "open",
                ["S"] = "open_split",
                ["s"] = "open_vsplit",
                ["C"] = "close_node",
                ["R"] = "refresh",
                ["d"] = "delete",
                ["r"] = "rename",
                ["c"] = "copy_to_clipboard",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["A"]  = "git_add_all",
                ["gu"] = "git_unstage_file",
                ["ga"] = "git_add_file",
                ["gr"] = "git_revert_file",
                ["gc"] = "git_commit",
                ["gp"] = "git_push",
                ["gg"] = "git_commit_and_push",
            }
        }
    }
})


local opts = { noremap = true, silent = true }

set_map_key('n', '<C-n>', ':NeoTreeRevealToggle<CR>', opts)
