-- TREESITTER.LUA
-- Config and setup for Treesitter
-- Nice!

return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "OXY2DEV/markview.nvim" },
        lazy = false,
        build = ":TSUpdate",
        branch = "main",
        config = function()
            require 'nvim-treesitter'.setup {
                -- A list of parser names,
                -- or "all" (the listed parsers MUST always be installed)
                require 'nvim-treesitter'.install {
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "latex",
                    "vim",
                    "vimdoc",
                    "html",
                    "css",
                    "scss",
                    "php",
                    "toml",
                    "yaml",
                    "twig",
                    "gitignore",
                    "bash",
                    "c",
                    "cpp",
                    "rust",
                },

                -- Install parsers synchronously, typically bootloading...
                -- (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false
                -- if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                -- List of parsers to ignore installing (or "all")
                -- ignore_install = { "javascript" },

                -- Enable Highlighting
                highlight = {
                    enable = true,

                    -- list of language that will be disabled
                    -- disable = { "c", "rust" },

                    -- Disable highlighting for large files, typically 10,000 lines +
                    -- I am not getting a problem so removed TJ's script

                    -- Regex highlights
                    additional_vim_regex_highlighting = false,
                },

                -- Indent using Treesitter parsers
                indent = {
                    enable = true
                },

                -- Incremental Selection withing the tree
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Enter>",
                        node_incremental = "<Enter>",
                        scope_incremental = false,
                        node_decremental = "<Backspace>",
                    }

                    -- Folding - currently not enabled
                    -- [TODO] Find a Folding method that works for me
                    -- SYMFONY
                    -- [TODO] Try INTELEPHENSE

                }
            }
        end,
    }
}
