-- KANSO.LUA - an nvim colorschaeme based on Kanagawa
-- Dark and subtle, has Kanagawa advantages without color bling.
-- I think most people see signals in code colours,
-- but I just see distraction, it dazzles me.

return {
    "webhooked/kanso.nvim",
    lazy = false,
    config = function()
        require('kanso').setup({
            bold = true,      -- enable bold fonts
            italics = true,   -- enable italics
            compile = false,  -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = { italic = true, bold = true },
            keywordStyle = { italic = true, },
            statementStyle = {},
            typeStyle = {},
            transparent = false,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { zen = {}, pearl = {}, ink = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            background = {          -- map the value of 'background' option to a theme
                dark = "mist",      -- try "zen", "mist" or "pearl" !
                light = "ink"       -- try "zen", "mist" or "pearl" !
            },
            foreground = "default", -- "default" or "saturated" (can also be a table like background)
        })
    end

}
