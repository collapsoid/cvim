local utils = require('utils')
local cmd = utils.cmd

local M = {}

function M.set_options()
    local options = {
        background = 'dark',
        completeopt = 'menu,menuone,noselect',
        cursorline = true,
        expandtab = true,
        ignorecase = false,
        mouse = 'a',
        number = true,
        scrolloff = 8,
        shiftwidth = 4,
        showmode = false,
        signcolumn = 'yes',
        smartindent = true,
        smarttab = true,
        softtabstop = 4,
        syntax = 'on',
        termguicolors = true,
        timeoutlen = 300,
        updatetime = 100,
        wildignore = '*node_modules/**',
    }

    for k, v in pairs(options) do
        vim.opt[k] = v
    end

    cmd [[
        filetype plugin on
        set nocompatible
        set t_Co=256
    ]]
end


return M
