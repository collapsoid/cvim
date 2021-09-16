local utils = require('utils')
local set = utils.set
local cmd = utils.cmd

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
