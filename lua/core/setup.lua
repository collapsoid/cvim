local utils = require('utils')
local set = utils.set
local cmd = vim.cmd

-- Basic
cmd [[
    filetype plugin on
    set nocompatible
    set t_Co=256
    set completeopt=menuone,noselect
]]
set.number = true
set.signcolumn = 'yes'
set.cursorline = true
set.mouse = 'a'
set.syntax = 'on'
set.termguicolors = true

-- Tabs
set.smarttab = true
set.expandtab = true
set.shiftwidth = 4
set.softtabstop = 4

-- Appearance
set.background = 'dark'

-- Highlight yank
cmd [[
    highlight YankColor ctermfg=59 ctermbg=41 guifg=#989ca9 guibg=#4c5b72

    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank{higroup="YankColor", hicolor="red", timeout=300}
    augroup END
]]
