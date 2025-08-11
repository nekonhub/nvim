-- NORD colorscheme
-- The least offensive colorscheme I can find

-- Two good Nord colorschemes.

return {
    "shaunsingh/nord.nvim",
    lazy = true,
    config = function()
        vim.g.nord_contrast = true
        vim.g.nord_borders = false
        vim.g.nord_disable_background = false
        vim.g.nord_italic = true
        vim.g.nord_uniform_diff_background = true
        vim.g.nord_bold = true

        -- Load the colorscheme
        -- require('nord').set()
        -- vim.cmd[[colorscheme nord]]
    end
}


-- NORD colorscheme

--     require "nordtheme/vim",
--     priority = 1000, -- load Nord colorscheme first
--     lazy = false,
--     config = function()
--         vim.g.nord_cursor_line_number_background = 1
--         vim.g.nord_uniform_status_lines = 0
--         vim.g.nord_uniform_diff_background = 1
--         vim.g.nord_bold = 1
--         vim.g.nord_italic = 1
--         vim.g.nord_italic_comments = 1
--         vim.g.nord_underline = 0
--         -- set the colorscheme to Nord.
--         vim.cmd([[colorscheme nord]])
--     end
-- }
