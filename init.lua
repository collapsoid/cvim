local utils = require('utils')
local cmd = utils.cmd

require('core')
require('plugins')


cmd [[ colorscheme iceberg ]]

-- Highlight yank
cmd [[
    highlight YankColor ctermfg=59 ctermbg=41 guifg=#989ca9 guibg=#4c5b72

    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank{higroup="YankColor", hicolor="red", timeout=300}
    augroup END
]]
