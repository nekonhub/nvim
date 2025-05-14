-- TREESITTER.LUA
-- Config and setup for Treesitter
-- Nice!

return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup {
                -- A list of parser names, 
                -- or "all" (the listed parsers MUST always be installed)
                ensure_installed = {
                    "c",
                    "cpp",
                    "lua",
                    "vim",
                    "vimdoc",
                    "markdown",
                    "markdown_inline",
                    "php",
                    "toml",
                    "yaml",
                    "twig",
                    "gitignore",
                    "bash",
                },
                -- Install parsers synchronously (only applied to `ensure_installed`)
                -- sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false
                -- if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                -- List of parsers to ignore installing (or "all")
                -- ignore_install = { "javascript" },

                highlight = {
                    enable = true,

                    -- list of language that will be disabled
                    -- disable = { "c", "rust" },

                    -- Or use a function for more flexibility,
                    -- e.g. to disable slow treesitter highlight for large files
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,

                additional_vim_regex_highlighting = false,
                },
            }
        end,
    }
}
