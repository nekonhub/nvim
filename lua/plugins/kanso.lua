-- KANSO.LUA - an nvim colorscheme based on Kanagawa
-- Dark and subtle, has Kanagawa advantages without color bling.
-- I think most people see signals in code colours,
-- but I just see distraction, it dazzles me.
-- Nord,or Kanso, its always the subtle that attracts me
-- No-Clown-Fiesta is another that I have used in the past

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
            functionStyle = { italic = false, bold = true },
            keywordStyle = { italic = true, bold = true },
            statementStyle = {},
            typeStyle = {},
            transparent = false,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { zen = {}, pearl = {}, ink = {}, mist = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {
                    -- I prefer feinter Comments to merge into background
                    Comment = { fg = colors.palette.gray5 },
                }
            end,
            background = {     -- map the value of 'background' option to a theme
                dark = "mist", -- try "zen", "mist" or "pearl" !
                light = "ink"  -- try "zen", "mist" or "pearl" !
            },
            foreground = {
                dark = "default",
                light = "saturated" -- "default" or "saturated"
            },
        })
    end

}
