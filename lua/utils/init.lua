local M = {}

M.g = vim.g
M.w = vim.w
M.b = vim.b
M.t = vim.t
M.v = vim.v
M.env = vim.env

M.cmd = vim.cmd
M.func = vim.fn

M.set = vim.o
M.set_global = vim.go
M.set_win_local = vim.wo
M.set_buf_local = vim.bo

M.set_option = vim.api.nvim_set_option
M.get_option = vim.api.nvim_get_option

M.set_win_option = vim.api.nvim_win_set_option
M.get_win_option = vim.api.nvim_win_get_option

M.set_buf_option = vim.api.nvim_buf_set_option
M.get_buf_option = vim.api.nvim_buf_get_option

M.set_map_key = vim.api.nvim_set_keymap
M.get_map_key = vim.api.nvim_get_keymap
M.del_map_key = vim.api.nvim_del_keymap

M.set_buf_map_key = vim.api.nvim_buf_set_keymap
M.get_buf_map_key = vim.api.nvim_buf_get_keymap
M.del_buf_map_key = vim.api.nvim_buf_del_keymap

M.set_var = vim.api.nvim_set_var
M.get_var = vim.api.nvim_get_var
M.del_var = vim.api.nvim_del_var

M.set_b_var = vim.api.nvim_buf_set_var
M.get_b_var = vim.api.nvim_buf_get_var
M.del_b_var = vim.api.nvim_buf_del_var

M.set_w_var = vim.api.nvim_win_set_var
M.get_w_var = vim.api.nvim_win_get_var
M.del_w_var = vim.api.nvim_win_del_var

M.set_t_var = vim.api.nvim_tabpage_set_var
M.get_t_var = vim.api.nvim_tabpage_get_var
M.del_t_var = vim.api.nvim_tabpage_del_var

M.set_v_var = vim.api.nvim_set_vvar
M.get_v_var = vim.api.nvim_get_vvar

return M
