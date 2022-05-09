--[[
-- Stage2 is a set of parameters that handles plugins loading and their configuration.
--]]


local plugins = require('stage2.plugins')

local M = {}

function M.init()
    -- Load and configure plugins
    plugins.load_plugins()
end


return M
