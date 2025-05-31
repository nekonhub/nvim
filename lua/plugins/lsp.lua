-- LSP, all in one place
-- Too much?
-- Trying to leverage built-in where possible, minimal plugins

-- NVIM-LSPCONFIG connects editor and LSPs for messaging back and forth
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Solve Lua's Vim warnings really easily
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },

        -- Install and enable Language Servers really easily using...
        -- MASON and MASON_LSPCONFIG
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    },
                },
            },
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {
                ensure_installed = { "lua_ls", },
            },
            dependencies = {
                { "mason-org/mason.nvim", opts = {} },
                "neovim/nvim-lspconfig",
            },
        }

    },  -- END of dependencies

    -- Configure LSPCONFIG
    config = function()
        -- MASON-LSPCONFIG handles auto attatch and config of individual LSPs
        -- Uses default LSPCONFIG settings

    end,
}

