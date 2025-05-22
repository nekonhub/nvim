-- Settings for kvrohit/SUBSTRATA.NVIM

return {
    "kvrohit/substrata.nvim",
    -- priority = 1000,    -- loads Substrata before other colorschemes
    lazy = false,
    config = function ()
        -- load the colorscheme here
        -- vim.cmd([[colorscheme substrata]])
        -- set the colorscheme options here
        vim.g.substrata_italic_comments = true
        vim.g.substrata_italic_keywords = false
        vim.g.substrata_italic_booleans = false
        vim.g.substrata_italic_functions = false
        vim.g.substrata_italic_variables = false
        vim.g.substrata_transparent = false
        vim.g.substrata_variant = "default"
    end,
}

-- [TODO] requires a lualine theme! Use "auto" in the meantime
-- [TODO] fix the WinBar problem, same as Nord
