-- Keybindings
-- Ported from your original .vimrc

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key is set in init.lua as <Space>

-- Quick escape from insert mode
keymap("i", "kl", "<ESC>", opts)
keymap("i", "<C-c>", "<ESC>", opts)  -- Ctrl-c also works as escape
keymap("n", "<C-c>", "<ESC>", opts)  -- In normal mode too

-- Navigation (your custom layout: j=left, k=down, l=up, ;=right)
keymap("n", "j", "h", opts)
keymap("n", "k", "j", opts)
keymap("n", "l", "k", opts)
keymap("n", ";", "l", opts)

keymap("v", "j", "h", opts)
keymap("v", "k", "j", opts)
keymap("v", "l", "k", opts)
keymap("v", ";", "l", opts)

-- Window navigation (adapted to your layout)
keymap("n", "<C-j>", "<C-W><C-H>", opts)
keymap("n", "<C-k>", "<C-W><C-J>", opts)
keymap("n", "<C-l>", "<C-W><C-K>", opts)
keymap("n", "<C-\\>", "<C-W><C-L>", opts)

-- Tab navigation
keymap("n", "<C-h>", "gT", opts)
keymap("n", "<C-;>", "gt", opts)

-- Save and quit
keymap("i", "<C-s>", "<esc>:w<cr>", opts)
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("i", "<C-q>", "<esc>:quit<cr>", opts)  -- Quit in insert mode
keymap("n", "<C-q>", ":quit<cr>", opts)       -- Quit window/buffer/nvim

-- Spell check fix (first suggestion)
keymap("n", "<leader>f", "1z=", opts)

-- Clipboard operations
keymap("v", "<Leader>y", '"+y', opts)
keymap("v", "<Leader>d", '"+d', opts)
keymap("n", "<Leader>p", '"+p', opts)
keymap("n", "<Leader>P", '"+P', opts)
keymap("v", "<Leader>p", '"+p', opts)
keymap("v", "<Leader>P", '"+P', opts)

-- Automatically jump to end of pasted text
keymap("v", "y", "y`]", opts)
keymap("v", "p", "p`]", opts)
keymap("n", "p", "p`]", opts)

-- File explorer (will use nvim-tree)
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Fuzzy finder (now using Snacks picker instead of Telescope)
-- These are now defined in snacks-extras.lua but keeping comments here for reference
-- <leader>o  = Find files
-- <leader>O  = Find files (including hidden)
-- <leader>m  = Find buffers
-- <leader>fg = Live grep
-- <leader>fh = Help tags

-- Terminal mode escape and navigation
keymap("t", "<Esc>", "<C-\\><C-n>", opts)  -- Exit terminal insert mode

-- Close terminal window with C-q (same as regular windows)
keymap("t", "<C-q>", "<C-\\><C-n>:quit<cr>", opts)

-- Easy way to jump from Claude terminal back to code
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)  -- Jump left from terminal

-- Tab completion in insert mode (for nvim-cmp)
-- These will be configured in the cmp plugin file
