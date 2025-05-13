-- NEOVIM HAS SANE DEFAULT OPTIONS - for reference...

-- encoding = UTF-8
-- compatible = false
-- syntax = true
-- &
-- filetype settings (detect, plugin, indent) on, but uses Treesitter/LSP
-- &
-- autoread  = true (reload files modified outside of buffer)
-- hidden = true (allows unsaved work in buffers)	 
-- wildmenu = true (list of options on <TAB> completions)
-- lazyredraw = false (not required in Neovim??)


-- COLORSCHEME
vim.opt.termguicolors = true
-- colorscheme now set in each indivudual plugin
-- vim.cmd [[colorscheme nord]]

-- TABS AND SPACES
vim.opt.tabstop = 4 			-- 4 spaces to a TAB
vim.opt.softtabstop = 4			-- also applies when editing
vim.opt.expandtab = true		-- a TAB is now ACTUALLY four spaces!
vim.opt.shiftwidth = 4			-- "normal" tab shift is 4 spaces

-- SMARTTABS
vim.opt.smarttab = true         -- matches indents for C language

-- plus INDENTS
vim.opt.autoindent = true       -- default
vim.opt.smartindent= true       -- matches indents for C language

-- BLANK CHARACTERS
-- default "tab:> ,trail:-,nbsp:+" ?
-- lukas-reineke/indent-blankline.nvim just "works" for me

-- LINE WRAPPING
vim.opt.wrap = true     		-- default, see keymaps to move within wrapped line
vim.opt.linebreak = true    	-- don't break words
vim.opt.colorcolumn = "80"      -- try to stay within 80 chars

-- CURSORLINE and CURSORCOLUMN - be able to spot the cursor quickly
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- Get a Fat Cursor, because its what I always knew
vim.opt.guicursor = ""

-- WINBAR - top right file name and modify status, useful for splits
vim.cmd [[set winbar=%=%m\ %f]]
-- [TODO] Wrong background colour!
-- Couple of options...
-- 1. install shaunsingh/nord.nvim - distinctly bluer, but nice
-- 2. use Treesitter to work out how to fix colorscheme

-- LINE NUMBERS
vim.opt.number = true
vim.opt.relativenumber = true

-- SIGNCOLUMN
vim.opt.signcolumn = "yes"

-- SCROLLING
vim.opt.scrolloff = 6

-- PARENTHESIS
vim.opt.showmatch = true

-- SEARCH SETTINGS
vim.opt.hlsearch = true         -- highlight search string
vim.opt.incsearch = true        -- highlight as you are typing
-- SEARCH HIGHLIGHTS OFF with <leader>n-o
vim.opt.ignorecase = true       -- ignore case of typing and search target
vim.opt.smartcase = true        -- if search contains upper case override ignorecase

-- FOLDING
-- [TODO] I don't use folding, check native options

-- BACKUP/SWAPFILE/UNDO HISTORY
vim.opt.swapfile = false    -- swapfiles make you very angry very quickly
vim.opt.backup = false      -- default writebackup keeps a backup during write
vim.opt.undofile = true     -- autosave undo history to undofile, restore with file

-- [TODO] - COMMENTS - check native options, avoid plugin


