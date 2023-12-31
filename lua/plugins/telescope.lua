-- TELESCOPE is a Neovim UI on steroids.
-- Who knew incremental search could look this good?
-- It may become the UI of choice for all things neovim.

-- Load Telescope
return {
    "nvim-telescope/telescope.nvim", branch = '0.1.x',
    -- or                          , tag = '0.1.5',
    dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
        config = function ()
            local telescope = require("telescope")
            local actions = require ("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "truncate" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,  -- move to prev result
                        ["<C-j>"] = actions.move_selection_next,  -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension("fzf")
        -- TODO telescope-file-browser.nvim
        -- https://github.com/nvim-telescope/telescope-file-browser.nvim

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find open buffers" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help grepping topics" })

    end,
}

-- TODO Get qflist working (Qucik Fix)


