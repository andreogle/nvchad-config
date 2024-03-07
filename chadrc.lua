---@type ChadrcConfig 
local M = {}
M.ui = { theme = 'catppuccin' }

M.mappings = require("custom.mappings")
M.plugins = "custom.plugins"

vim.wo.relativenumber = true

return M
