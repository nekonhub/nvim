-- MARKVIEW.LUA
-- Markdown rendering in markdown files

return {
    {
        "OXY2DEV/markview.nvim",
        lazy = false,

        -- For blink.cmp's completion
        -- source
        dependencies = {
            "saghen/blink.cmp"
        },
    },

    -- Preview MARKDOWN
    -- but also HTML, SVG, ASCII
    {
        'brianhuster/live-preview.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim' },
        config = function()
            require('livepreview.config').set({
                port = 5500,
                browser = 'default',
                dynamic_root = false,
                sync_scroll = true,
                picker = "telescope",
            })
        end,
    }
    -- Keymaps for LIVE-PREVIEW
    -- vim.keymap.set("n", )
}
