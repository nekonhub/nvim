-- colorizer
-- Only used to configure Substrata theme for Btop

return {
    "norcalli/nvim-colorizer.lua",
    lazy = true,
    config = function()
        require 'colorizer'.setup {
            -- '*',     -- to "colorize" all files
            -- otherwise, just use COMMAND ":ColorizerAttachToBuffer
        }
    end
}
