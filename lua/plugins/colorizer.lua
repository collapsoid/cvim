local ok, colorizer = pcall(require, 'colorizer')

if not ok then
    return
end


colorizer.setup()
-- colorizer.setup {
--     'css',
--     'scss',
--     'typescript',
--     'typescriptreact',
--     'javascript',
--     'javascriptreact'
-- }
