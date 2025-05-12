-- REMAP SOME KEYS
-- Make Neovim work for me...

-- LEADER KEY = <SPACEBAR>
vim.g.mapleader = " "

-- ESCAPE KEY
-- On the home row
vim.keymap.set({"i", "v"}, "jj", "<Esc>")

-- CLEVER/IMPROVED MOVEMENTS
-- In Visual Mode, be able to move a line or group of lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- The J trick APPENDS the line(s) below, but cursor moves. This keeps the cursor in place
vim.keymap.set("n", "J", "mzJ`z")
-- Half page jumps with  C-d, C-u but cursor stays central (zz)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- For movement in WRAPPED LINES, just use "gj" and "gk"

-- INSERT LINES - without entering Insert Mode
vim.keymap.set('n', 'OO', "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
vim.keymap.set('n', 'oo', "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")

-- TJ's SPLITS MOVEMENTS
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")

-- SEARCH 
-- Turn search highlights off
vim.keymap.set("n", "<leader>no", "<cmd>noh<cr>")
-- When replacing highlighted word, DON'T overwrite the paste buffer!
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Similar for deleting (to the void register)
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
-- When searching, keep search terms in the middle of page
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")

-- THE "+" REGISTER
-- Yank or Copy to the "Plus" register - (System Clipboard)
-- Separates yanking to system clipboard from "y" and "yy"(by Asbjorn Halaand via Primeagen)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")



-- No EX MODE in Neovim!
-- It would quit without writing: in Neovim, fails if file is changed
vim.keymap.set("n", "Q", "nop")
-- "The worst place in the Vim Universe" is no longer in the destination list! 
-- I have imported my keymaps before now, it was not pretty.
