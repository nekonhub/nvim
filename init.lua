-- INIT.LUA is the starting point for my Neovim config files
-- 2025-05-12 config, using Neovim r0.11.1 in Fedora 42
-- An exercise in simplification
-- Function > Form
-- Native > Plugin
-- I don't like the UserName folder, simple,neat alternative
-- Uses ".lazy" (DOT LAZY) to remove the eponymous folder

-- When switching to Lua based config, the best advice I can offer is "RTFM"
-- https://neovim.io/doc/user/index.html
-- https://neovim.io/doc/user/lua.html
-- ":h" is your friend

-- Keymaps and Options loaded first to ensure leader-key is set early
require("settings.keymaps")
require("settings.options")

-- Require the Lazy.lua file to load plugins
require(".lazy")

-- Set colorscheme
vim.cmd "colorscheme kanso-mist"
