local ok, treesitter = pcall(require, 'nvim-treesitter.configs')

if not ok then
    return
end


treesitter.setup {
    ensure_installed = 'maintained',
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    },
    autopairs = {
        enable = true
    },
    autotag = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000
    },
    context_commentstring = {
        enable = true,
        config = { css = "// %s" },
    },
    indent = { enable = true, disable = { "yaml" } },
    textobjects = {
        swap = {
            enable = false
        },
        select = {
            enable = false
        }
    },
    textsubjects = {
        enable = false,
        keymaps = { ["."] = "textsubjects-smart", [";"] = "textsubjects-big" }
    }
}
