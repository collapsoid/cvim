local utils = require('utils')
local cmd = utils.cmd

require('core')
require('plugins')


cmd [[ colorscheme samurai ]]

-- Highlight yank
cmd [[
    highlight YankColor ctermfg=59 ctermbg=41 guifg=#ccc8ba guibg=#ba604c

    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank{higroup="YankColor", hicolor="red", timeout=300}
    augroup END
]]
