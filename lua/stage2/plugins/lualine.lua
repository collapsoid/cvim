local ok, lualine = pcall(require, 'lualine')

if not ok then
    return
end

local cold = '#a1b4ca'
local fractal = '#afc0b6'
local moonlight = '#bfc5d6'
local night = '#0f0f0f'
local orb = '#ccc8ba'
local rein = '#ba604c'
local shadow = '#202020'

local samurai = {
    normal = {
        a = {fg = shadow, bg = orb},
        b = {fg = moonlight, bg = shadow},
        c = {fg = moonlight, bg = shadow}
    },
    insert = {a = {fg = shadow, bg = fractal}},
    visual = {a = {fg = shadow, bg = cold}},
    replace = {a = {fg = shadow, bg = rein}},
    inactive = {
        a = {fg = moonlight, bg = night},
        b = {fg = moonlight, bg = night},
        c = {fg = moonlight, bg = night}
    }
}

lualine.setup {
    options = {
        theme = samurai,
        disabled_filetypes = {'NvimTree', 'neo-tree'}
    }
}
