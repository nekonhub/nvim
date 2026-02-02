-- NEOVIM OPTIONS,
-- but thankfully, Neovim has sane default options.

-- for reference...
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
-- equalalways = true => (ea) resize on open or close windows
-- Maybe future implementation to resize other windows when new window has size


-- COLORSCHEME
vim.opt.termguicolors = true
-- Set colorscheme in INIT.LUA

-- TABS AND SPACES
vim.opt.tabstop = 4      -- 4 spaces to a TAB
vim.opt.softtabstop = 4  -- also applies when editing
vim.opt.expandtab = true -- a TAB is now ACTUALLY four spaces!
vim.opt.shiftwidth = 4   -- "normal" tab shift is 4 spaces

-- SMARTTABS
vim.opt.smarttab = true -- matches indents for C language

-- plus INDENTS
vim.opt.autoindent = true  -- default
vim.opt.smartindent = true -- matches indents for C language

-- BLANK CHARACTERS
-- default "tab:> ,trail:-,nbsp:+" ?
-- lukas-reineke/indent-blankline.nvim "just works" for me

-- LINE WRAPPING
vim.opt.wrap = false       -- WRAP set to false because true breaks MARKVIEW
vim.opt.linebreak = true   -- don't break words
vim.opt.colorcolumn = "80" -- try to stay within 80 chars

-- CURSORLINE and CURSORCOLUMN - be able to spot the cursor quickly
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- Get a BIG FAT CURSOR, because its what I always knew
vim.opt.guicursor = ""

-- WINBAR - top right file name and modify status, useful for splits
vim.cmd [[set winbar=%=%m\ %f]]

-- LINE NUMBERS
vim.opt.number = true
vim.opt.relativenumber = true

-- SIGNCOLUMN
vim.opt.signcolumn = "yes"

-- SCROLLING
vim.opt.scrolloff = 8

-- PARENTHESIS
vim.opt.showmatch = true

-- SEARCH SETTINGS
vim.opt.hlsearch = true   -- highlight search string
vim.opt.incsearch = true  -- highlight as you are typing
-- SEARCH HIGHLIGHTS OFF with <leader>h-o (see KEYMAPS.LUA)
vim.opt.ignorecase = true -- ignore case of typing and search target
vim.opt.smartcase = true  -- if search contains upper case override ignorecase

-- YANK (Y and YY) HIGHLIGHT
-- Momentary highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- PASTE SYSTEM CLIPBOARD with "p" or "P"
vim.opt.clipboard = "unnamedplus"

-- FOLDING
-- [TODO] I don't use folding, check native options
-- There must be a reason why other people use folding \o/
-- vim.opt.foldmethod = "indent"

-- BACKUP/SWAPFILE/UNDO HISTORY
vim.opt.swapfile = false -- swapfiles make you very angry very quickly
vim.opt.backup = false   -- default writebackup keeps a backup during write
vim.opt.undofile = true  -- autosave undo history to undofile, restore with file

-- [TODO] - COMMENTS - check native options, avoid plugin
