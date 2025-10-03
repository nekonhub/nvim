-- GIT.LUA to provide better Git functionality
-- Anything must be better than Lazygit!
-- Keeping things simple

return {
    -- VIM-FUGITIVE
    {
        "tpope/vim-fugitive",
        Lazy = false,
    },

    -- GITSIGNS
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        config = function()
            require("gitsigns").setup()
            -- KEYMAPS
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
        end
    },
}
