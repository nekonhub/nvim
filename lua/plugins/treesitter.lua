-- TREESITTER.LUA
-- Config and setup for Treesitter
-- Nice!

return {
    {
        "nvim-treesitter/nvim-treesitter",
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

                    -- Disable highlighting for large files, typically 1000 lines +
                    disable = function(lang, buf)
                        local max_filesize = 10 * 1024 -- 10 KB +
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,

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
                    -- [TODO]
                    -- Probably would fit best with my view on Folding

                }
            }
        end,
    }
}
