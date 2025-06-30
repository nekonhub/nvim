-- colorizer
-- Only used to configure Substrata theme for Btop

return {
    "norcalli/nvim-colorizer.lua",

    config = function()
        require 'colorizer'.setup {
            -- '*',     -- to "colorize" all files
            -- otherwise, just use COMMAND ":ColorizerAttachToBuffer
        }
    end
}
