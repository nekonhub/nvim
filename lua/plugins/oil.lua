-- OIL for exploring and editing files

return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended
    -- It is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function()
        require("oil").setup({
            columns = {
                "icon",
                -- "permissions",
                -- "size"
            },
            keymaps = {
                ["<CR>"] = "actions.select",
                ["<C-v>"] = { "actions.select", opts = { vertical = true } },
                ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
                ["<C-p>"] = "actions.preview",
                ["<C-c>"] = { "actions.close", mode = "n" },
                ["<C-r>"] = "actions.refresh",
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = { "actions.open_cwd", mode = "n" },
                ["g."] = { "actions.toggle_hidden", mode = "n" }
                -- [TODO} keymaps here
            },
            view_options = { show_hidden = true },
            -- [TODO] Add floating pane
            -- [TODO] Add colours and additional info to filetypes
        })
    end,
    -- Commands to start Oil
    vim.keymap.set("n", "<leader>f", "<cmd>Oil --float<CR>", { desc = "Open Oil parent float" }),
    vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Open Oil parent in vsplit" }),
}
