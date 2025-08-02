-- OIL for exploring and editing files

return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- another option
    -- Lazy loading is not recommended
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
                ["<C-x>"] = { "actions.select", opts = { horizontal = true } },
                ["<C-p>"] = "actions.preview",
                ["<C-c>"] = { "actions.close", mode = "n" },
                ["<C-r>"] = "actions.refresh",
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = { "actions.open_cwd", mode = "n" },
                ["g."] = { "actions.toggle_hidden", mode = "n" }
            },
            view_options = { show_hidden = true },
        })
    end,
    -- Commands to start Oil
    vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Open Oil parent in vsplit" }),
    vim.keymap.set("n", "<leader>fo", "<cmd>Oil --float<CR>", { desc = "Open parent in Oil float" }),
    -- TODO make "<leader>vo" Open a narrow vsplit (40 characters width)
    vim.keymap.set("n", "<leader>vo", "<cmd>vsplit<CR><cmd>Oil<CR>", { desc = " Open Vsplit parent in Oil" }),
}
