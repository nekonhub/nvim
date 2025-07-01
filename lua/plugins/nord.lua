-- NORD colorscheme
-- The least offensive colorscheme I can find

-- [TODO] Fix WINBAR colors in Nord
-- [TODO] Compare the two Nord options
-- Switch to the other Nord, this one has too much italic/bold


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
