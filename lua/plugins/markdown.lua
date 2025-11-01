-- MARKVIEW.LUA
-- Markdown rendering in markdown files
-- Great defaults, prefer to adapt to defaults than pander to pretty,
-- for me its just a place to keep notes, plans and ideas.
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

    -- Preview MARKDOWN in browser
    -- but also HTML, SVG, ASCII
    -- For me its just a quick way to print "pretty" markdown.
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
