-- NORD colorscheme
-- The least offensive colorscheme I can find
return {
    "nordtheme/vim",
    priority = 1000,         -- load Nord colorscheme first
    lazy = false,
    config = function ()
        vim.g.nord_cursor_line_number_background = 1
        vim.g.nord_uniform_status_lines = 0
        vim.g.nord_uniform_diff_background = 1
        vim.g.nord_bold = 0
        vim.g.nord_italic = 1
        vim.g.nord_italic_comments = 1
        vim.g.nord_underline = 0
        -- set the colorscheme to Nord.
        vim.cmd([[colorscheme nord]])
    end
    }
