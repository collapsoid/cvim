local ok, telescope = pcall(require, 'telescope')

if not ok then
    return
end


local utils = require('utils')
local set_map_key = utils.set_map_key

telescope.setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                preview_width = 0.4,
                results_width = 0.8,
                mirror = false
            },
            vertical = {
                mirror = false
            },
            width = 0.9,
            height = 0.8,
            preview_cutoff = 120
        },
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        path_display = {},
        set_env = { ['COLORTERM'] = 'truecolor' },
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    }
}


local opts = { noremap = true, silent = true }

set_map_key('n', '<leader>ff', ':Telescope find_files<CR>', opts)
set_map_key('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
set_map_key('n', '<leader>fb', ':Telescope buffers<CR>', opts)
