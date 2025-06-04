-- RENDER-MARKDOWN inline

return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'echasnovski/mini.nvim',
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
    },
    config = function()
        local markdown = require('render-markdown')
        markdown.setup({
            file_types = { 'markdown', 'gitcommit' },
            html = { enabled = false },
            completions = { blink = { enabled = true } },
            render_modes = { 'n', 'c', 't' }
        })
    end
}
